import streamlit as st
from streamlit_chat import message
from dotenv import load_dotenv
import os
from probability_manager import set_P_A_given_B, get_P_A_given_B
from user_response_analyzer import analyze_response
import pyodbc



def update_user_response(conn, AttributeCode, user_input):
   cursor = conn.cursor()
   question_text = st.session_state.messages[-2]["content"]  # Get the corresponding question text
   print("this is from update",question_text)

   # Analyze the user's response
   analysis_result = analyze_response(question_text, user_input)
   print("this is from update",analysis_result)
   print("this is from update us",user_input)
   risk_level=suicide_result(conn)
   st.session_state.risk_level = risk_level
   #suicide_result(conn)
   # Now insert the analyzed response into ResponseTable
   sql_insert = "INSERT INTO ResponseTable (AttributeCode, Response) VALUES (?, ?);"
   try:
       cursor.execute(sql_insert, (AttributeCode, analysis_result))
       conn.commit()
       print("Data inserted into ResponseTable.")
   except Exception as e:
       print("Error inserting data into ResponseTable:", e)

   # Execute the commands directly
   sql_commands = """
       EXEC FilterYouthJoin;
       EXEC GenerateLikelihoodRatios;
       -- Filter out LikelihoodRatios table questions already asked
       DELETE FROM LikelihoodRatios WHERE EXISTS (
           SELECT 1 FROM ResponseTable rt WHERE rt.AttributeCode = LikelihoodRatios.AttributeCode
       );
   """
   try:
       cursor.execute(sql_commands)
       conn.commit()
       print("Commands executed successfully.")
   except Exception as e:
       print("Error executing commands:", e)




def fetch_top_question(conn):
   cursor = conn.cursor()
   if "AttributeCode" not in st.session_state:
       # ID of first question is always 'CSSRS5AFU'
    print("AttributeCode not found in session_state. Fetching first question.")
    cursor.execute("SELECT AttributeCode, AttributeDetails FROM LikelihoodRatios ORDER BY LikelihoodRatio DESC;")
   else:
       # Insert the last response into the database and fetch the next question ID based on logic in your database
    print("AttributeCode found in session_state. Fetching next question based on user response.")
    #update_user_response(conn, st.session_state.AttributeCode, st.session_state.messages[-1]["content"])
    print(st.session_state.messages[-1]["content"])
    cursor.execute("SELECT AttributeCode, AttributeDetails FROM LikelihoodRatios ORDER BY LikelihoodRatio DESC;")
   #cursor = conn.cursor()
   #cursor.execute("SELECT AttributeCode, AttributeDetails FROM LikelihoodRatios ORDER BY LikelihoodRatio DESC;")
   result = cursor.fetchone()
   cursor.close()
   print("Inside question fetched", result)
   if result:
        question_id, question_text = result
       
        # Check if the new question ID is the same as the last one fetched
        if "last_question_id" in st.session_state and st.session_state.last_question_id == question_id:
            print("Same question fetched as before, skipping this question.")
            return None, "No more Questions"
        else:
            st.session_state.AttributeCode = question_id  # Store the AttributeCode in the session state
            st.session_state.last_question_id = question_id  # Update last_question_id in session state
            return question_id, question_text # Return question_id and question_text
   return None, "No more Questions"



