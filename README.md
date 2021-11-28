# mysqlassesment
SELECT e.employee_id 'Emp_Id', e.last_name 'Employee', 
m.employee_id 'Mgr_Id', m.last_name 'Manager' 
FROM employees e 
join employees m 
ON (e.manager_id = m.employee_id);

CREATE TABLE  Employee (
   Emp_id INT NOT NULL AUTO_INCREMENT ,
 FName varchar(35) NOT NULL,
    LName varchar(35) NOT NULL,
    DOB date NOT NULL,
    Sex varchar(10) DEFAULT NULL,
    Email varchar(100) NOT NULL,
    Sal int NOT NULL,
    Mngr_id int DEFAULT NULL,
    Dept_id int Not NULL,
    
PRIMARY KEY (Emp_id),
UNIQUE KEY ( Mngr_id)
);


select*from Employee;
insert into Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id )
values (1,'Abirami', 'Bob', '1990-01-10', 'Female', 'EmaiAbirami@hcl.com',1000,2,10);
#change date format yy-m-d!!!!
insert into Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id )
values (2,'Bhuvi',' Rob',' 1991-02-10','Female','Bhuvi@xyz', 500, 3, 20);       
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (3,'Chandrima','Derek','1992-03-10', 'Female',' @abc.com', 2000, 4, 30);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (4,'Debasis', 'Pringle', '1993-04-10','Male',' Debasis@hcl.com', 3000 ,5, 40);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (5,'Engima','Gefree','1995-05-10','Female','Engima@gmail.com ',4500, 6 ,10);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (6,'Funnel',' Samas','1999-06-10','Male','Funnel@hcl.com', 5500, 7, 20);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id )VALUES (7,'Gabriel','Lal',' 1997-07-10','Male','Gabriel@xyz.com', 6500, 8, 30);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (8,'Hari','Fedrik','1998-08-10','Male','Hari@hcl.com', 7900, 9, 40);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (9,'Inia ','Gunjan ','1999-09-10 ','Female ','Inia@hcl.com', 8900 ,10 ,10);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (10,'Jaisna ','Singh','1990-01-10','Female',' Jaisna@hcl.com', 1000 ,10,20);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (11,'Yash',' Bob ','1990-01-10 ','Female',' Abirami@hcl.com ',1000, 2 ,10);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (12,'Bharat','Rob','1991-02-10',' Female',' Bhuvi@xyz ',500 ,2 ,20);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (13,'Krish',' Derek ','1992-03-10','Female',' @abc.com', 2000, 3, 30);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (14,'Karina',' Pringle',' 1993-04-10',' Male ','Debasis@hcl.com', 3000 ,3, 40);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(15,'King',' Gefree','1995-05-10',' Female','Engima@gmail.com', 4500 ,8 ,10);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(16,'George ','Samas ','1999-06-10',' Male','Funnel@hcl.com', 5500, 8 ,20);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(17,'Patric',' Lal',' 1997-07-10',' Male', 'Gabriel@xyz.com', 6500, 9, 30);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(18,'Peter', 'Fedrik', '1998-08-10', 'Male',' Hari@hcl.com ',7900 ,9 ,40);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(19,'Mirande','Gunjan', '1999-09-10', 'Female', 'Inia@hcl.com',8900,10, 10);
;
================================================
son hali
select*from Employee;
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id )VALUES  (1,'Abirami', 'Bob', '1990-01-10', 'Female', 'EmaiAbirami@hcl.com',1000,2,10);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id )VALUES  (2,'Bhuvi',' Rob',' 1991-02-10','Female','Bhuvi@xyz', 500, 3, 20);       
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (3,'Chandrima','Derek','1992-03-10', 'Female',' @abc.com', 2000, 4, 30);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (4,'Debasis', 'Pringle', '1993-04-10','Male',' Debasis@hcl.com', 3000 ,5, 40);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (5,'Engima','Gefree','1995-05-10','Female','Engima@gmail.com ',4500, 6 ,10);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (6,'Funnel',' Samas','1999-06-10','Male','Funnel@hcl.com', 5500, 7, 20);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id )VALUES (7,'Gabriel','Lal',' 1997-07-10','Male','Gabriel@xyz.com', 6500, 8, 30);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (8,'Hari','Fedrik','1998-08-10','Male','Hari@hcl.com', 7900, 9, 40);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (9,'Inia ','Gunjan ','1999-09-10 ','Female ','Inia@hcl.com', 8900 ,10 ,10);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (10,'Jaisna ','Singh','1990-01-10','Female',' Jaisna@hcl.com', 1000 ,10,20);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (11,'Yash',' Bob ','1990-01-10 ','Female',' Abirami@hcl.com ',1000, 2 ,10);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (12,'Bharat','Rob','1991-02-10',' Female',' Bhuvi@xyz ',500 ,2 ,20);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (13,'Krish',' Derek ','1992-03-10','Female',' @abc.com', 2000, 3, 30);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES (14,'Karina',' Pringle',' 1993-04-10',' Male ','Debasis@hcl.com', 3000 ,3, 40);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(15,'King',' Gefree','1995-05-10',' Female','Engima@gmail.com', 4500 ,8 ,10);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(16,'George ','Samas ','1999-06-10',' Male','Funnel@hcl.com', 5500, 8 ,20);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(17,'Patric',' Lal',' 1997-07-10',' Male', 'Gabriel@xyz.com', 6500, 9, 30);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(18,'Peter', 'Fedrik', '1998-08-10', 'Male',' Hari@hcl.com ',7900 ,9 ,40);
INSERT INTO Employee(Emp_id,FName,LName,DOB,Sex,Email,Sal,Mngr_id ,Dept_id ) VALUES(19,'Mirande','Gunjan', '1999-09-10', 'Female', 'Inia@hcl.com',8900,10, 10);
;











## a. Fetch all the employees data
SELECT *from employee;
insert into employee values(100,’Deptld’);

## b. Fetch only those employees who draws more than minimum salary
SELECT MIN(Sal) from employee;
Select Deptld,MIN(sal)
from employee
group by Deptld order by MIN(sal) DESC;


##c. Fetch only those employees who draws more than minimum salary of their department
SELECT * FROM employees 
WHERE sal > 
ALL(SELECT avg(sal)FROM employees GROUP BY Deptld);

##d. Fetch all the employee data along with their Manager Name

SELECT Empld,Mgrld 
FROM employees 
join employees m 
ON (e.manager_id = m.employee_id);

##e. Fetch all the employees who born between 1990 and 1995

##f. Fetch all the employees who draws same salary

##g. Fetch all the employees who have a valid email address

##h. Fetch all the employees who works for HCL

##i. Fetch all Female employees data

##j. Fetch all the employees who have Lname as palindrome.

##k. Fetch all the employees who gets salary more than average salary.

##l. Fetch highest paid salaried emp details who belongs to department 20.

##m. Find the employee whose salary is not less than other salary in department.

##n. Find the employee whose salary is more than average salary and how much more.




