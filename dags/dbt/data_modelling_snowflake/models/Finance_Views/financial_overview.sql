SELECT 
    o.Occupation,
    c.City_Tier,
    f.Income,
    f.Disposable_Income,
    f.Desired_Savings,
    f.Total_Expenses,
    f.Rent,
    f.Loan_Repayment,
    f.Insurance,
    f.Groceries,
    f.Transport,
    f.Eating_Out,
    f.Entertainment,
    f.Utilities,
    f.Healthcare,
    f.Education,
    f.Miscellaneous
FROM 
    {{ ref('fact_finance') }} f
JOIN 
    {{ ref('dim_occupation') }} o ON f.Occupation_ID = o.Occupation_ID
JOIN 
    {{ ref('dim_city_tier') }} c ON f.City_Tier_ID = c.City_Tier_ID
