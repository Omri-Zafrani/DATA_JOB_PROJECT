Data Job Postings Analysis (2023)
Project Overview
This project involves the analysis of a dataset containing job postings from 2023, specifically focusing on data-related roles. The dataset includes several tables that provide information about companies, job postings, skills, and the relationship between jobs and required skills. The goal of the project was to identify relevant job opportunities for Israeli employees, discover the top-paying skills for Israeli data analysts, and analyze which skills are most in demand for data analyst roles in Israel.

Dataset Description
The dataset consists of the following tables:

company_dim: Contains data about companies that have posted job listings.
job_postings_fact: Includes detailed information about the jobs posted, such as job title, location, salary, and other relevant details.
skills_dim: Contains data about the various skills mentioned in the job postings.
skills_job_dim: Maps skills to specific job postings, detailing which skills are required for which jobs.
Project Objectives
Identify Relevant Jobs for Israeli Employees:

Used complex SQL queries to filter job postings that are either located in Israel or offered as remote positions, making them accessible to Israeli employees.
Top-Paying Skills for Israeli Data Analysts:

Analyzed the dataset to identify which skills are associated with the highest-paying data analyst roles in Israel.
Most In-Demand Skills for Israeli Data Analyst Jobs:

Conducted an analysis to determine which skills are most frequently required for data analyst positions in Israel, helping professionals in the field understand which skills are critical for career development.
SQL Queries
The project heavily relied on advanced SQL queries to extract, filter, and analyze the data. Some key operations included:

Filtering job postings based on location criteria (LIKE %Israel%, = 'remote', or = 'anywhere').
Joining multiple tables to correlate job postings with required skills and salary information.
Aggregating and ranking skills based on demand and associated salaries.
Results & Insights
Relevant Job Postings: Identified a comprehensive list of jobs that are either located in Israel or are remote, thus suitable for Israeli professionals.
Top-Paying Skills: Discovered the skills that command the highest salaries for data analysts in Israel, providing valuable insights for both job seekers and employers.
In-Demand Skills: Highlighted the skills that are most frequently required for data analyst roles in Israel, aiding in skill development and career planning.
Conclusion
This project provides actionable insights into the data job market in Israel, helping professionals understand where to focus their efforts for job searching and skill development. The analysis also offers companies a better understanding of the skills they need to prioritize when hiring data analysts.

Future Work
Expand the analysis to include other roles within the data field, such as data engineers or data scientists.
Perform a time-series analysis to see how the demand for certain skills evolves over time.
Incorporate additional data sources to enrich the analysis.
Author
Omri Zafrani  - Data Analyst
