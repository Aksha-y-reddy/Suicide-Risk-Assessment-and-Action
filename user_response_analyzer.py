###########################
#user_response_analyzer.py
from openai import OpenAI
from tenacity import retry, wait_random_exponential, stop_after_attempt
import os
from dotenv import load_dotenv
import pandas as pd

load_dotenv()

# OpenAI configuration
GPT_MODEL = "gpt-3.5-turbo"
OPENAI_API_KEY = os.environ.get("OPENAI_API_KEY")
client = OpenAI(api_key=OPENAI_API_KEY)

# Load the CSV file
suicidal_crisis_data = pd.read_csv("/Users/akshaygovindareddy/Documents/GMU/Sem 4 /DEAN 690/Dialogue-module/Updated_SuicidalCrisisData.csv", encoding='ISO-8859-1')

# Get the first case details
first_case = suicidal_crisis_data.iloc[1]
case_number = first_case["case"]
case_description = first_case["text_description"]
risk_level = first_case["risk"]

# Prepare the context with the first case details
context = f"Case Number: {case_number}\nCase Description: {case_description}\nRisk Level: {risk_level}"

# Retry strategy for API requests
@retry(wait=wait_random_exponential(multiplier=1, max=40), stop=stop_after_attempt(3))
def analyze_response(question, user_response):
    try:
        # Prepare the prompt with the context, question, and user's response
        prompt = f"Given the the question: '{question}'\n\nUser's response: '{user_response}'\n\nAnalyze the user's response in the context of the provided Information and categorize it into Yes, No, or Not Clear based on the implication of the response."

        response = client.chat.completions.create(
            model=GPT_MODEL,
            messages=[
                {"role": "system", "content": prompt},
            ],
            max_tokens=1000,
            temperature=0.5,
            stop=None,
        )

        # The analysis result is generated by the GPT model based on the prompt
        analysis_text = response.choices[0].message.content
        if "Yes" in analysis_text:
            return 1
        elif "No" in analysis_text:
            return 0
        elif "Not Clear" in analysis_text:
            return -1
        else:
            return "Error: Unclassified response"
    except Exception as e:
        print(f"Exception: {e}")
        return "Error in analysis"


@retry(wait=wait_random_exponential(multiplier=1, max=40), stop=stop_after_attempt(3))
def check_response_in_context(question, context):
    try:
        prompt = f"Given the following context from the book 'Suicidal Crisis':\n\n{context}\n\nDoes the context have a response to the question: '{question}'?\n\nBased on the question given take the context into refernce whether the person/patient experience or had those symptons and answer to question , answer should include pateint name , age and reason"
        response = client.chat.completions.create(
            model=GPT_MODEL,
            messages=[{"role": "system", "content": prompt}],
            max_tokens=1000,
            temperature=0.5,
            stop=None,
        )
        analysis_text = response.choices[0].message.content
        print(analysis_text)
        return analysis_text
    except Exception as e:
        print(f"Exception: {e}")
        return "Error in analysis"



question = "Do you like going out with friends ?"
# user_response = "Sometimes I feel like there's no point in living."

user_response = check_response_in_context(question, context)

analysis_result = analyze_response(question, user_response)

# print(analysis_result)
# print(type(analysis_result))
print(analysis_result)






#entire document 
# from openai import OpenAI
# from tenacity import retry, wait_random_exponential, stop_after_attempt
# import os
# from dotenv import load_dotenv
# import pandas as pd

# load_dotenv()

# # OpenAI configuration
# GPT_MODEL = "gpt-3.5-turbo"
# OPENAI_API_KEY = os.environ.get("OPENAI_API_KEY")
# client = OpenAI(api_key=OPENAI_API_KEY)

# # Load the CSV file
# suicidal_crisis_data = pd.read_csv("/Users/akshaygovindareddy/Documents/GMU/Sem 4 /DEAN 690/Dialogue-module/Updated_SuicidalCrisisData.csv", encoding='ISO-8859-1')

# # Prepare the context with the entire dataset
# context = "\n\n".join([f"Case Number: {row['case']}\nCase Description: {row['text_description']}\nRisk Level: {row['risk']}" for _, row in suicidal_crisis_data.iterrows()])

# # Retry strategy for API requests
# @retry(wait=wait_random_exponential(multiplier=1, max=40), stop=stop_after_attempt(3))
# def analyze_response(question, user_response):
#     try:
#         # Prepare the prompt with the context, question, and user's response
#         prompt = f"Given the following context from the book 'Suicidal Crisis':\n\n{context}\n\nAnd the question: '{question}'\n\nUser's response: '{user_response}'\n\nAnalyze the user's response in the context of the provided cases and categorize it into Yes, No, or Not Clear based on the implication of the response."

#         response = client.chat.completions.create(
#             model=GPT_MODEL,
#             messages=[
#                 {"role": "system", "content": prompt},
#             ],
#             max_tokens=1000,
#             temperature=0.5,
#             stop=None,
#         )

#         # The analysis result is generated by the GPT model based on the prompt
#         analysis_text = response.choices[0].message.content
#         if "Yes" in analysis_text:
#             return 1
#         elif "No" in analysis_text:
#             return 0
#         elif "Not Clear" in analysis_text:
#             return -1
#         else:
#             return "Error: Unclassified response"
#     except Exception as e:
#         print(f"Exception: {e}")
#         return "Error in analysis"

