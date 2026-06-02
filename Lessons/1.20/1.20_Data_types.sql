SELECT
    table_name,
    column_name,
    data_type
FROM information_schema.columns
WHERE table_name = 'job_postings_fact';

DESCRIBE job_postings_fact;

SELECT CAST(123 AS VARCHAR);

SELECT
    CAST(job_id AS VARCHAR) || '-' || CAST(company_id AS VARCHAR) AS ID,
    CAST(job_work_from_home AS INTEGER) AS job_work_from_home, -- from boolean to numeric value
    CAST(job_posted_date AS DATE) AS job_posted_date, -- from timestamp to date only
    CAST(salary_year_avg AS DECIMAL(10,0)) AS salary_year_avg -- from double to no decimal places
FROM
    job_postings_fact
WHERE salary_year_avg IS NOT NULL
LIMIT 10;

SELECT
    job_id::VARCHAR || '-' || company_id::VARCHAR AS ID,
    job_work_from_home::INTEGER AS job_work_from_home, -- from boolean to numeric val:: job_posted_date AS DATE AS jb_posted_date, -- from timestamp to date only
    salary_year_avg::DECIMAL(10,0) AS salary_year_avg -- from double to no decim::lace
FROM
    job_postings_fact
WHERE salary_year_avg IS NOT NULL
LIMIT 10;

