--Adding TIME STAMP

SELECT
    job_title_short,
    job_location,
	job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_time
FROM
    job_postings_fact;

--Getting month and year using EXTRACT 

SELECT
	job_title_short,
	job_location,
	EXTRACT(MONTH FROM job_posted_date) AS job_posted_month,
	EXTRACT(YEAR FROM job_posted_date) AS job_posted_year
FROM
	job_postings_fact;

--Finding month with highest jobs posting 

SELECT
    COUNT(job_id) AS total_job_post,
    EXTRACT(MONTH FROM job_posted_date) AS posted_month
FROM
	job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    posted_month
ORDER BY
    total_job_post DESC;
    SELECT * FROM job_postings_fact