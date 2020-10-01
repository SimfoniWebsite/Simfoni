Use master;
Go

Create database Test5
Go

Use Test5
Go

--This are the tables for Goals Catalog

CREATE TABLE GoalsCatalog(
BusOppID INT Identity  Primary Key,
BusName varchar (50) not null,
BusImageLink varchar (250) not null,
BusVideoLink varchar(250) not null,
BusCategory varchar (50) not null,
BusStatus varchar (50) not null
)
GO

alter table GoalsCatalog
ADD VENTUREID int   foreign key references Trade(TradeID)
GO

CREATE TABLE Venture (
VentureID INT ,
VentureName varchar(50) not null,
Primary Key(VentureID)
)
GO

alter table venture
add BusOppID int not null foreign key references  GoalsCatalog(BusOppID)
GO

CREATE TABLE Trade (
TradeID INT,
BusOppID int,
Primary Key(TradeID),
TradeName varchar(50) not null, 
 foreign key (BusOppID) references GoalsCatalog(BusOppID)
)
GO

alter table trade
add BusOppID int not null foreign key references  GoalsCatalog(BusOppID);
GO

CREATE TABLE Career (
CareerID INT, 
BusOppID int,
Primary Key (CareerID),
CareerName varchar(50) not null,
foreign key (BusOppID) references GoalsCatalog(BusOppID)
)
GO

alter table career
add BusOppID int not null foreign key references  GoalsCatalog(BusOppID);
GO

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
Linkedin varchar(150) not null
)
GO

alter table Registration
add ManagedID int not null foreign key references ManagedProfile(ManagedID);
GO

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
)
GO

CREATE TABLE Microtasks (
MicrotaskID INT Identity(1,1) Primary Key,
/*ManagedID int not null foreign key references ManagedProfile(ManagedID),*/
MicName varchar(50) not null,
MicType varchar(50) not null, 
MicImageLink varchar(250) not null, 
DescriptionImage varchar (150) not null,
MicCategory varchar(50) not null
)
GO

alter table Microtasks
add ManagedID int not null foreign key references ManagedProfile(ManagedID);
GO

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
)
GO

alter table LeverageLibrary
add ManagedID int not null foreign key references ManagedProfile(ManagedID);
GO













