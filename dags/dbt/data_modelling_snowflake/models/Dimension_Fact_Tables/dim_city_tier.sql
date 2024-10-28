WITH d_citytier AS (
    SELECT 
        distinct City_Tier as City_Tier, 

    FROM 
        {{ source('p_finance_table' ,  'personal_finance') }}

)


SELECT  City_Tier,
    ROW_NUMBER() OVER (ORDER BY  City_Tier) AS City_Tier_ID
FROM  d_citytier
