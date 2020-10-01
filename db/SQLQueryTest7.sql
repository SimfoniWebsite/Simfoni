Create database Test3
Go

--This are the tables for Goal Catalog

CREATE TABLE GoalsCatalog(
BusOppID INT Identity  Primary Key,
BusName varchar (50) not null,
BusImageLink varchar (250) not null,
BusVideoLink varchar(250) not null,
BusCategory varchar (50) not null,
BusStatus varchar (50) not null,

--TradeID int not null foreign Key references Trade(TradeID),
--VentureID int not null foreign key references Venture(VentureID),

--ManagedID int not null foreign key references  ManagedProfile(ManagedID) 
);
drop table GoalsCatalog

alter table GoalsCatalog
ADD VENTUREID int   foreign key references Trade(TradeID);

Foreign Key(
drop table GoalsCatalog
drop table BusinessOpportunities
drop table Venture
drop table Trade
drop table Career
drop table Registration
drop table RegGoals
drop table Microtasks
drop table LeverageLibrary
drop table ManagedProfile

select * from GoalsCatalog

CREATE TABLE Venture (
VentureID INT ,
VentureName varchar(50) not null,
Primary Key(VentureID),

);
drop table Venture

alter table venture
add BusOppID int not null foreign key references  GoalsCatalog(BusOppID);

select * from Venture

CREATE TABLE Trade (
TradeID INT,
BusOppID int,
Primary Key(TradeID),
TradeName varchar(50) not null, 
 foreign key (BusOppID) references GoalsCatalog(BusOppID)
);
drop table Trade

alter table trade
add BusOppID int not null foreign key references  GoalsCatalog(BusOppID);

CREATE TABLE Career (
CareerID INT, 
BusOppID int,
Primary Key (CareerID),
CareerName varchar(50) not null,
foreign key (BusOppID) references GoalsCatalog(BusOppID)

);
drop table Career

alter table career
add BusOppID int not null foreign key references  GoalsCatalog(BusOppID);



drop table Registration

CREATE TABLE Registration (
EntrepreneurID INT Identity(1,1) Primary Key,
Username varchar(50) not null,
Password varchar(50) not null,
FName varchar(50) not null, 
LName varchar(50) not null,
PhoneNumber varchar(12) not null,
Email varchar(50),
MailingAddress varchar(150) not null,
City varchar(50) not null,
State varchar(20) not null,
ZipCode varchar (12)not null,
DateOfBirth date,
Education varchar(250) not null,
WorkHistory varchar(250) not null,
EmploymentStatus varchar(50)not null,
ManagedProfileServices varchar (50)not null,
Gmail varchar(150) not null,
Linkedin varchar(150) not null,

);
drop table registration

alter table Registration
add ManagedID int not null foreign key references ManagedProfile(ManagedID);

CREATE TABLE ManagedProfile(
 ManagedID INT Identity(1,1) Primary Key,
 EntrepreneurID int not null foreign key references Registration(EntrepreneurID),
 LibraryID int not null foreign key references LeverageLibrary(LibraryID),
 MicrotaskID int not null foreign key references Microtasks(MicrotaskID),
 BusOppID INT not null foreign key references GoalsCatalog(BusOppID),
 AccountantLink varchar (250) not null,
 InsuranceLink varchar (250) not null,
 LegalLink varchar(250) not null,
 BudgetLink varchar(250) not null
);
select * from ManagedProfile
drop table ManagedProfile

CREATE TABLE Microtasks (
MicrotaskID INT Identity(1,1) Primary Key,
/*ManagedID int not null foreign key references ManagedProfile(ManagedID),*/
MicName varchar(50) not null,
MicType varchar(50) not null, 
MicImageLink varchar(250) not null, 
DescriptionImage varchar (150) not null,
MicCategory varchar(50) not null
);

alter table Microtasks
add ManagedID int not null foreign key references ManagedProfile(ManagedID);

CREATE TABLE LeverageLibrary (
LibraryID INT Identity(1,1) Primary Key,
/*ManagedID int not null foreign key references ManagedProfile(ManagedID),*/
LibName varchar(50),
LibCategory varchar(50) not null,  /*free or paid*/
LibFreeImageLink varchar (250) not null,
DescriptionFree varchar(50) not null,
LibAdviceImageLink varchar (250) not null,
DescriptionAdvice varchar(50) not null,
LibActionImageLink varchar (250) not null,
DescriptionAction varchar(50) not null
);
drop table LeverageLibrary

alter table LeverageLibrary
add ManagedID int not null foreign key references ManagedProfile(ManagedID);

select * from GoalsCatalog;
Update GoalsCatalog
set
VENTUREID = 3
where
BusOppID = 3;
delete from GoalsCatalog where BusOppID =1;
select * from venture;
delete from venture
Insert into GoalsCatalog ( CareerID,TradeID,VentureID)
Values(1,1,1);

Insert into Venture ( VentureID, VentureName,BusOppID)
Values( 3,'Example_shopping',3);

select * from trade;
Insert into Trade ( TradeID, TradeName,BusOppID)
Values( 1,'Example_stocks',1);
Insert into Trade ( TradeID, TradeName,BusOppID)
Values( 2,'Example_Rentas',2);
Insert into Trade ( TradeID, TradeName,BusOppID)
Values( 3,'Example_Business',3);
select * from career;
Insert into Career ( CareerID, CareerName,BusOppID)
Values( 1,'Example_MBA',1);
Insert into Career ( CareerID, CareerName,BusOppID)
Values( 2,'Example_Medicine',2);
Insert into Career ( CareerID, CareerName,BusOppID)
Values( 3,'Example_Geology',3);
SELECT * FROM REGISTRATION;

INSERT INTO  REGISTRATION ( Username,Password, FName,LName,PhoneNumber,Email,MailingAddress,City,State,ZipCode,DateOfBirth,Education,WorkHistory, EmploymentStatus,ManagedProfileServices,Gmail,Linkedin)

Values ( 'Example_3245','111','Angela','Morgan','xxxxxxx','yyy@hotmail.com','xxxHortonDr','Calgary','Alberta','3P0Y6RE', '1974-06-17','Technician','active','active','insurance','luis@gmail.com','luisMorgar@linkedin');
INSERT INTO  REGISTRATION ( Username,Password, FName,LName,PhoneNumber,Email,MailingAddress,City,State,ZipCode,DateOfBirth,Education,WorkHistory, EmploymentStatus,ManagedProfileServices,Gmail,Linkedin)

Values ( 'Example_3245','111','Angela','Morgan','xxxxxxx','yyy@hotmail.com','xxxHortonDr','Calgary','Alberta','3P0Y6RE', '1974-06-17','Technician','active','active','insurance','luis@gmail.com','luisMorgar@linkedin');


Insert into Endeavor(  EName, EStatus,Category)
Values( 'Real Estate Development', 'Active', 'Management');
Insert into Endeavor(  EName, EStatus,Category)
Values( 'Consultant', 'Active', 'Management');





drop table ManagedProfile
drop table endeavor
drop table Base64Images
drop table ImageTable
select * from Endeavor;
select * from venture;
select * from Base64Images;

/*CREATE TABLE Base64Images(
FileID INT Identity(1,1) Primary Key,
Base64Content varchar(max) not null,
FileName varchar(255) not null,
);*/

/*create table VentureEnd(
VentureID int not null foreign key references Venture(VentureID),
EndeavorID int not null foreign key references Endeavor(EndeavorID),
);*/


/*
Insert into Base64Images values((select * from Openrowset(Bulk N'C:\db\Building2.jpg',SINGLE_BLOB)as SRC),Building2.jpg);

Insert into Venture values(1,(select * from Openrowset(Bulk N'C:\img\max-bottinger-Gup8MCvSsf0-unsplash.jpg',SINGLE_BLOB)as site));

Insert into Base64Images values((select * from Openrowset(Bulk N'C:\db\Building2.jpg',SINGLE_BLOB)as site),Building2.jpg);
*/
/*
CREATE TABLE ImageTable(
    Id int,
    Name varchar(50),
    Photo varbinary(max) 
);
select * from ImageTable;
INSERT INTO ImageTable (Id, Name, Photo) 
SELECT 1, 'Building2.jpg', BulkColumn 
FROM Openrowset( Bulk 'C:\db\Building2.jpg', Single_Blob) as image;
*/
/*
select *
from Endeavor JOIN Venture
ON Endeavor.endeavorID = Venture.VentureID;
select Ename, EStatus,Category, image
from Endeavor JOIN Venture
ON Endeavor.endeavorID = Venture.VentureID;
select * from ventureEnd;
*/

