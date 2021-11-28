CREATE TABLE  Employee (
   Emp_id INT NOT NULL AUTO_INCREMENT ,
   FName varchar(85) NOT NULL,
   LName varchar(85) NOT NULL,
   DOB date NOT NULL,
   Sex varchar(100) DEFAULT NULL,
   Email varchar(100) NOT NULL,
   Sal int NOT NULL,
   Mngr_id int DEFAULT NULL,
   Dept_id int Not NULL,
   PRIMARY KEY (Emp_id),
   UNIQUE KEY Mngr_id (Mngr_id )
)
##PRIMARY KEY (Emp_id),
##UNIQUE KEY (Mngr_id )
##DROP table employee; 
## table i silmek icin kullanilir
##show table status
#change date format yy-m-d!!!!
##ALTER TABLE employee ADD Emp_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
select*from employee;
INSERT INTO employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id )VALUES(1,'Abirami', 'Bob', '1990-01-10', 'Female', 'EmaiAbirami@hcl.com',1000,2,10);
INSERT INTO employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id )VALUES(2,'Bhuvi',' Rob',' 1991-02-10','Female','Bhuvi@xyz',500, 3, 20);       
INSERT INTO employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(3,'Chandrima','Derek','1992-03-10', 'Female',' @abc.com', 2000, 4, 30);
INSERT INTO employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(4,'Debasis', 'Pringle', '1993-04-10','Male',' Debasis@hcl.com', 3000 ,5, 40);
INSERT INTO employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(5,'Engima','Gefree','1995-05-10','Female','Engima@gmail.com ',4500, 6 ,10);
INSERT INTO employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(6,'Funnel',' Samas','1999-06-10','Male','Funnel@hcl.com', 5500, 7, 20);
INSERT INTO employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id )VALUES(7,'Gabriel','Lal',' 1997-07-10','Male','Gabriel@xyz.com', 6500, 8, 30);
INSERT INTO employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(8,'Hari','Fedrik','1998-08-10','Male','Hari@hcl.com', 7900, 9, 40);
INSERT INTO employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(9,'Inia ','Gunjan ','1999-09-10 ','Female ','Inia@hcl.com', 8900 ,10 ,10);
INSERT INTO employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(10,'Jaisna ','Singh','1990-01-10','Female','Jaisna@hcl.com', 1000 ,11,20);

## a. Fetch all the employees data
SELECT *from employee;

## b. Fetch only those employees who draws more than minimum salary
SELECT MIN(Sal) from employee;
Select Dept_id,MIN(sal)
from employee
group by Dept_id order by MIN(sal) DESC;


##c. Fetch only those employees who draws more than minimum salary of their department
SELECT FName,Emp_id
FROM employee
WHERE sal<=500;

##d. Fetch all the employee data along with their Manager Name
SELECT Mngr_id,FName FROM employee order by Mngr_id;

##e. Fetch all the employees who born between 1990 and 1995
  Select * from employee
where (DOB between '1990-01-01' and '1995-01-01')
  
##f. Fetch all the employees who draws same salary
Select * from employee
where Sal =1000;

##g. Fetch all the employees who have a valid email address

SELECT *FROM  `employee`
WHERE `email` NOT REGEXP '^[a-zA-Z0-9][a-zA-Z0-9._-]*[a-zA-Z0-9._-]@[a-zA-Z0-9][a-zA-Z0-9._-]*[a-zA-Z0-9]\\.[a-zA-Z]{2,63}$';
         
##h. Fetch all the employees who works for HCL

SELECT * FROM `employee`
WHERE `Email`REGEXP '(.*)@hcl.com'

##i. Fetch all Female employees data
select FName,LName,Sex from employee Where Sex Like 'Female';

##j. Fetch all the employees who have Lname as palindrome.

SELECT DISTINCT LName AS Palindrome FROM Employee 
WHERE REVERSE(LName) IN 
(SELECT LName FROM Employee);

##k. Fetch all the employees who gets salary more than average salary.
SELECT ROUND(MAX(sal),0) 'Maximum',
ROUND(MIN(sal),0) 'Minimum',
ROUND(SUM(sal),0) 'Sum',
ROUND(AVG(sal),0) 'Average'
FROM employee;
 
SELECT FName, LName, sal FROM employee
WHERE sal > (SELECT AVG(sal) FROM employee);

##l. Fetch highest paid salaried emp details who belongs to department 20.
select*from employee 
Where Dept_id =20;
select*from employee
where Dept_id=20 = (Select Max(sal) from employee);

##m. Find the employee whose salary is not less than other salary in department.

SELECT FName,Sal FROM employee
WHERE sal  >(select Min(sal) from employee);

##n. Find the employee whose salary is more than average salary and how much more.

SELECT * FROM employee 
WHERE sal > 
ALL(SELECT avg(sal)FROM employee GROUP BY Dept_id);

#############################################

Select* from employee

UPDATE employee
SET (INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (11,'Yash',' Bob ','1990-01-10 ','Female',' Abirami@hcl.com ',1000, 2 ,10);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (12,'Bharat','Rob','1991-02-10',' Female',' Bhuvi@xyz ',500 ,2 ,20);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (13,'Krish',' Derek ','1992-03-10','Female',' @abc.com', 2000, 3, 30);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (14,'Karina',' Pringle',' 1993-04-10',' Male ','Debasis@hcl.com', 3000 ,3, 40);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(15,'King',' Gefree','1995-05-10',' Female','Engima@gmail.com', 4500 ,8 ,10);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(16,'George ','Samas ','1999-06-10',' Male','Funnel@hcl.com', 5500, 8 ,20);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(17,'Patric',' Lal',' 1997-07-10',' Male', 'Gabriel@xyz.com', 6500, 9, 30);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(18,'Peter', 'Fedrik', '1998-08-10', 'Male',' Hari@hcl.com ',7900 ,9 ,40);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(19,'Mirande','Gunjan', '1999-09-10', 'Female', 'Inia@hcl.com',8900,10, 10);
;),
WHERE employee;
##it gave me syntax error with path



##5.Create Employee table with duplicate emp_id data. Delete all the duplicate data.
Select Dept_id, Count('Dept_id') from employee
group by Dept_id having count('Dept_id')>1 ;

##6.Create a view using Emp and Dept table
create view Emp_id As Select 'Dept_id' from employee ;


##7. Create a Materialized view using Emp and Dept table
create view Materialized As 
select*from emp.USERS where employee
union
select*from Dept_id.USERS where employee
