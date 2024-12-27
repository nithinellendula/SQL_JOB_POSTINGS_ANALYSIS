/*
Find the count of the number of remote job postings per skill
    - Display the top 5 skills by their demand in remote jobs
    - Include skill ID, name, and count of postings requiring the skill
*/

SELECT 
    skill_job.skill_id,
    skill.skills,
    COUNT(jobs.job_id) AS skill_demand
FROM
    skills_job_dim AS skill_job
INNER JOIN job_postings_fact AS jobs ON jobs.job_id=skill_job.job_id
INNER JOIN skills_dim AS skill ON skill.skill_id=skill_job.skill_id
GROUP BY
    skill.skills,skill_job.skill_id
ORDER BY
    skill_demand DESC
LIMIT 5;