CREATE TABLE Course(course_Num varchar(255), title varchar(255), prereq_Course varchar(255), units int, textbook varchar(255), dep_Num int, PRIMARY KEY (course_Num);

CREATE TABLE Professor(SSN int, title varchar(255), salary int, digit_7_Num int, area_Code int, degree varchar(255), first_Name varchar(255), last_Name varchar(255), street_Addr varchar(255), city varchar(255), state varchar(255), zip_Code int, sex varchar(255), PRIMARY KEY (SSN));

CREATE TABLE Department (department_Num int, name varchar(255), office_Location varchar(255), digit_7_Num int, area_Code int, chairman_SSN int, PRIMARY KEY(department_Num));

CREATE TABLE Section (section_Num varchar(255), classroom varchar(255), start_Time varchar(255), end_Time varchar(255), meeting_Day varchar(255), number_Of_Seats int, cour_Num int, prof_SSN int, PRIMARY KEY(section_Num));

CREATE TABLE Student_Records(CWID int, first_Name varchar(255), last_Name varchar(255), street_Addr varchar(255), city varchar(255), state varchar(255), zip_Code int, digit_7_Num int, area_Code int, dep_Maj_Num int, dep_Min_Num int, PRIMARY KEY(CWID));

CREATE TABLE Enrollment_Records(grade varchar(4), stu_CWID int, sec_Num varchar(255));

INSERT INTO Professor VALUES(1234, "Doctor", 123456, 1234567, 123, "Computer Science", "Bob", "Jones", "12345 Lincoln Avenue", "Los Angeles", "California", 12345, "Male");

INSERT INTO Professor VALUES(5678, "Doctor", 312412, 7654321, 321, "Math", "Jack", "White", "12345 Main Street", "El Monte", "California", 12345, "Male");

INSERT INTO Professor VALUES(1357, "Doctor", 999999, 8764536, 789, "English", "Jane", "Doe", "31321 Lincoln Avenue", "Los Angeles", "California", 67890, "Female");

INSERT INTO Department VALUES(1, "Computer Science", "L Building", 3214123, 989, 1234);

INSERT INTO Department VALUES(2, "English", "E Building", 1234152, 989, 1357);

INSERT INTO Department Values(3, "Mathematics", "M Building", 4152162, 989, 5678);

INSERT INTO Course VALUES(“CPSC151”, "CPSC", NULL, 5, NULL, 1);

INSERT INTO Course VALUES(“CPSC332”, "CPSC", “CPSC151”, 5, NULL, 1);

INSERT INTO Course VALUES(“ENGL100”, "ENGL", NULL, 3, NULL, 2);

INSERT INTO Course VALUES(“ENGL200”, "ENGL", “ENGL200”, 3, NULL, 2);

INSERT INTO Course VALUES(“MATH100”, “MATH", NULL, 4, NULL, 2);

INSERT INTO Section VALUES ('MATH100-1', 'M43', '12:00PM', '2:00PM', 'MWF', 40, “MATH100”, 5678);

INSERT INTO Section VALUES("CPSC151-1", "L32", "10:30AM", "12:40PM", "MWF", 30, “CPSC151”, 1234);

INSERT INTO Section VALUES("CPSC151-2", "L32", "1:00PM", "3:00PM", "MWF", 30, “CPSC151”, 1234);

INSERT INTO Section VALUES("CPSC332-1", "L33", "12:00PM", "2:00PM", "TTH", 30, “CPSC332”, 1234);

INSERT INTO Section VALUES("ENGL100-1", "E33", "9:00AM", "11:00AM", "TTH", 50, “ENGL100”, 1357);

INSERT INTO Section VALUES("ENGL100-2", "E33", "12:00PM", "2:00PM", "TTH", 50, “ENGL100”, 1357);

INSERT INTO Section VALUES("ENGL200-1", "E33", "12:00PM", "2:00PM", "MW", 50, “ENGL200”, 1357);

INSERT INTO Student_Records VALUES(1234, "John", "Smith", "1234 Maple Street", "Los Angeles", "California", 12345, 1234567, 890, 1, NULL);

INSERT INTO Student_Records VALUES(3214, "Link", "Doe", "1234 Main Ave", "Los Angeles", "California", 43125, 4142113, 131, 2, 1);

INSERT INTO Student_Records VALUES(4512, "Jack", "Smith", "4125 Santa Anita Ave", "El Monte", "California", 12341, 4241415, 313, 2, NULL);

INSERT INTO Student_Records VALUES(1279, "May", "Day", "4167 Santa Anita Ave", "El Monte", "California", 12346, 3131412, 141, 2, NULL);

INSERT INTO Student_Records VALUES(9582, "Private", "Ryan", "3157 Maple Street", "Los Angeles", "California", 45128, 3147582, 767, 1, 2);

INSERT INTO Student_Records VALUES(0291, "Sample", "Text", "1245  Main Street", "San Diego", "California", 29183, 0281739, 091, 1, NULL);

INSERT INTO Student_Records VALUES(1029, "Lorum", "Ipsum", "1921 Sample Street", "Fresno", "California", 19231, 1929134, 314, 2, NULL);

INSERT INTO Student_Records VALUES(1000, "Tiger", "Tiger", "1513 Tora Street", "Riverside", "California", 90124, 9999999, 999, 1, NULL);

INSERT INTO Enrollment_Records VALUES('A', 1234, "CPSC151-1");

INSERT INTO Enrollment_Records VALUES('A', 4512, "CPSC151-1");

INSERT INTO Enrollment_Records VALUES('B', 1279, "CPSC151-1");

INSERT INTO Enrollment_Records VALUES('B', 9582, "CPSC151-1");

INSERT INTO Enrollment_Records VALUES('B', 3214, "CPSC151-1");

INSERT INTO Enrollment_Records VALUES('C', 0291, "CPSC151-2");

INSERT INTO Enrollment_Records VALUES('C', 1029, "CPSC151-2");

INSERT INTO Enrollment_Records VALUES('A', 1000, "CPSC151-2");

INSERT INTO Enrollment_Records VALUES('A', 1000, "ENGL100-1");

INSERT INTO Enrollment_Records VALUES('B', 1029, "ENGL200-1");

INSERT INTO Enrollment_Records VALUES('C', 4512, "ENGL200-1");

INSERT INTO Enrollment_Records VALUES('A', 4512, "ENGL100-1");

INSERT INTO Enrollment_Records VALUES('A', 1029, "ENGL100-1");

INSERT INTO Enrollment_Records VALUES('A', 1234, "ENGL100-1");

INSERT INTO Enrollment_Records VALUES('B', 1000, "CPSC332-1");

INSERT INTO Enrollment_Records VALUES('B', 4512, "CPSC151-1");

INSERT INTO Enrollment_Records VALUES('B', 1234, "CPSC332-1");

INSERT INTO Enrollment_Records VALUES('B', 1000, "ENGL200-1");

INSERT INTO Enrollment_Records VALUES('A', 9582, "ENGL200-1");

INSERT INTO Enrollment_Records VALUES('A', 9582, "ENGL100-1");

INSERT INTO Enrollment_Records VALUES('A', 9582, "CPSC332-1");

INSERT INTO Enrollment_Records VALUES('A', 1279, "ENGL100-2");

INSERT INTO Enrollment_Records VALUES("D", 1234, "MATH100-1");

INSERT INTO Enrollment_Records VALUES("F", 4512, "MATH100-1");

--Professor Interface A Query:
SELECT S.section_Num, S.meeting_Day, S.start_Time, S.end_Time FROM Course C, Section S, Professor P WHERE P.SSN = (User Input Here) AND P.SSN = S.prof_SSN AND C.course_Num = S.cour_Num;

--Professor Interface B Query:
SELECT COUNT(*) FROM Section S, Course C, Enrollment_Records E WHERE S.section_Num = (User Input Here) AND C.course_Num = (User Input Here) AND E.grade = "A" AND E.sec_Num = S.section_Num;

--Student Interface A Query:
SELECT S.section_Num, S.classroom, S.meeting_Day, S.start_Time, S.end_Time, S.number_Of_Seats FROM Section S, Course C WHERE S.cour_Num = C.course_Num AND C.course_Num = (User Input Here);

--Student Interface B Query:
SELECT S.section_Num, E.grade FROM Section S, Course C, Enrollment_Records E, Student_Records SR  WHERE SR.CWID = (User Input Here) AND SR.CWID = E.stu_CWID AND S.section_Num = E.sec_Num AND C.course_Num = S.cour_Num;
