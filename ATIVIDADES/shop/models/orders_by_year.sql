{{ config(materialized='table') }}

SELECT EXTRACT(YEAR FROM order_approved_at) AS order_year,
       COUNT(order_id) AS total
FROM `aula.orders`
GROUP BY 1

