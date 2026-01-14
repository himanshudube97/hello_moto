--DBT AUTOMATION has generated this model, please DO NOT EDIT 
--Please make sure you dont change the model name 

{{ config(materialized='table', schema='intermediate') }}
WITH cte1 as (
SELECT "_airbyte_ab_id", "_airbyte_data"
FROM {{ source('public', '_airbyte_raw_visits') }}
)
-- Final SELECT statement combining the outputs of all CTEs
SELECT *
FROM cte1