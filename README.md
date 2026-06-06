# Australian Job Market Pipeline

## About
A data pipeline that extracts, cleans and analyses 
123,000+ job listings from LinkedIn. Built to identify 
trends in hiring by company, location, work type and 
experience level.

## Tools
- Python (pandas) — data cleaning and transformation
- SQLite — data storage
- DBeaver — SQL analysis
- GitHub — version control

## How it works
1. Loads raw job listings from a CSV source
2. Automatically drops columns that are more than 50% empty
3. Removes rows with missing company names
4. Loads cleaned data into a SQLite database
5. Analyses the data using SQL queries

## Key findings
- What are the top 5 locations with the most job postings?
- United States 7,847
- New York 2,726
- Chicago, IL 1,815
- Houston, TX 1,740
- Dallas, TX 1,370

- What percentage of jobs are each work type?
- Full time - 79.88%
- Contract - 9.79%
- Part-time - 7.77%
- Temporary - 0.96%
- Internship - 0.78%
- Volunteer - 0.45%
- Other - 0.37% 
  
- The top hiring company is X with X job postings
- The top hiring company is Liberty Health and Rehab with 1108 job postings
  
- Entry level roles make up x% of all listings
- Entry lvel role is 30.03%


## How to run
1. Download the dataset from Kaggle (link here: https://www.kaggle.com/datasets/arshkon/linkedin-job-postings?resource=download)
2. Rename it to postings.csv and place in the project folder
3. Run pipeline.py to clean and load the data
4. Open analysis.sql in DBeaver to run the queries
