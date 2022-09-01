SELECT TOP (3)
e.EmployeeID
,e.FirstName
FROM Employees AS e
LEFT JOIN EmployeesProjects AS p ON e.EmployeeID = p.EmployeeID
WHERE p.ProjectID IS NULL
ORDER BY e.EmployeeID

--SELECT A.* FROM A WHERE ID NOT IN(SELECT ID FROM B)
--SELECT A.* FROM A WHERE NOT EXISTS(SELECT 1 FROM B WHERE B.ID=A.ID)

SELECT TOP (3)
e.EmployeeID
,e.FirstName
FROM Employees AS e
WHERE e.EmployeeID NOT IN (SELECT EmployeeID FROM EmployeesProjects) 
ORDER BY e.EmployeeID
