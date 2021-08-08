/* creating a table with name student_list and specifying the column name and its type*/
CREATE TABLE student_list(
  name varchar(20),
  age int(5),
  degree varchar(20)
);

/* inserting rows into the table */
INSERT INTO student_list(name,age,degree) VALUES ('srikanth',19,'BE');
INSERT INTO student_list(name,age,degree) VALUES ('sridhar',21,'BE');
INSERT INTO student_list(name,age,degree) VALUES ('ajay',19,'MBBS');
INSERT INTO student_list(name,age,degree) VALUES ('abishek',19,'BCOM');
INSERT INTO student_list(name,age,degree) VALUES ('aadi',19,'BSC');

/* query to get all colums with age=19 */
SELECT * 
FROM student_list
WHERE age=19;

/* query to get name and degree columns with age between 18 and 20(inclusive) */
SELECT name,degree
FROM student_list
WHERE age BETWEEN 18 AND 20;

/* query to get all columns which has 'a' in the middle*/
SELECT *
FROM student_list
WHERE name LIKE '%a%';

/* query to get all colums where the degree starts with "B" */
SELECT * 
FROM student_list
WHERE degree LIKE 'B%';

/* deleting rows where degree='BE' */
DELETE
FROM student_list
WHERE degree='BE';

/* query to get all columns from table after deleting */
SELECT *
FROM student_list;

/* deleting rows in the column with name ajay*/
DELETE
FROM student_list
WHERE name='ajay';

/* viewing the table after deleting*/
SELECT *
FROM student_list;


