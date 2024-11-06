SELECT 
    job_id,
    job_title_short,
    salary_year_avg,
    CASE 
        WHEN salary_year_avg >= 80000 THEN 'High'
        WHEN salary_year_avg BETWEEN 50000 AND 79999 THEN 'Standard'
        WHEN salary_year_avg < 50000 THEN 'Low'
        ELSE 'Unknown'
    END AS salary_category
FROM 
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
ORDER BY
    salary_year_avg;
