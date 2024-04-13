import pyodbc
import streamlit as st
from streamlit_chat import message
from dotenv import load_dotenv
import os

from langchain.chat_models import ChatOpenAI
from langchain.schema import (
    SystemMessage,
    HumanMessage,
    AIMessage
)

def init():
    # Load the OpenAI API key from the environment variable
    load_dotenv()
    
    # Test that the API key exists
    if os.getenv("OPENAI_API_KEY") is None or os.getenv("OPENAI_API_KEY") == "":
        print("OPENAI_API_KEY is not set")
        exit(1)
    else:
        print("OPENAI_API_KEY is set")

    # Setup Streamlit page
    st.set_page_config(
        page_title="Suicidal Ideation Detection Chat",
        page_icon="💬"
    )

def update_user_response(conn, AttributeCode, user_input):
    cursor = conn.cursor()
    # Adjusted for SQL Server syntax (using question marks for parameter placeholders)
    cursor.execute("INSERT INTO ResponseTable (AttributeCode, Response) VALUES (?, ?);", (AttributeCode, user_input))
    conn.commit()

def fetch_top_question(conn):
    if "AttributeCode" not in st.session_state:
        # ID of first question is always 'CSSRS5FU'
     cursor = conn.cursor()
     cursor.execute("SELECT AttributeCode, AttributeDetails FROM LikelihoodRatios ORDER BY LikelihoodRatio DESC;")
    else:
        # Insert the last response into the database and fetch the next question ID based on logic in your database
     cursor = conn.cursor()
     update_user_response(conn, st.session_state.AttributeCode, st.session_state.messages[-1].content)
     cursor.execute("SELECT AttributeCode, AttributeDetails FROM LikelihoodRatios ORDER BY LikelihoodRatio DESC;")
    #cursor = conn.cursor()
    #cursor.execute("SELECT AttributeCode, AttributeDetails FROM LikelihoodRatios ORDER BY LikelihoodRatio DESC;")
    result = cursor.fetchone()
    if result:
        return result  # Return question_id and question_text
    return None, "No more questions."

def main():
    init()
    # Adjust the connection parameters for SQL Server
    conn_str = (
    f"DRIVER={{ODBC Driver 17 for SQL Server}};"
    f"SERVER={os.getenv('DB_SERVER')};"
    f"DATABASE={os.getenv('DB_NAME')};"
    "Trusted_Connection=yes;"
)

               
    
    # Initialize the chat model
    chat = ChatOpenAI(temperature=0)

    # Initialize message history
    if "messages" not in st.session_state:
        st.session_state.messages = [
            SystemMessage(content="Welcome to the Suicidal Ideation Detection Chat. Your safety is our priority.")
        ]

    st.title("Suicidal Ideation Detection Chat 💬")

    # Display message history
    messages = st.session_state.get('messages', [])
    for i, msg in enumerate(messages):
        if isinstance(msg, HumanMessage):
            message(msg.content, is_user=True, key=str(i) + '_user')
        else:
            message(msg.content, is_user=False, key=str(i) + '_ai')

    # User input box
    user_input = st.text_input("You can talk to me here. How are you feeling today?")
    if st.button("Send") and user_input:
        # Append user response
        st.session_state.messages.append(HumanMessage(content=user_input))

        # Open database connection and fetch the next question based on the response
        with pyodbc.connect(conn_str) as conn:
            
            # Fetch the next top question based on the updated likelihood ratios
            st.session_state.AttributeCode, next_question_text = fetch_top_question(conn)
            
            # Append the next question to the chat
            st.session_state.messages.append(SystemMessage(content=next_question_text))

if __name__ == '__main__':
    main()
