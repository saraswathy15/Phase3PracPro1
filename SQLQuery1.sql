create Database PracPro1
use PracPro1

-- Subjects table
create table Subjects (
    SubjectID int primary key,
    SubjectName nvarchar(50) not null
)

--Classes table
create table Classes (
    ClassID int primary key,
    ClassName nvarchar(50) not null
)

-- Students table
create table Student (
    StudentID int primary key,
    FirstName nvarchar(50) not null,
    LastName nvarchar(50) not null,
    DateOfBirth Date,
    ClassID int foreign key references Classes,
    SubjectID int foreign key references Subjects
)

insert into Subjects values
    (01, 'Tamil'),
    (02, 'English'),
    (03, 'Mathematics'),
    (04, 'Science'),
    (05, 'SocialScience'),
	(06, 'GeneralKnowledge'),
	(07, 'ComputerScience'),
	(08, 'Art and Craft');

insert into Classes values
    (101, 'Class A'),
    (102, 'Class B'),
    (103, 'Class C'),
    (104, 'Class D'),
    (105, 'Class E');

insert into Student values
    (1004, 'Charu', 'Srinivasan', '2001-06-15', 101, 04),
    (1212, 'Guru', 'Ganesan', '2004-03-18', 102, 05),
    (3131, 'Preetha', 'Balan', '2000-10-31', 103, 03),
    (2025, 'Naziya', 'Banu', '2000-09-26', 104, 08),
    (4042, 'Aarthi', 'Senthil', '2007-03-28', 105, 06);

create index SCid_index on Student(ClassID)

create index SSid_index on Student(SubjectID)

select * from Classes
select * from Student 
select * from Subjects


select StudentID, FirstName +' '+ LastName 'Student Name', DateOfBirth DOB, C.ClassID, c.ClassName, sub.SubjectID, sub.SubjectName 
from Student s 
join Classes c on s.ClassID = c.ClassID 
join Subjects sub on sub.SubjectID = s.SubjectID




