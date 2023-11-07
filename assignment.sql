create database ed1
use ed1


## creating a table A 
create table Employees(emp_id int ,
 emp_name varchar(10), 
 email varchar(20), 
 department varchar(10))
 
 ### inserting values into table A
 insert into Employees (emp_id , emp_name, email, department)
			values (1001,"Ravi",'raviad1@example.com',"HR"),
                   (1002,"Rahul",'rahuled1@example.com',"finance"),
                   (1003,"Suraj",'surajed1@examole.com', " IT")
                   
                   
select * from Employees

drop table projects 
## creating Table B

create table projects(project_id int,
                      project_name varchar(50),
                      emp_id int,
                      deadline date )
                      
## inserting value in table B

INSERT INTO Projects (project_id, project_name, emp_id, deadline)
VALUES
    (1, 'Project A', 1001, '2023-11-14'),
    (2, 'Project B', 1002, '2023-11-15'),
    (3, 'Project C', 1003, '2023-11-16'),
    (4, 'Project D', 1004, '2023-11-17'),
    (5, 'Project E', 1005, '2023-11-18');

select * from projects 

### join 

select emp.emp_id, emp.emp_name, emp.email, emp.department, pro.project_id, pro.project_name, pro.emp_id, pro.deadline from Employees as emp, projects as pro


## right join
SELECT pro.project_id, pro.project_name, emp.emp_name FROM Projects as pro RIGHT JOIN employees as emp ON pro.emp_id = emp.emp_id;

## inner join
  select emp.emp_id, emp.emp_name, emp.email, emp.department, pro.project_id, pro.project_name, pro.emp_id, pro.deadline from Employees as emp inner join projects as pro on emp.emp_id=  pro.emp_id 

## left join\
SELECT pro.project_id, pro.project_name, emp.emp_name FROM Projects as pro left JOIN Employees as emp ON pro.emp_id = emp.emp_id;



### intersect
SELECT project_id, project_name FROM Projects intersect SELECT emp_id, emp_name FROM Employees;
## there is no common record 


# union
SELECT project_id, project_name
FROM Projects
UNION
SELECT emp_id, emp_name
FROM Employees;

### union all

SELECT project_id, project_name
FROM Projects
UNION ALL
SELECT emp_id, emp_name
FROM Employees;
