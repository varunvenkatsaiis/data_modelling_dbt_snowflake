SELECT 
    c.City_Tier,
    AVG(f.Disposable_Income) AS Avg_Disposable_Income,
    AVG(f.Desired_Savings) AS Avg_Desired_Savings
FROM 
    {{ ref('fact_finance') }} f
JOIN 
    {{ ref('dim_city_tier') }} c ON f.City_Tier_ID = c.City_Tier_ID
GROUP BY 
    c.City_Tier
