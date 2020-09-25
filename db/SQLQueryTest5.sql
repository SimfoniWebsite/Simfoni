CREATE DATABASE Test1
--This are the tables for Goal Catalog

CREATE TABLE GoalsCatalog(
BusOppID INT Identity(1,1) Primary Key,
BusName varchar (50) not null,
BusImageLink varchar (250) not null,
BusVideoLink varchar(250) not null,
BusCategory varchar (50) not null,
BusStatus varchar (50) not null,
Career varchar(50),
Trade varchar(50),
Venture varchar(50),
ManagedID int not null foreign key references  ManagedProfile(ManagedID)
);


INSERT Into GoalsCatalog /*(BusOppID, BusName, BusImageLink, BusVideoLink, BusCategory, BusStatus, Career, Trade, Venture, ManagedID)*/
Values (1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

insert into InvoiceCopy
values (32, 'AX-014-027', '6/21/2016', 434.58, 0.00, 0.00, 2, '07/8/2016', null);

alter table GoalsCatalog
add ManagedID int not null foreign key references  ManagedProfile(ManagedID);

alter table GoalsCatalog
drop column ManagedID;


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
VentureID INT Identity(1,1) Primary Key,
VentureName varchar(50) not null, 
/*BusOppID int not null foreign key references  GoalsCatalog(BusOppID)*/
);
drop table Venture

alter table venture
add BusOppID int not null foreign key references  GoalsCatalog(BusOppID);

select * from Venture

SET IDENTITY_INSERT Venture ON;
INSERT INTO Venture /*(VentureID, VentureName, BusOppID)*/
Values (default, 'Building2.jpg', 1);
SET IDENTITY_INSERT Venture Off;

CREATE TABLE Trade (
TradeID INT Identity(1,1) Primary Key,
TradeName varchar(50) not null, 
/*BusOppID int not null foreign key references  GoalsCatalog(BusOppID)*/
);
drop table Trade

alter table trade
add BusOppID int not null foreign key references  GoalsCatalog(BusOppID);

CREATE TABLE Career (
CareerID INT Identity(1,1) Primary Key,
CareerName varchar(50) not null, 
/*BusOppID int not null foreign key references GoalsCatalog(BusOppID)*/
);
drop table Career

alter table career
add BusOppID int not null foreign key references  GoalsCatalog(BusOppID);

CREATE TABLE RegGoals(
RegGoalsID INT Identity(1,1) Primary Key,
BusOppID int not null foreign key references GoalsCatalog(BusOppID),
EntrepreneurID int not null foreign key references Registration(EntrepreneurID)
);

drop table Registration

CREATE TABLE Registration (
EntrepreneurID INT Identity(1,1) Primary Key,
Username varchar(50),
Password varchar(50),
FName varchar(50) not null, 
LName varchar(50) not null,
PhoneNumber varchar(12),
Email varchar(50),
MailingAddress varchar(150),
City varchar(50),
State varchar(20),
ZipCode varchar (12),
DateOfBirth date,
Education varchar(250),
WorkHistory varchar(250),
EmploymentStatus varchar(50),
ManagedProfileServices varchar (50),
Gmail varchar(150),
Linkedin varchar(150),
/*ManagedID int not null foreign key references ManagedProfile(ManagedID)*/
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





/* XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

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

