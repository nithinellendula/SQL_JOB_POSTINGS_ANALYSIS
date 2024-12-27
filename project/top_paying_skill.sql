/*
Answer: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and 
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT 
        skill.skills,
        ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM 
        job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim AS skill ON skills_job_dim.skill_id = skill.skill_id
WHERE
        job_title_short = 'Data Analyst' 
        AND salary_year_avg IS NOT NULL AND
        job_work_from_home = TRUE
GROUP BY
        skill.skills
ORDER BY
        avg_salary DESC
LIMIT 20;

/*
[
  {
    "skills": "pyspark",
    "avg_salary": "208172"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "189155"
  },
  {
    "skills": "watson",
    "avg_salary": "160515"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "gitlab",
    "avg_salary": "154500"
  },
  {
    "skills": "swift",
    "avg_salary": "153750"
  },
  {
    "skills": "jupyter",
    "avg_salary": "152777"
  },
  {
    "skills": "pandas",
    "avg_salary": "151821"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "145000"
  },
  {
    "skills": "golang",
    "avg_salary": "145000"
  },
  {
    "skills": "numpy",
    "avg_salary": "143513"
  },
  {
    "skills": "databricks",
    "avg_salary": "141907"
  },
  {
    "skills": "linux",
    "avg_salary": "136508"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "132500"
  },
  {
    "skills": "atlassian",
    "avg_salary": "131162"
  },
  {
    "skills": "twilio",
    "avg_salary": "127000"
  },
  {
    "skills": "airflow",
    "avg_salary": "126103"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "125781"
  },
  {
    "skills": "jenkins",
    "avg_salary": "125436"
  }
]
*/

--For All Job Roles

SELECT 
        skill.skills,
        ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM 
        job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim AS skill ON skills_job_dim.skill_id = skill.skill_id
WHERE
        salary_year_avg IS NOT NULL AND
        job_work_from_home = TRUE
GROUP BY
        skill.skills
ORDER BY
        avg_salary DESC
LIMIT 20;

/*
[
  {
    "skills": "chef",
    "avg_salary": "204125"
  },
  {
    "skills": "neo4j",
    "avg_salary": "171716"
  },
  {
    "skills": "couchdb",
    "avg_salary": "170000"
  },
  {
    "skills": "watson",
    "avg_salary": "168276"
  },
  {
    "skills": "tidyverse",
    "avg_salary": "165513"
  },
  {
    "skills": "mongo",
    "avg_salary": "163868"
  },
  {
    "skills": "gdpr",
    "avg_salary": "162354"
  },
  {
    "skills": "splunk",
    "avg_salary": "160983"
  },
  {
    "skills": "opencv",
    "avg_salary": "160000"
  },
  {
    "skills": "assembly",
    "avg_salary": "159796"
  },
  {
    "skills": "cassandra",
    "avg_salary": "158493"
  },
  {
    "skills": "rust",
    "avg_salary": "157497"
  },
  {
    "skills": "golang",
    "avg_salary": "155741"
  },
  {
    "skills": "solidity",
    "avg_salary": "155625"
  },
  {
    "skills": "dplyr",
    "avg_salary": "155000"
  },
  {
    "skills": "asp.net core",
    "avg_salary": "155000"
  },
  {
    "skills": "atlassian",
    "avg_salary": "154990"
  },
  {
    "skills": "hugging face",
    "avg_salary": "154322"
  },
  {
    "skills": "numpy",
    "avg_salary": "154132"
  },
  {
    "skills": "tensorflow",
    "avg_salary": "153485"
  }
]
*/