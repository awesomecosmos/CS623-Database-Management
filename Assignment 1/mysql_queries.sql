CREATE TABLE Student(studid INTEGER PRIMARY KEY , name VARCHAR(20), address VARCHAR(30), status CHAR(1));

CREATE TABLE Transcript(studid INTEGER, crscode CHAR(5), semester CHAR(15), grade CHAR(2), PRIMARY KEY (studid, crscode, semester));

INSERT INTO student (studid, name, address, status)
VALUES
(1, 'Aayushi Verma', 'Providence, RI', 'E'), /* 'E' means Enrolled */
(2, 'John Smith', 'Manhattan, NY', 'N'), /* 'N' means Not Enrolled */
(3, 'Jane Brown', 'Boston, MA', 'E');

INSERT INTO Transcript (studid, crscode, semester, grade)
VALUES
(1, 'CS623', 'SummerI2022', 'A'),
(2, 'CS623', 'SummerI2022', 'A-'), 
(3, 'CS619', 'SummerII2022', 'A');