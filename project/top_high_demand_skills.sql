/*
Question: What are the most in-demand skills ?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills .
- Focus on all job postings.
- Why? Retrieves the top 5 skills with the highest demand in the job market, 
    providing insights into the most valuable skills for job seekers.
*/

SELECT
        skill.skills,
        COUNT(skill_job.job_id) AS skill_demand
FROM 
        job_postings_fact AS jobs 
INNER JOIN skills_job_dim AS skill_job ON jobs.job_id=skill_job.job_id
INNER JOIN skills_dim AS skill ON skill_job.skill_id=skill.skill_id
WHERE
        job_work_from_home= True 
GROUP BY 
        skill.skills
ORDER BY
        skill_demand DESC
LIMIT 5

/*
    [
  {
    "skills": "python",
    "skill_demand": "40524"
  },
  {
    "skills": "sql",
    "skill_demand": "40254"
  },
  {
    "skills": "aws",
    "skill_demand": "18264"
  },
  {
    "skills": "azure",
    "skill_demand": "13913"
  },
  {
    "skills": "spark",
    "skill_demand": "13066"
  }
]
*/



-- Identify the top 5 in-demand skills for a data analyst.

SELECT
        skill.skills,
        COUNT(skill_job.job_id) AS skill_demand
FROM 
        job_postings_fact AS jobs 
INNER JOIN skills_job_dim AS skill_job ON jobs.job_id=skill_job.job_id
INNER JOIN skills_dim AS skill ON skill_job.skill_id=skill.skill_id
WHERE
        job_work_from_home= True AND
        job_title_short='Data Analyst'
GROUP BY 
        skill.skills
ORDER BY
        skill_demand DESC
LIMIT 5


/*
[
  {
    "skills": "sql",
    "demand_count": "7291"
  },
  {
    "skills": "excel",
    "demand_count": "4611"
  },
  {
    "skills": "python",
    "demand_count": "4330"
  },
  {
    "skills": "tableau",
    "demand_count": "3745"
  },
  {
    "skills": "power bi",
    "demand_count": "2609"
  }
] */
