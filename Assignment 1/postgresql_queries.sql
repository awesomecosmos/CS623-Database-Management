CREATE TABLE Student(studid INTEGER PRIMARY KEY , name VARCHAR(20), address VARCHAR(30), status CHAR(1));

CREATE TABLE Transcript(studid)INTEGER, crscode VARCHAR(5), semester VARCHAR(15), grade VARCHAR(2), PRIMARY KEY (studid, crscode, semester));

