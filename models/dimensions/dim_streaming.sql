{{ config (
    materialized="table"
)}}

WITH 

sessions as (
 SELECT * FROM {{ref ('stg_sessions')}}   
),

transaction as (
 SELECT * FROM {{ref ('stg_transactions')}}    
)

SELECT * FROM sessions