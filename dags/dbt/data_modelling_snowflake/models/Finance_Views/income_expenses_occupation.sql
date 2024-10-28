SELECT 
    o.Occupation,
    SUM(f.Income) AS Total_Income,
    SUM(f.Total_Expenses) AS Total_Expenses,
    (SUM(f.Income) - SUM(f.Total_Expenses)) AS Net_Income
FROM 
    {{ ref('fact_finance') }} f
JOIN 
    {{ ref('dim_occupation') }} o ON f.Occupation_ID = o.Occupation_ID
GROUP BY 
    o.Occupation
