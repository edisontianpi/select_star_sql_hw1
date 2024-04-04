--Beazley's Last Statement

---First SQL Query
--SELECT TOP 3 * FROM tx_deathrow


---The SELECT Block
--SELECT TOP 3 first_name, last_name, last_statement
--FROM tx_deathrow

---The FROM Block
--SELECT TOP 3 first_name 
--FROM tx_deathrow

--SELECT 50 / 2, 51 / 2

---The WHERE Block
--SELECT first_name, last_name, Age_at_Execution
--FROM tx_deathrow WHERE Age_at_Execution <= 25

--SELECT first_name, last_name, Execution
--FROM tx_deathrow
--WHERE first_name LIKE '%mond%'
--AND last_name LIKE '%dry%'

--SELECT CASE WHEN 0 = 0 AND 1 = 1 THEN 0 ELSE 1 END

---Find Napoleon Beazley's last statement.
--SELECT Last_Statement
--FROM tx_deathrow
--WHERE first_name = 'Napoleon'
--	AND last_name = 'Beazley'