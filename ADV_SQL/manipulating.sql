-- creating table jobs_applied

CREATE TABLE jobs_applied
  (
     job_id                      INT,
     job_title                   VARCHAR(100),
     Applied_date                DATE,
     Resume                      BOOLEAN,
     Resume_file_name            VARCHAR(50),
     CV                          BOOLEAN,
     CV_file_name                VARCHAR(50),
     Application_status          VARCHAR(25)
  ); 

--Inserting values into table

INSERT INTO jobs_applied
            (job_id,
             job_title,
             Applied_date,
             Resume,
             Resume_file_name,
             CV,
             CV_file_name,
             Application_status)
VALUES      (1,
             'Associate Software Engineer 2',
             '2024-02-01',
             true,
             'resume_01.pdf',
             true,
             'cover_letter_01.pdf',
             'submitted'),
            (2,
             'Data Analyat',
             '2024-02-02',
             false,
             'resume_02.pdf',
             false,
             NULL,
             'interview scheduled'),
            (3,
             'Systems Engineer',
             '2024-02-03',
             true,
             'resume_03.pdf',
             true,
             'cover_letter_03.pdf',
             'ghosted'),
            (4,
             'Software Trainee',
             '2024-02-04',
             true,
             'resume_04.pdf',
             false,
             NULL,
             'submitted'),
            (5,
             'CyberSecurity Analyst',
             '2024-02-05',
             false,
             'resume_05.pdf',
             true,
             'cover_letter_05.pdf',
             'rejected'); 

ALTER TABLE jobs_applied
ADD contact VARCHAR(50);

UPDATE jobs_applied
SET    contact = CASE JOB_ID
    WHEN 1 THEN 'Rob'
    WHEN 2 THEN 'Ram'
    WHEN 3 THEN 'Emanuel'
    WHEN 4 THEN 'Alex'
    WHEN 5 THEN 'James'
END
WHERE  job_id IN (1,2,3,4,5); 

ALTER TABLE jobS_applied
RENAME COLUMN contact TO contact_name;

ALTER TABLE jobs_applied
ALTER COLUMN contact_name TYPE TEXT;

ALTER TABLE jobs_applied
DROP COLUMN contact_name;

DROP TABLE jobs_applied;