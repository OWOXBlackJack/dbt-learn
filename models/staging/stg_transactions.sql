WITH transactions as (
SELECT
  sessionId,
  hits.transaction.transactionId as transactionId
FROM
  `owox-analytics.n_krivosheiev.owoxbi_sessions_*`,
  UNNEST (hits) AS hits
GROUP BY 1,2 ) 

SELECT * FROM transactions