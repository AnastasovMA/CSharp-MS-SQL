SELECT TOP (1)
AVG(Salary) AS MinAverageSalary
FROM Employees AS e
GROUP BY DepartmentID
ORDER BY MinAverageSalary

SELECT MIN(a.AverageSalary) AS MinAverageSalary
FROM(
SELECT 
e.DepartmentID,
AVG(e.Salary) AS AverageSalary
FROM Employees AS e) AS a

SELECT 
Min(a.AverageSalary) AS MinAverageSalary
FROM(
SELECT e.DepartmentID
,AVG(e.Salary) AS AverageSalary
FROM Employees AS e) AS a