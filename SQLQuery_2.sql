--Claims of Innocence


---The COUNT Function
--SELECT COUNT(Last_Statement) 
--FROM tx_deathrow 

---Find the total number of executions in the dataset.
--SELECT COUNT(TDCJ_Number) FROM tx_deathrow


---Variations on COUNT: Verify that COUNT(*) gives the same result as before.
--SELECT COUNT(*) FROM tx_deathrow

---This query counts the number of Harris and Bexar county executions. Replace SUMs with COUNTs and edit the CASE WHEN blocks so the query still works
--SELECT
---    COUNT(CASE WHEN county='Harris' THEN 1
--        ELSE 0 END),
--    COUNT(CASE WHEN county='Bexar' THEN 1
--        ELSE 0 END)
---FROM tx_deathrow

---Practice: Find how many inmates were over the age of 50 at execution time.
--SELECT COUNT(Age_at_Execution) FROM tx_deathrow WHERE Age_at_Execution > 50


---Find the number of inmates who have declined to give a last statement. For bonus points, try to do it in 3 ways:
---1) With a WHERE block,
---2) With a COUNT and CASE WHEN block,
---3) With two COUNT functions.
--SELECT COUNT(*) FROM tx_deathrow
--WHERE Last_Statement is null

---Find the minimum, maximum and average age of inmates at the time of execution.
--SELECT MIN(Age_at_Execution), MAX(Age_at_Execution), AVG(Age_at_Execution) FROM tx_deathrow

---Find the average length (based on character count) of last statements in the dataset.
--SELECT AVG(LEN(Last_Statement)) FROM tx_deathrow

---List all the counties in the dataset without duplication.
--SELECT DISTINCT county FROM tx_deathrow

---A Strange Query
--SELECT COUNT(*) FROM tx_deathrow

---Conclusion and Recap:Find the proportion of inmates with claims of innocence in their last statements.
---To do decimal division, ensure that one of the numbers is a decimal by multiplying it by 1.0. Use LIKE '%innocent%' to find claims of innocence.
--SELECT
--1.0 * COUNT(CASE WHEN Last_Statement LIKE '%innocent%'
--    THEN 1 ELSE NULL END) / COUNT(*)
--FROM tx_deathrow


