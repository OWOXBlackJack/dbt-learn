WITH sessions as (
SELECT
  date,
  sessionId,  
FROM
  `owox-analytics.n_krivosheiev.owoxbi_sessions_*`  
GROUP BY 1,2)

SELECT * FROM sessions

