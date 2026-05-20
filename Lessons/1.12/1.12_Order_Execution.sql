/*
Find the top 10 companies for posting jobs
They must have >3000 postings
Limit to US Jobs
*/

SELECT 
    cd.name AS company_name,
    COUNT(jpf.company_id) AS posting_count
FROM job_postings_fact AS jpf
LEFT JOIN company_dim AS cd
    ON jpf.company_id = cd.company_id
WHERE jpf.job_country = 'United States'
GROUP BY jpf.company_id, cd.name
HAVING COUNT(jpf.company_id)>3000
ORDER BY COUNT(jpf.company_id) DESC
LIMIT 10;
