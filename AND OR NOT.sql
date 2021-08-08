CREATE TABLE student_list(
  roll_no int(10),
  name varchar(20),
  age int(5),
  sport varchar(20),
  degree varchar(20)
);

INSERT INTO student_list(roll_no,name,age,sport,degree) VALUES(1,'srikanth',19,'cricket_bat','BE');
INSERT INTO student_list(roll_no,name,age,sport,degree) VALUES(2,'sridhar',21,'cricket_bowl','BE');
INSERT INTO student_list(roll_no,name,age,sport,degree) VALUES(3,'karthick',20,'tennis','BCOM');
INSERT INTO student_list(roll_no,name,age,sport,degree) VALUES(4,'ajay','20','carrom','MBBS');

SELECT *
FROM student_list
WHERE age>=18 AND degree='BE'; 

SELECT *
FROM student_list
WHERE degree='BE' OR sport='tennis';

SELECT * 
FROM student_list
WHERE degree='BE' and (sport='cricket_bat' or sport='cricket_bowl')

SELECT * 
FROM student_list
WHERE NOT degree='BE' AND NOT sport='cricket'


