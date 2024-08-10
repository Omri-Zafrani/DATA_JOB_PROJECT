/*what are top-paying data analyst jobs?
-identify top 10 data analyst roles avaiable remotely and local (tel aviv)
-focuses on job postings with specified salaries(removing nulls)
-why? highlight the top-paying opportunities for data analysts */

--israeli jobs mean jobs located in isael or job avaiable remotely/ anywhere
--filtering only for full time jobs
WITH israeli_jobs AS (--CTE definition starts here
    SELECT
        job_id,
        job_title,
        job_location,
        job_schedule_type,
        salary_year_avg,
        job_posted_date,
        company_id,
        CASE
            WHEN job_location = 'Tel Aviv-yafo, Israel' THEN 'local'
            WHEN job_location = 'Anywhere' THEN 'remote'
            WHEN job_location LIKE '%remote%' THEN 'remote'
            ELSE 'other'
        END AS job_location_category
    FROM job_postings_fact
    WHERE job_title_short = 'Data Analyst' 
)--CTE ends
SELECT israeli_jobs.*, company_dim.name AS company_name
FROM israeli_jobs
LEFT JOIN company_dim ON israeli_jobs.company_id = company_dim.company_id
WHERE job_location_category NOT LIKE '%other%' AND salary_year_avg IS NOT NULL AND job_schedule_type = 'Full-time'
ORDER BY salary_year_avg DESC
LIMIT 10 
--there are no Local jobs in israel within the 10 top paying data analyst jobs, in this case it is better for an israely citizen to work remotely. 
