{%- set payment_methods=['cash', 'mobile', 'other'] -%}  

WITH
test as 
(SELECT
  '1111' as tid,
  300 as revenue,
  '2021-01-01' as tid_date,
  'card' as payment_method

  UNION ALL

SELECT
  '2222' as tid,
  150 as revenue,
  '2021-01-01' as tid_date,
  'card' as payment_method

  UNION ALL

SELECT
  '3333' as tid,
  100 as revenue,
  '2021-01-01' as tid_date,
  'cash' as payment_method
)

SELECT   
 tid,  
 {% for payment_method in payment_methods %}
 SUM(CASE WHEN payment_method = '{{ payment_method }}' THEN revenue ELSE 0 END) as {{payment_method}}_revenue
  {% if not loop.last %}
   ,
  {% endif %} 

 {% endfor %}
FROM test
GROUP BY 1

