# Step1. Loading the data 
# Imports the pandas library so we can work with data 
import pandas as pd
import os

# this tells python to look inside the same folder as your script
os.chdir(os.path.dirname(os.path.abspath(__file__)))

# this prints exactly where python is currently looking for files
print(os.getcwd())

# This loads the csv file into a variable called df
df = pd.read_csv("postings.csv")

# Shape shows us how many rows and column the data has
print(df.shape)

# head shows us the first 5 rows
print(df.head())


# Step2. Data Cleaning 

# check how many rows have missing values in each column
print(df.isnull().sum())
      
# Automatically drop any columns that is more than 50% empty
df = df.dropna(thresh=len(df) * 0.5, axis=1)

# check which columns survived
print("columns remaining:", df.columns.tolist())
print("new shape:", df.shape)

# drop rows where company name or title is missing - these are essential fields
df = df.dropna(subset=['company_name', 'title'])

# check new shape
print("after dropping empty rows:", df.shape)

# save the cleaned data to a new CSV file
df.to_csv("postings_cleaned.csv", index=False)

print("cleaned file saved successfully!")

import sqlite3

# create a database and load our cleaned data into it
conn = sqlite3.connect("jobs.db")
df.to_sql("job_postings", conn, if_exists="replace", index=False)

print("data loaded into database successfully!")

import sqlite3

# create a database and load our cleaned data into it
conn = sqlite3.connect("jobs.db")
df.to_sql("job_postings", conn, if_exists="replace", index=False)

print("data loaded into database successfully!")