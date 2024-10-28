SELECT 
    o.Occupation_ID,
    c.City_Tier_ID,
    p.Income,
    p.Disposable_Income,
    p.Desired_Savings,
    p.Rent,
    p.Loan_Repayment,
    p.Insurance,
    p.Groceries,
    p.Transport,
    p.Eating_Out,
    p.Entertainment,
    p.Utilities,
    p.Healthcare,
    p.Education,
    p.Miscellaneous ,
     (p.Rent + p.Loan_Repayment + p.Insurance + 
     p.Groceries + p.Transport + p.Eating_Out + 
     p.Entertainment + p.Utilities + 
     p.Healthcare + p.Education + p.Miscellaneous) AS Total_Expenses

FROM {{ source('p_finance_table' ,  'personal_finance') }} p
JOIN {{ ref('dim_occupation') }} o ON p.Occupation = o.Occupation
JOIN {{ ref('dim_city_tier') }} c ON p.City_Tier = c.City_Tier
