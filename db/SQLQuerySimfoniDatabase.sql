--use master;
--GO
--CREATE DATABASE SimfoniDatabase
--GO
USE SimfoniDatabase;
GO

--Create Tables for the database
drop table Registration

CREATE TABLE Registration (
MemberID INT Identity(1,1) Primary Key,
Password varchar(50) not null,
FName varchar(50) not null, 
LName varchar(50) not null,
PhoneNumber varchar(12) not null,
Email varchar(150) not null,
MailingAddress varchar(150)  null,
City varchar(50) null,
State varchar(20) null,
ZipCode varchar (12) null,
DateOfBirth date null,
Education varchar(5000) null,
WorkHistory varchar(5000) null,
EmploymentStatus varchar(50)null,
ManagedProfileServices varchar (50)null,
);
GO

INSERT INTO Object( ObjectName,ObjectRank)
Values('$1,000,000', 239),
('$100,000', 238),
('per year',237),
('$10,000', 237),
('$100', 236),
('per week',235),
('$10',235),
('per day',234),
('Start',233),
('mental health counselor',233),
('a pest control company',232),
('within the',231),
('next three years',230),
('management analyst',230),
('Save',229),
('dental assistant',229),
('$1,000',228),
('cartographer',228),
('per month',227),
('message therapist',227),
('Create',226),
('Computer Systems Administrator',226),
('by',225),
('a budget',225),
('Personal Care Aide',225),
('next year',224),
('Architect',224),
('Begin',223),
('Computer Network Architect',223),
('Improve',222),
('Landscaping',222),
('Accelerate',221),
('Construction Manager',221),
('next quarter',220),
('Medical Records Technician',220),
('Specific Date',219),
('Actuary',219),
('Computer Systems Analyst',218),
('Medical Assistant',217),
('Therapist',216),
('Lawyer',215),
('Social and Community Service Manager',214),
('Environmental Engineer',213),
('Podiatrist',212),
('Industrial Psychologist',211),
('Marketing Manager',210),
('Business Operations Manager',209),
('Market Research Analyst',208),
('Accountant',207),
('Diagnostic Medical Sonographer',206),
('Respiratory Therapist',205),
('Pilot',204),
('School Psychologist',203),
('Psychiatrist',202),
('Civil Engineer',201),
('Mechanical Engineer',200),
('Database Administrator',199),
('Psychologist',198),
('Occupational Therapist',197);
GO

CREATE TABLE ObjectPrimary(
ObjectID INT,
PrimaryID int,
primary key(ObjectID, PrimaryID),
foreign key(ObjectID) references Object(ObjectID),
foreign key(PrimaryID) references PrimaryTag(PrimaryID)
);
GO

INSERT INTO ObjectPrimary(ObjectID,PrimaryID) 
Values(1,1),
(2,1),
(3,2),
(4,3),
(5,1),
(6,2),
(7,1),
(8,2),
(9,4),
(10,5),
(11,5),
(12,6),
(13,2),
(14,5),
(15,4),
(16,5),
(17,1),
(18,5),
(19,2),
(20,5),
(21,4),
(22,5),
(23,6),
(24,5),
(25,5),
(26,2),
(27,5),
(28,4),
(29,5),
(30,4),
(31,5),
(32,4),
(33,5),
(34,2),
(35,5),
(36,2),
(37,5),
(38,5),
(39,5),
(40,5),
(41,5),
(42,5),
(43,5),
(44,5),
(45,5),
(46,5),
(47,5),
(48,5),
(49,5),
(50,5),
(51,5),
(52,5),
(53,5),
(54,5),
(55,5),
(56,5),
(57,5),
(58,5),
(59,5);
GO


CREATE TABLE PrimaryTag(
PrimaryID int identity(1,1) Primary Key,
TagName varchar(50),
);
GO

INSERT INTO PrimaryTag( TagName)
Values('dollars'),
('duration'),
('quantity'),
('verb'),
('subject'),
('conjunction');
GO

CREATE TABLE Object(
	ObjectID int IDENTITY(1,1) Primary key,
	ObjectName varchar (150) NOT NULL,
	ObjectRank int NULL,
);
GO


CREATE TABLE SelectedGoal(
SelectedID int identity(1,1) primary key,
Goals Varchar(250) Not Null,
);
GO

CREATE TABLE SelectedObject(
SelectObjectID int identity(1,1)Primary key,
ObjectID int,
MemberID int,
foreign key(ObjectID) references Object(ObjectID),
foreign key(MemberID) references Registration(MemberID)
);
GO

CREATE TABLE MemberGoal(
SelectedID int,
MemberID int,
primary key(SelectedID, MemberID),
foreign key(SelectedID) references SelectedGoal(SelectedID),
foreign key(MemberID) references Registration(MemberID)
);
GO
