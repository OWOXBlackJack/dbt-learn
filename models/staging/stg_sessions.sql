WITH sessions as (
SELECT
  date,
  sessionId,  
FROM
  {{source ('n_krivosheiev','owoxbi_sessions_20210607')}}
GROUP BY 1,2)

SELECT * FROM sessions

