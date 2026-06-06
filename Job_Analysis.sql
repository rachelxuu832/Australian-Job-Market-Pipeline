/* Total Number of rows */
SELECT count(*)
from job_postings;

/* How many unique companies are hiring */
select count(distinct(company_name))
from job_postings;

/* How many jobs are sponsored vs not sponsored  */
select sponsored, count(*) as totaljobs
from job_postings
group by sponsored; 

/* What are the top 5 locations with the most job postings? */
-- top 5 locations with the most job postings
SELECT location,
       COUNT(*) as job_listing
FROM job_postings
GROUP BY location
ORDER BY job_listing DESC

--What percentage of jobs are each work type? (remote, on-site, hybrid)

SELECT work_type, count(*) as job_count, ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM job_postings), 2) as percentage
from job_postings
group by work_type
order by
 percentage DESC;


--Which company has the most entry level jobs specifically?
select distinct(formatted_experience_level)
from job_postings;

SELECT company_name, count(*) as total_job
from job_postings
where formatted_experience_level = 'Entry level'
group by company_name
order by total_job desc;


-- top 10 most common job titles for full time positions only
SELECT title, 
       COUNT(*) as job_listings
FROM job_postings
WHERE work_type = 'FULL_TIME'
GROUP BY title
ORDER BY job_listings DESC
LIMIT 10;

--Level 3 — Harder


-- which experience level has the most job postings per unique company

-- which experience level overall has the most job postings?
SELECT formatted_experience_level,
       COUNT(*) as total_jobs,
       COUNT(DISTINCT company_name) as unique_companies
FROM job_postings
GROUP BY formatted_experience_level
ORDER BY total_jobs DESC;

--Find all companies that are hiring for more than 5 different job titles
select company_name,
 COUNT(DISTINCT title) as unique_titles
from job_postings
group by company_name
having count(distinct title) > 5
ORDER BY unique_titles DESC;



--What is the most common work type for each experience level?

select formatted_experience_level,
work_type,
count(*) as total_jobs
FROM job_postings
GROUP BY
formatted_experience_level,work_type
ORDER BY formatted_experience_level, total_jobs DESC



--Which posting domain has the highest number of sponsored jobs?
select posting_domain, 
count(*) as total_jobs
from job_postings
where sponsored = 0
group by 
posting_domain
order by total_jobs DESC;

select count(*)
from job_postings
group by 
sponsored;



