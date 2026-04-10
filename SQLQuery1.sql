use [Projet RH];

select * from Employee
select count(EmployeeID)as nombre_employee 
from Employee


SELECT *
FROM Employee
WHERE  Department IS NULL;
--Nombre d’employés par département

select count(EmployeeID)as nombre_employee ,Department
from Employee
group by Department

--Quel est l’âge moyen des employés ?
select AVG(Age) as age_moyen
from Employee

 --répartition hommes/femmes
select Department ,count(Gender )from Employee
where Gender='Male'
group by Department

select count( Gender )from Employee
where Gender='Female'
select * from dbo.Employee;

--pyramide des ages 
SELECT Age, COUNT(*) AS NombreEmployes
FROM Employee
GROUP BY Age
ORDER BY Age;

--nombre d’employés par JobTitle
select JobTitle,count(*) as nombre_employee
from Employee 
group by JobTitle 
order by nombre_employee desc


--postes les plus fréquents

select JobTitle, count(*) as nombre_employee
from Employee
GROUP BY JobTitle
order BY nombre_employee desc

--salaire moyen par département
select AVG(Salary) from Employee

--salaire moyen par poste
select JobTitle,AVG(Salary) as Salaire_Moyen
from Employee
group by JobTitle



--distribution des salaires
SELECT Salary, COUNT(*) AS NombreEmployes
FROM Employee
GROUP BY Salary
ORDER BY Salary;

--Anciennete moyenne
SELECT 
    AVG(DATEDIFF(YEAR, HireDate, GETDATE())) AS Anciennete_Moyenne
FROM Employee;