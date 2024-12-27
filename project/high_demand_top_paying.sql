/*
Answer: What are the most optimal skills to learn (aka it’s in high demand and a high-paying skill)?
- Identify skills in high demand and associated with high average salaries for Data Analyst roles
- Concentrates on remote positions with specified salaries
- Why? Targets skills that offer job security (high demand) and financial benefits (high salaries), 
    offering strategic insights for career development in data analysis
*/

SELECT 
        skill.skill_id,
        skill.skills,
        COUNT(skill_job.job_id) AS skill_demand,
        ROUND(AVG(jobs.salary_year_avg), 0) AS avg_salary
FROM
        job_postings_fact AS jobs
INNER JOIN skills_job_dim AS skill_job ON jobs.job_id = skill_job.job_id
INNER JOIN skills_dim AS skill ON skill_job.skill_id = skill.skill_id
WHERE
        job_title_short = 'Data Analyst'
        AND salary_year_avg IS NOT NULL
        AND job_work_from_home = True 
GROUP BY
        skill.skill_id
HAVING
        COUNT(skill_job.job_id) > 10
ORDER BY
        avg_salary DESC,
        skill_demand DESC
LIMIT 25;

/*
[
  {
    "skill_id": 8,
    "skills": "go",
    "skill_demand": "27",
    "avg_salary": "115320"
  },
  {
    "skill_id": 234,
    "skills": "confluence",
    "skill_demand": "11",
    "avg_salary": "114210"
  },
  {
    "skill_id": 97,
    "skills": "hadoop",
    "skill_demand": "22",
    "avg_salary": "113193"
  },
  {
    "skill_id": 80,
    "skills": "snowflake",
    "skill_demand": "37",
    "avg_salary": "112948"
  },
  {
    "skill_id": 74,
    "skills": "azure",
    "skill_demand": "34",
    "avg_salary": "111225"
  },
  {
    "skill_id": 77,
    "skills": "bigquery",
    "skill_demand": "13",
    "avg_salary": "109654"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "skill_demand": "32",
    "avg_salary": "108317"
  },
  {
    "skill_id": 4,
    "skills": "java",
    "skill_demand": "17",
    "avg_salary": "106906"
  },
  {
    "skill_id": 194,
    "skills": "ssis",
    "skill_demand": "12",
    "avg_salary": "106683"
  },
  {
    "skill_id": 233,
    "skills": "jira",
    "skill_demand": "20",
    "avg_salary": "104918"
  },
  {
    "skill_id": 79,
    "skills": "oracle",
    "skill_demand": "37",
    "avg_salary": "104534"
  },
  {
    "skill_id": 185,
    "skills": "looker",
    "skill_demand": "49",
    "avg_salary": "103795"
  },
  {
    "skill_id": 2,
    "skills": "nosql",
    "skill_demand": "13",
    "avg_salary": "101414"
  },
  {
    "skill_id": 1,
    "skills": "python",
    "skill_demand": "236",
    "avg_salary": "101397"
  },
  {
    "skill_id": 5,
    "skills": "r",
    "skill_demand": "148",
    "avg_salary": "100499"
  },
  {
    "skill_id": 78,
    "skills": "redshift",
    "skill_demand": "16",
    "avg_salary": "99936"
  },
  {
    "skill_id": 187,
    "skills": "qlik",
    "skill_demand": "13",
    "avg_salary": "99631"
  },
  {
    "skill_id": 182,
    "skills": "tableau",
    "skill_demand": "230",
    "avg_salary": "99288"
  },
  {
    "skill_id": 197,
    "skills": "ssrs",
    "skill_demand": "14",
    "avg_salary": "99171"
  },
  {
    "skill_id": 92,
    "skills": "spark",
    "skill_demand": "13",
    "avg_salary": "99077"
  },
  {
    "skill_id": 13,
    "skills": "c++",
    "skill_demand": "11",
    "avg_salary": "98958"
  },
  {
    "skill_id": 186,
    "skills": "sas",
    "skill_demand": "63",
    "avg_salary": "98902"
  },
  {
    "skill_id": 7,
    "skills": "sas",
    "skill_demand": "63",
    "avg_salary": "98902"
  },
  {
    "skill_id": 61,
    "skills": "sql server",
    "skill_demand": "35",
    "avg_salary": "97786"
  },
  {
    "skill_id": 9,
    "skills": "javascript",
    "skill_demand": "20",
    "avg_salary": "97587"
  }
]
*/

--For ALL job roles and positions

SELECT 
        skill.skill_id,
        skill.skills,
        COUNT(skill_job.job_id) AS skill_demand,
        ROUND(AVG(jobs.salary_year_avg), 0) AS avg_salary
FROM
        job_postings_fact AS jobs
INNER JOIN skills_job_dim AS skill_job ON jobs.job_id = skill_job.job_id
INNER JOIN skills_dim AS skill ON skill_job.skill_id = skill.skill_id
WHERE
        salary_year_avg IS NOT NULL
        AND job_work_from_home = True 
GROUP BY
        skill.skill_id
HAVING
        COUNT(skill_job.job_id) > 10
ORDER BY
        avg_salary DESC,
        skill_demand DESC
LIMIT 25;

/*
[
  {
    "skill_id": 58,
    "skills": "neo4j",
    "skill_demand": "19",
    "avg_salary": "171716"
  },
  {
    "skill_id": 24,
    "skills": "mongo",
    "skill_demand": "17",
    "avg_salary": "163868"
  },
  {
    "skill_id": 105,
    "skills": "gdpr",
    "skill_demand": "15",
    "avg_salary": "162354"
  },
  {
    "skill_id": 193,
    "skills": "splunk",
    "skill_demand": "13",
    "avg_salary": "160983"
  },
  {
    "skill_id": 63,
    "skills": "cassandra",
    "skill_demand": "46",
    "avg_salary": "158493"
  },
  {
    "skill_id": 39,
    "skills": "rust",
    "skill_demand": "18",
    "avg_salary": "157497"
  },
  {
    "skill_id": 27,
    "skills": "golang",
    "skill_demand": "27",
    "avg_salary": "155741"
  },
  {
    "skill_id": 219,
    "skills": "atlassian",
    "skill_demand": "20",
    "avg_salary": "154990"
  },
  {
    "skill_id": 94,
    "skills": "numpy",
    "skill_demand": "131",
    "avg_salary": "154132"
  },
  {
    "skill_id": 99,
    "skills": "tensorflow",
    "skill_demand": "209",
    "avg_salary": "153485"
  },
  {
    "skill_id": 26,
    "skills": "c",
    "skill_demand": "96",
    "avg_salary": "153427"
  },
  {
    "skill_id": 213,
    "skills": "kubernetes",
    "skill_demand": "137",
    "avg_salary": "153035"
  },
  {
    "skill_id": 101,
    "skills": "pytorch",
    "skill_demand": "189",
    "avg_salary": "152627"
  },
  {
    "skill_id": 3,
    "skills": "scala",
    "skill_demand": "257",
    "avg_salary": "149645"
  },
  {
    "skill_id": 223,
    "skills": "ansible",
    "skill_demand": "17",
    "avg_salary": "149412"
  },
  {
    "skill_id": 98,
    "skills": "kafka",
    "skill_demand": "225",
    "avg_salary": "149317"
  },
  {
    "skill_id": 106,
    "skills": "scikit-learn",
    "skill_demand": "128",
    "avg_salary": "148661"
  },
  {
    "skill_id": 93,
    "skills": "pandas",
    "skill_demand": "216",
    "avg_salary": "148435"
  },
  {
    "skill_id": 218,
    "skills": "bitbucket",
    "skill_demand": "11",
    "avg_salary": "148301"
  },
  {
    "skill_id": 55,
    "skills": "redis",
    "skill_demand": "21",
    "avg_salary": "147833"
  },
  {
    "skill_id": 212,
    "skills": "terraform",
    "skill_demand": "81",
    "avg_salary": "147554"
  },
  {
    "skill_id": 191,
    "skills": "microstrategy",
    "skill_demand": "12",
    "avg_salary": "147093"
  },
  {
    "skill_id": 62,
    "skills": "mongodb",
    "skill_demand": "87",
    "avg_salary": "146875"
  },
  {
    "skill_id": 18,
    "skills": "mongodb",
    "skill_demand": "87",
    "avg_salary": "146875"
  },
  {
    "skill_id": 120,
    "skills": "seaborn",
    "skill_demand": "16",
    "avg_salary": "146809"
  }
]
*/

-- Identifies skills in high demand for Data Analyst roles
--Using CTEs a little nested

WITH skill_demand AS (
    SELECT
            skill.skill_id,
            skill.skills,
            COUNT(skill_job.job_id) AS demand_count
    FROM 
            job_postings_fact
    INNER JOIN skills_job_dim AS skill_job  ON job_postings_fact.job_id = skill_job.job_id
    INNER JOIN skills_dim AS skill ON skill_job.skill_id = skill.skill_id
    WHERE
            job_title_short = 'Data Analyst' 
            AND salary_year_avg IS NOT NULL
            AND job_work_from_home = True 
    GROUP BY
            skill.skill_id
), 

-- Skills with high average salaries for Data Analyst roles

average_salary AS (
    SELECT 
            skill_job.skill_id,
            ROUND(AVG(jobs.salary_year_avg), 0) AS avg_salary
    FROM 
            job_postings_fact AS jobs
    INNER JOIN skills_job_dim AS skill_job ON jobs.job_id = skill_job.job_id
    INNER JOIN skills_dim AS skill ON skill_job.skill_id = skill.skill_id
    WHERE
            job_title_short = 'Data Analyst'
            AND salary_year_avg IS NOT NULL
            AND job_work_from_home = True 
    GROUP BY
            skill_job.skill_id
)

-- Returning high demand and high salaries for skills 
SELECT
    skill_demand.skill_id,
    skill_demand.skills,
    demand_count,
    avg_salary
FROM
    skill_demand
INNER JOIN  average_salary ON skill_demand.skill_id = average_salary.skill_id
WHERE  
    demand_count > 10
ORDER BY
    avg_salary DESC,
    demand_count DESC
LIMIT 25;

/*
[
  {
    "skill_id": 8,
    "skills": "go",
    "demand_count": "27",
    "avg_salary": "115320"
  },
  {
    "skill_id": 234,
    "skills": "confluence",
    "demand_count": "11",
    "avg_salary": "114210"
  },
  {
    "skill_id": 97,
    "skills": "hadoop",
    "demand_count": "22",
    "avg_salary": "113193"
  },
  {
    "skill_id": 80,
    "skills": "snowflake",
    "demand_count": "37",
    "avg_salary": "112948"
  },
  {
    "skill_id": 74,
    "skills": "azure",
    "demand_count": "34",
    "avg_salary": "111225"
  },
  {
    "skill_id": 77,
    "skills": "bigquery",
    "demand_count": "13",
    "avg_salary": "109654"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "demand_count": "32",
    "avg_salary": "108317"
  },
  {
    "skill_id": 4,
    "skills": "java",
    "demand_count": "17",
    "avg_salary": "106906"
  },
  {
    "skill_id": 194,
    "skills": "ssis",
    "demand_count": "12",
    "avg_salary": "106683"
  },
  {
    "skill_id": 233,
    "skills": "jira",
    "demand_count": "20",
    "avg_salary": "104918"
  },
  {
    "skill_id": 79,
    "skills": "oracle",
    "demand_count": "37",
    "avg_salary": "104534"
  },
  {
    "skill_id": 185,
    "skills": "looker",
    "demand_count": "49",
    "avg_salary": "103795"
  },
  {
    "skill_id": 2,
    "skills": "nosql",
    "demand_count": "13",
    "avg_salary": "101414"
  },
  {
    "skill_id": 1,
    "skills": "python",
    "demand_count": "236",
    "avg_salary": "101397"
  },
  {
    "skill_id": 5,
    "skills": "r",
    "demand_count": "148",
    "avg_salary": "100499"
  },
  {
    "skill_id": 78,
    "skills": "redshift",
    "demand_count": "16",
    "avg_salary": "99936"
  },
  {
    "skill_id": 187,
    "skills": "qlik",
    "demand_count": "13",
    "avg_salary": "99631"
  },
  {
    "skill_id": 182,
    "skills": "tableau",
    "demand_count": "230",
    "avg_salary": "99288"
  },
  {
    "skill_id": 197,
    "skills": "ssrs",
    "demand_count": "14",
    "avg_salary": "99171"
  },
  {
    "skill_id": 92,
    "skills": "spark",
    "demand_count": "13",
    "avg_salary": "99077"
  },
  {
    "skill_id": 13,
    "skills": "c++",
    "demand_count": "11",
    "avg_salary": "98958"
  },
  {
    "skill_id": 186,
    "skills": "sas",
    "demand_count": "63",
    "avg_salary": "98902"
  },
  {
    "skill_id": 7,
    "skills": "sas",
    "demand_count": "63",
    "avg_salary": "98902"
  },
  {
    "skill_id": 61,
    "skills": "sql server",
    "demand_count": "35",
    "avg_salary": "97786"
  },
  {
    "skill_id": 9,
    "skills": "javascript",
    "demand_count": "20",
    "avg_salary": "97587"
  }
]
*/