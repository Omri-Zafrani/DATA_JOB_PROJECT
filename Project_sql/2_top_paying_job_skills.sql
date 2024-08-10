/*lets look for what skills I need for those remote data analyst */
WITH top_paying AS(
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
)
SELECT top_paying.*, skills FROM top_paying
INNER JOIN skills_job_dim ON top_paying.job_id =skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY salary_year_avg DESC
/*
Here are the insights from the analysis of the skills column in the top-paying data analyst roles for 2023:

Top Skills:

SQL: Listed in 8 job postings, making it the most frequently required skill.
Python: Appears in 7 job postings, indicating strong demand for this programming language.
Tableau: Featured in 6 job postings, showing its importance in data visualization.
Other Common Skills:

R: Listed in 4 postings.
Snowflake, Pandas, and Excel: Each mentioned 3 times.
Azure, Bitbucket, Go, Oracle, Power BI, Confluence, GitLab, Atlassian, Jira, AWS, and Numpy: Each appears 2 times.
Less Common Skills: Skills like Jenkins, SAP, Hadoop, PowerPoint, Jupyter, Pyspark, Databricks, and Git are mentioned only once.

This analysis suggests that technical skills like SQL, Python, and Tableau are highly sought after in these high-paying roles, with a diverse set of other tools and platforms also being relevant depending on the specific job. ​*/