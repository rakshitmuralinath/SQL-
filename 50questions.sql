CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);
select * from Worker;

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        
        CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
        
        CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');
 
 #Q-1 -Write An SQL Query To Fetch “FIRST_NAME” From Worker Table Using The Alias Name As <WORKER_NAME>.
 select first_name AS WORKER_NAME from Worker;
 
 #Q-2. Write An SQL Query To Fetch “FIRST_NAME” From Worker Table In Upper Case.
 select upper(first_name) from Worker;
 
 # Q-3. Write An SQL Query To Fetch Unique Values Of DEPARTMENT From Worker Table.
 select distinct department from Worker;
 
 # 50 SQL Query Questions and Answers for Practice
SQL Interview | By Meenakshi Agarwal
If you want to improve SQL skills, then install a SQL package like MySQL and start practicing with it. To get you started, we’ve outlined a few SQL query questions in this post.

Solving practice questions is the fastest way to learn any subject. That’s why we’ve selected a set of 50 SQL queries that you can use to step up your learning. We’ve also given SQL scripts to create the test data. So, you can use them to create a test database and tables.

Most of the SQL query questions we’ve filtered out of interviews held by top IT MNC like Flipkart and Amazon. So you’ll gain real-time experience by going through them.

Also, we recommend that you first try to form queries by yourself rather than just reading them from the post. Try to find answers on your own.

But you can’t start until the required sample data is not in place. You can check out the tables below that we’ve provided for practice. So first of all, you need to create the test data in your database software.

By the way, we have a bunch of other posts available for SQL interview preparation. So if you are interested, then follow the link given below.


💡 Most Frequently Asked SQL Interview Questions.

Let’s Begin Learning SQL.
50 SQL Query Questions
50 SQL Query Questions

Prepare Sample Data To Practice SQL Skill.
Sample Table – Worker
WORKER_ID	FIRST_NAME	LAST_NAME	SALARY	JOINING_DATE	DEPARTMENT
001	Monika	Arora	100000	2014-02-20 09:00:00	HR
002	Niharika	Verma	80000	2014-06-11 09:00:00	Admin
003	Vishal	Singhal	300000	2014-02-20 09:00:00	HR
004	Amitabh	Singh	500000	2014-02-20 09:00:00	Admin
005	Vivek	Bhati	500000	2014-06-11 09:00:00	Admin
006	Vipul	Diwan	200000	2014-06-11 09:00:00	Account
007	Satish	Kumar	75000	2014-01-20 09:00:00	Account
008	Geetika	Chauhan	90000	2014-04-11 09:00:00	Admin
Sample Table – Bonus
WORKER_REF_ID	BONUS_DATE	BONUS_AMOUNT
1	2016-02-20 00:00:00	5000
2	2016-06-11 00:00:00	3000
3	2016-02-20 00:00:00	4000
1	2016-02-20 00:00:00	4500
2	2016-06-11 00:00:00	3500
Sample Table – Title
WORKER_REF_ID	WORKER_TITLE	AFFECTED_FROM
1	Manager	2016-02-20 00:00:00
2	Executive	2016-06-11 00:00:00
8	Executive	2016-06-11 00:00:00
5	Manager	2016-06-11 00:00:00
4	Asst. Manager	2016-06-11 00:00:00
7	Executive	2016-06-11 00:00:00
6	Lead	2016-06-11 00:00:00
3	Lead	2016-06-11 00:00:00
To prepare the sample data, you can run the following queries in your database query executor or on the SQL command line. We’ve tested them with MySQL Server 5.7 and MySQL Workbench 6.3.8 query browser. You can also download these Softwares and install them to carry on the SQL exercise.

SQL Script To Seed Sample Data.
CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');
Once above SQL would run, you’ll see a result similar to the one attached below.

SQL Query Questions - Creating Sample Data
Creating Sample Data to Practice SQL Skill.

50 SQL Query Questions And Answers For Practice.
Q-1. Write An SQL Query To Fetch “FIRST_NAME” From Worker Table Using The Alias Name As <WORKER_NAME>.
Ans.

The required query is:

Select FIRST_NAME AS WORKER_NAME from Worker;
 

Q-2. Write An SQL Query To Fetch “FIRST_NAME” From Worker Table In Upper Case.
Ans.

The required query is:

Select upper(FIRST_NAME) from Worker;
 

Q-3. Write An SQL Query To Fetch Unique Values Of DEPARTMENT From Worker Table.
Ans.

The required query is:

Select distinct DEPARTMENT from Worker;
 

#Q-4. Write An SQL Query To Print The First Three Characters Of  FIRST_NAME From Worker Table.
 select substring(first_name,1,3) AS FIRST_NAME from Worker;
 
 #Q-5. Write An SQL Query To Find The Position Of The Alphabet (‘A’) In The First Name Column ‘Amitabh’ From Worker Table.
 select instr('Amitabh','A') from Worker;
 
 #Q-6. Write An SQL Query To Print The FIRST_NAME From Worker Table After Removing White Spaces From The Right Side.
 select rtrim(first_name) as f_name from Worker;
 
 #Q-7. Write An SQL Query To Print The DEPARTMENT From Worker Table After Removing White Spaces From The Left Side.
 select ltrim(department) from Worker;
 
 #Q-8. Write An SQL Query That Fetches The Unique Values Of DEPARTMENT From Worker Table And Prints Its Length.
 select distinct length(department) as length from Worker;
 
 #Q-9. Write An SQL Query To Print The FIRST_NAME From Worker Table After Replacing ‘A’ With ‘A’.
 select replace(first_name,'a','A') from Worker;
 
 #Q-10. Write An SQL Query To Print The FIRST_NAME And LAST_NAME From Worker Table Into A Single Column COMPLETE_NAME. A Space Char Should Separate Them.
 select concat(first_name,' ',last_name) as complete_name from Worker;
 
 #Q-11. Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending.
 select * from Worker 
 order by first_name ASC;
 
 # Q-12. Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending And DEPARTMENT Descending.
 select * from Worker
 order by first_name ASC ,department DESC;
 
 #Q-13. Write An SQL Query To Print Details For Workers With The First Name As “Vipul” And “Satish” From Worker Table.
 select * from Worker
 where first_name in ('Vipul','Satish');
 
 #Q-14. Write An SQL Query To Print Details Of Workers Excluding First Names, “Vipul” And “Satish” From Worker Table.
 select * from Worker
 where first_name not in ('Vipul','Satish');
 
 #Q-15. Write An SQL Query To Print Details Of Workers With DEPARTMENT Name As “Admin”.
 select * from Worker
 where department like "Admin%";
 
 #Q-16. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Contains ‘A’.
 select * from Worker
 where first_name like "%a%";
 
 #Q-17. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘A’.
select * from Worker
where first_name like "%a";

#Q-18. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘H’ And Contains Six Alphabets.
select * from Worker
where first_name like "______H"; 

#Q-19. Write An SQL Query To Print Details Of The Workers Whose SALARY Lies Between 100000 And 500000.
select * from Worker
where SALARY between 100000 and 500000;

# Q-20. Write An SQL Query To Print Details Of The Workers Who Have Joined In Feb’2014.
select * from Worker 
where year(joining_date) = 2014 and month(joining_date) = 2;

#Q-21. Write An SQL Query To Fetch The Count Of Employees Working In The Department ‘Admin’.
select * from Worker
where department = 'Admin';

#Q-22. Write An SQL Query To Fetch Worker Names With Salaries >= 50000 And <= 100000.
select concat(first_name,' ',last_name) as full_name,salary
 from Worker
where salary>= 50000 and salary<=100000;

#Q-23. Write An SQL Query To Fetch The No. Of Workers For Each Department In The Descending Order.
SELECT 
    department, COUNT(worker_id) AS no_of_workers
FROM
    Worker
GROUP BY department
ORDER BY no_of_workers DESC;

# Q-24. Write An SQL Query To Print Details Of The Workers Who Are Also Managers.
SELECT DISTINCT W.FIRST_NAME, T.WORKER_TITLE
FROM Worker W
INNER JOIN Title T
ON W.WORKER_ID = T.WORKER_REF_ID
AND T.WORKER_TITLE in ('Manager');

select first_name, worker_title
from Worker w
INNER JOIN Title t
on w.worker_id = t.worker_ref_id
and t.worker_title in ('Manager');

#Q-25. Write An SQL Query To Fetch Duplicate Records Having Matching Data In Some Fields Of A Table.
SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*)
FROM Title
GROUP BY WORKER_TITLE, AFFECTED_FROM
HAVING COUNT(*) > 1;

#Q-26. Write An SQL Query To Show Only Odd Rows From A Table.
SELECT * FROM Worker WHERE MOD (WORKER_ID, 2) <> 0;

#Q-27. Write An SQL Query To Show Only Even Rows From A Table.
SELECT * FROM Worker WHERE MOD (WORKER_ID, 2) = 0;

#Q-28. Write An SQL Query To Clone A New Table From Another Table.
CREATE TABLE WorkerClone LIKE Worker;

#Q-29. Write An SQL Query To Fetch Intersecting Records Of Two Tables.


#Q-30. Write An SQL Query To Show Records From One Table That Another Table Does Not Have.
SELECT * FROM Worker
MINUS
SELECT * FROM Title;

#Q-31. Write An SQL Query To Show The Current Date And Time.
select curdate();
select now();

#Q-32. Write An SQL Query To Show The Top N (Say 10) Records Of A Table.
select * from Worker 
order by salary DESC
LIMIT 10;

#Q-33. Write An SQL Query To Determine The Nth (Say N=5) Highest Salary From A Table.
SELECT Salary FROM Worker ORDER BY Salary DESC LIMIT n-1,1;

#Q-35. Write An SQL Query To Fetch The List Of Employees With The Same Salary.
select w.worker_id,w.first_name,w.salary
from Worker w, Worker w1
where w.salary = w1.salary and w.worker_id != w1.worker_id;

#Q-36. Write An SQL Query To Show The Second Highest Salary From A Table.
Select max(Salary) from Worker 
where Salary not in (Select max(Salary) from Worker);

#Q-39. Write An SQL Query To Fetch The First 50% Records From A Table.
SELECT *
FROM WORKER
WHERE WORKER_ID <= (SELECT count(WORKER_ID)/2 from Worker);

#Q-40. Write An SQL Query To Fetch The Departments That Have Less Than Five People In It.
SELECT DEPARTMENT, COUNT(WORKER_ID) as 'Number of Workers' FROM Worker GROUP BY DEPARTMENT HAVING COUNT(WORKER_ID) < 5;

#Q-41. Write An SQL Query To Show All Departments Along With The Number Of People In There.
SELECT DEPARTMENT, COUNT(DEPARTMENT) as 'Number of Workers' FROM Worker GROUP BY DEPARTMENT;

#Q-42. Write An SQL Query To Show The Last Record From A Table.
select * from Worker where worker_id = (select max(worker_id) from Worker);

#Q-43. Write An SQL Query To Fetch The First Row Of A Table.
Select * from Worker where WORKER_ID = (SELECT min(WORKER_ID) from Worker);

#Q-44. Write An SQL Query To Fetch The Last Five Records From A Table.
SELECT * FROM Worker WHERE WORKER_ID <=5
UNION
SELECT * FROM (SELECT * FROM Worker W order by W.WORKER_ID DESC) AS W1 WHERE W1.WORKER_ID <=5;

#Q-45. Write An SQL Query To Print The Name Of Employees Having The Highest Salary In Each Department.
SELECT t.DEPARTMENT,t.FIRST_NAME,t.Salary from(SELECT max(Salary) as TotalSalary,DEPARTMENT from Worker group by DEPARTMENT) as TempNew 
Inner Join Worker t on TempNew.DEPARTMENT=t.DEPARTMENT 
 and TempNew.TotalSalary=t.Salary;
 
 #Q-46. Write An SQL Query To Fetch Three Max Salaries From A Table.
 SELECT distinct Salary from worker a WHERE 3 >= (SELECT count(distinct Salary) from worker b WHERE a.Salary <= b.Salary) order by a.Salary desc;
 
 #Q-48. Write An SQL Query To Fetch Nth Max Salaries From A Table
 SELECT distinct Salary from worker a WHERE n >= (SELECT count(distinct Salary) from worker b WHERE a.Salary <= b.Salary) order by a.Salary desc;
 
 #Q-49. Write An SQL Query To Fetch Departments Along With The Total Salaries Paid For Each Of Them.
 SELECT DEPARTMENT, sum(Salary) from worker group by DEPARTMENT;
 
 #Q-50. Write An SQL Query To Fetch The Names Of Workers Who Earn The Highest Salary.
 SELECT FIRST_NAME, SALARY from Worker WHERE SALARY=(SELECT max(SALARY) from Worker);






	


