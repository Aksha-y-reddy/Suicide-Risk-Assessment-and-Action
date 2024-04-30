import streamlit as st
from streamlit_chat import message
from dotenv import load_dotenv
import os
from probability_manager import set_P_A_given_B, get_P_A_given_B
from user_response_analyzer import analyze_response
from langchain.chat_models import ChatOpenAI
from langchain.schema import (
   SystemMessage,
   HumanMessage,
   AIMessage
)
import pyodbc
from user_response_analyzer import analyze_response



def write_last_probability(probability):
    """Write the last known probability to a file."""
    with open("last_probability.txt", "w") as file:
        file.write(str(probability))


def read_last_probability():
    """Read the last known probability from a file."""
    try:
        with open("last_probability.txt", "r") as file:
            return float(file.read())
    except FileNotFoundError:
        return 0.05  # Return default initial probability if no file exists


def determine_level(probability):
    """Determines the risk level based on the probability."""
    if probability > 0.65:
        risk_level='high'
        return 'high'
    elif probability > 0.35:
        risk_level='medium'
        return 'medium'
    else:
        risk_level='low'
        return 'low'

#risk_level = None

def suicide_result(conn):
    global risk_level
    cursor = conn.cursor()
    risk_level='empty'
    try:
        # Count rows in ResponseTable
        cursor.execute("SELECT COUNT(*) FROM ResponseTable")
        row_count = cursor.fetchone()[0]
        print("Row count in ResponseTable:", row_count)


        # Set the initial probability and fetch logic based on row_count
        if row_count == 0:
            P_A = 0.05  # Default start probability when there are no rows yet
            cursor.execute("SELECT * FROM LikelihoodRatios ORDER BY LikelihoodRatio DESC")  # Fetch the first likelihood ratio
        elif row_count == 1:
            P_A = read_last_probability()  # Read the last known probability
            cursor.execute("SELECT * FROM LikelihoodRatios ORDER BY LikelihoodRatio DESC")  # Still fetch the first as no new rows yet
        else:
            P_A = read_last_probability()
            cursor.execute("SELECT TOP 1 * FROM LikelihoodRatios ORDER BY LikelihoodRatio DESC")  # Fetch the highest likelihood ratio



        print(f"Using P_A = {P_A} for Question {row_count}")
        


        # Fetch the highest likelihood ratio
        
        highest_lr_entry = cursor.fetchone()
        print("Likelihood Rato taken", highest_lr_entry)


        if highest_lr_entry and highest_lr_entry[3] is not None and highest_lr_entry[3] != 0:
            P_B_given_A = float(highest_lr_entry[3])
           
            # Calculate P(B) and P_A_given_B
            P_B = P_B_given_A * P_A + (1 - P_A)
            P_A_given_B = (P_B_given_A * P_A) / P_B
            P_A_given_B = min(P_A_given_B, 1.0)  # Ensure it does not exceed 1


            level = determine_level(P_A_given_B)
            print(f"The level is: {level}")
            print("Current probability (P_A_given_B):", P_A_given_B)


            # Write the latest good P_A_given_B to file
            write_last_probability(P_A_given_B)
            return level
        else:
            # Likelihood ratio is null, use the last known good probability
            P_A_given_B = read_last_probability()
            level = determine_level(P_A_given_B)
            print("Likelihood ratio is null. Final probability:", P_A_given_B)
            print(f"The level is: {level}")
            return level
    finally:
        cursor.close()
        #conn.close()




# Load and check the OpenAI API key environment variable
def load_environment_variables():
   load_dotenv()
   if os.getenv("OPENAI_API_KEY") is None or os.getenv("OPENAI_API_KEY") == "":
       exit(1)
   else:
       print("OPENAI_API_KEY is correctly set.")




# Function to simulate typing effect for the bot's messages
def bot_response_generator(response):
   for word in response.split():
       yield word + " "




def display_conclusive_message():
   risk_level=st.session_state.get('risk_level')
   st.session_state.conclusive_message_displayed = True
   final_message = f"Thank you for connecting with us. Based on our conversation, your probability of suicide is identified as **{risk_level}**. We strongly encourage you to seek professional help."
   return final_message


def main():
   load_environment_variables()
   st.title("Suicidal Ideation Detection Chat 💬")
 
   if "messages" not in st.session_state:
       st.session_state.messages = []
   if "conclusive_message_displayed" not in st.session_state:
       st.session_state.conclusive_message_displayed = False
   if "awaiting_response" not in st.session_state:
       st.session_state.awaiting_response = False
   if "response_processed" not in st.session_state:         
       st.session_state.response_processed = False
   if "sent" not in st.session_state:
       st.session_state.sent = False



   # Display chat history
   for message in st.session_state.messages:
       with st.chat_message(message["role"]):
           st.markdown(message["content"])

   if not st.session_state.conclusive_message_displayed:
       conn_str = (
           f"DRIVER={{ODBC Driver 17 for SQL Server}};"
           f"SERVER={os.getenv('DB_SERVER')};"
           f"DATABASE={os.getenv('DB_NAME')};"
           "Trusted_Connection=yes;"
           "MultipleActiveResultSets=True;"
       )
       conn = pyodbc.connect(conn_str)

       if not st.session_state.awaiting_response:
           question_id, question_text = fetch_top_question(conn)
           print("Outside if ",question_text)
           if question_id == None:
               print("Inside if ",question_text)
               conclusion = display_conclusive_message()
               st.session_state.messages.append({"role": "assistant", "content": conclusion})
               st.session_state.conclusive_message_displayed = True
               st.experimental_rerun()  # Force rerun to update the display with the new question
           else:
               st.session_state.messages.append({"role": "assistant", "content": question_text})
               st.session_state.awaiting_response = True
               st.experimental_rerun()  # Force rerun to update the display with the new question

       if st.session_state.awaiting_response:
           user_input = st.text_input("Your response:", key="user_input", on_change=None)
           send_button = st.button("Send")
           if send_button and not st.session_state.sent:
               if user_input:
                   st.session_state.messages.append({"role": "user", "content": user_input})
                   update_user_response(conn, st.session_state.AttributeCode, user_input)
                   st.session_state.awaiting_response = False  # Reset for next question
                   st.session_state.sent = False  # Mark as sent
                   st.session_state.response_processed = True
                   st.experimental_rerun()  # Prepare to display the next question

       conn.close()

if __name__ == '__main__':
   main()

