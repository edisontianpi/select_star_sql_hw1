--The LOng Tail

---The GROUP BY Block: This query pulls the execution counts per county.
--SELECT county,
--  COUNT(*) AS county_executions
--FROM tx_deathrow
--GROUP BY county

---The HAVING Block: Count the number of inmates aged 50 or older that were executed in each county.You should be able to do this using CASE WHEN, but try using the WHERE block here.
--SELECT county, COUNT(*) FROM tx_deathrow 
--WHERE Age_at_Execution >= 50
--  GROUP BY county

---List the counties in which more than 2 inmates aged 50 or older have been executed.
--SELECT county
--FROM tx_deathrow
--WHERE Age_at_Execution >= 50
--GROUP BY county
--HAVING COUNT(*) > 2

---List all the distinct counties in the dataset.
--SELECT DISTINCT county FROM tx_deathrow

---Find the first and last name of the inmate with the longest last statement (by character count). Write in a suitable query to nest in <length-of-longest-last-
--SELECT first_name, last_name
--FROM tx_deathrow
--WHERE LEN(last_statement) =
--    (SELECT MAX(LEN(last_statement))
--     FROM tx_deathrow)


---Insert the <count-of-all-rows> query to find the percentage of executions from each county.
SELECT
  county,
  100.0 * COUNT(*) / (SELECT COUNT(*) FROM tx_deathrow)
    AS percentage
FROM tx_deathrow
GROUP BY county
ORDER BY percentage DESC
