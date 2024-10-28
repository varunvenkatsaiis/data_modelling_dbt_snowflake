WITH d_occupation AS (
    SELECT 
        distinct Occupation as Occupation, 

    FROM 
        {{ source('p_finance_table' ,  'personal_finance') }}

)

SELECT  Occupation ,
    ROW_NUMBER() OVER (ORDER BY Occupation) AS Occupation_ID
    FROM d_occupation
