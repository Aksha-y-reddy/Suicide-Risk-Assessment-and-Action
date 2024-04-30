import pandas as pd
from openai import OpenAI
import os
from tenacity import retry, wait_random_exponential, stop_after_attempt
from dotenv import load_dotenv

load_dotenv()

# OpenAI configuration
GPT_MODEL = "gpt-3.5-turbo"
OPENAI_API_KEY = os.environ.get("OPENAI_API_KEY")
client = OpenAI(api_key=OPENAI_API_KEY)

@retry(wait=wait_random_exponential(multiplier=1, max=40), stop=stop_after_attempt(3))
def generate_question(description):
    # Replace this function with actual OpenAI API call
    try:
        prompt = f"Consider the context: '{description}' and frame an interrogative question targeting users to answer.\nQuestion. Goal is to identify the users with suicidal ideation"
        response = client.chat.completions.create(
            model=GPT_MODEL,
            messages=[
                {"role": "system", "content": prompt},
            ],
            max_tokens=1000,
            temperature=0.7,
            stop=None,
        )
    
        return response.choices[0].message.content
    except Exception as e:
        print(f"Exception: {e}")
        return "Error in analysis"

    

def load_data(file_path):
    return pd.read_csv(file_path)

def create_questions_and_write_excel(data, file_path):
    questions = []
    for _, row in data.iterrows():
        label_desc = row['Label_Description']
        question = generate_question(label_desc)
        questions.append(question)
    
    # Append the generated questions as a new column to the DataFrame
    data['Generated_Questions'] = questions
    
    # Write the updated DataFrame back to the same CSV file
    # This action overwrites the original file but only adds one new column
    # print(data.head(5))
    data.to_csv(file_path, index=False)

# Load your dataset
data_path = '/Users/akshaygovindareddy/Documents/GMU/Sem 4 /DEAN 690/Dialogue-module/YouthQuestions/YOUTH_3MO.csv'  # Change this to the path of your dataset
# data_path = '/Users/akshaygovindareddy/Documents/GMU/Sem 4 /DEAN 690/Dialogue-module/YouthQuestions/YOUTH_BASELINE_ASSESSMENT.csv'
# data_path = '/Users/akshaygovindareddy/Documents/GMU/Sem 4 /DEAN 690/Dialogue-module/YouthQuestions/YOUTH_HOSPITALIZATION_3MO.csv'
# data_path = '/Users/akshaygovindareddy/Documents/GMU/Sem 4 /DEAN 690/Dialogue-module/YouthQuestions/YOUTH_SUICIDE_3MO.csv'
data = load_data(data_path)

# Generate questions and write to Excel
create_questions_and_write_excel(data, data_path)

# Notify that the process is complete
print("Excel file has been updated with generated questions.")
