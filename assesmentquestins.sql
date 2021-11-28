/*Exercises: PLSQL

If grade is A, then Appraisal is Excellent.

If grade is B, then Appraisal is Very Good.

If grade is C, then Appraisal is Good.

If grade is anything else, then Appraisal is Poor

1. Create a standalone block using If condition to display appraisal based on input grade.

2. Create a standalone block using CASE statement to display appraisal based on input grade.

3. Create a standalone block using DECODE to display appraisal based on input grade.

4. Create a standalone block to display the scope of a variable within and outside of a block. 
*/

create table Grade(
  grade  INT NOT NULL AUTO_INCREMENT,
  
    PRIMARY KEY (grade)
)

##1. Create a standalone block using If condition to display appraisal based on input grade.
DECLARE
  grade CHAR(1);
BEGIN
  grade := 'B';
  IF grade = 'A' THEN
    DBMS_OUTPUT.PUT_LINE('Excellent');
  ELSIF grade = 'B' THEN
    DBMS_OUTPUT.PUT_LINE('Very Good');
  ELSIF grade = 'C' THEN
    DBMS_OUTPUT.PUT_LINE('Good');
  ELSIF grade = 'D' THEN
    DBMS_OUTPUT. PUT_LINE('Fair');
  ELSIF grade = 'F' THEN
    DBMS_OUTPUT.PUT_LINE('Poor');
  ELSE
    DBMS_OUTPUT.PUT_LINE('No such grade');
  END IF;
ENd;
/

## 2. Create a standalone block using CASE statement to display appraisal based on input grade.
DECLARE
  grade CHAR(1);
BEGIN
  grade := 'B';
  CASE grade
    WHEN 'A' THEN DBMS_OUTPUT.PUT_LINE('Excellent');
    WHEN 'B' THEN DBMS_OUTPUT.PUT_LINE('Very Good');
    WHEN 'C' THEN DBMS_OUTPUT.PUT_LINE('Good');
    WHEN 'D' THEN DBMS_OUTPUT.PUT_LINE('Fair');
    WHEN 'F' THEN DBMS_OUTPUT.PUT_LINE('Poor');
    ELSE DBMS_OUTPUT.PUT_LINE('No such grade');
  END CASE;
END;
/

##3. Create a standalone block using DECODE to display appraisal based on input grade.
##DECODE (expression , search, result [, search , result]... [, default])


##4. Create a standalone block to display the scope of a variable within and outside of a block. 





