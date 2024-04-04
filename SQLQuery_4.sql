--Execution Hiatus

---Look up the documentation to fix the query so that it returns the number of days between the dates.
--SELECT DATEDIFF(day, '1989-07-07', '1993-08-10') AS day_difference

---Write a query to produce the previous table.
--SELECT  TDCJ_Number + 1 AS TDCJ_Number,
--  execution_date AS last_ex_date
--FROM tx_deathrow
--WHERE TDCJ_Number < 553

---Now we can nest this query into our template above: Nest the query which generates the previous table into the template.
--SELECT
--  last_ex_date AS start,
--  execution_date AS end,
--  JULIANDAY(day, 'execution_date', 'last_ex_date') AS day_difference
--FROM executions
--JOIN (
--    SELECT
--      ex_number + 1 AS ex_number,
--      execution_date AS last_ex_date
--    FROM tx_deathrow
--  ) previous
--  ON tx_deathrow.TDCJ_Number = previous.TDCJ_Number 
--ORDER BY day_difference DESC
--LIMIT 10



