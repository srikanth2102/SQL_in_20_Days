CREATE TABLE student_list(
  roll_no int(10),
  name varchar(20),
  age int(5),
  sport varchar(20),
  degree varchar(20)
);

INSERT INTO student_list(roll_no,name,age,sport,degree) VALUES(1,'srikanth',19,'cricket','BE');
INSERT INTO student_list(roll_no,name,age,sport,degree) VALUES(2,'sridhar',21,'cricket','BE');
INSERT INTO student_list(roll_no,name,age,sport,degree) VALUES(3,'karthick',20,'tennis','BCOM');
INSERT INTO student_list(roll_no,name,age,sport,degree) VALUES(4,'ajay','20','carrom','MBBS');

CREATE TABLE cricket(
  roll_no int(10),
  name varchar(20),
  age int(5),
  degree varchar(20)
);

INSERT INTO cricket
SELECT roll_no,name,age,degree
FROM student_list
WHERE sport='cricket';


SELECT *
FROM cricket;

