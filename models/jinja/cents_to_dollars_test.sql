WITH
test as (
 SELECT
  1 as revenue,
  'cent' as currency

  UNION ALL

  SELECT
  3 as revenue,
  'cent' as currency
)

SELECT
 {{cent_to_dollars('revenue',2)}} as revenue,
 'dollar' as currency
FROM test