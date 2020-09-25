CREATE DATABASE Test1

CREATE TABLE GoalCatalog(
GoalID INT Identity(1,1) Primary Key,
GoalName varchar (50) not null, 
GoalImageLink varchar (150),
GoalCategory varchar (50) not null,
GoalStatus varchar (50) not null,
Career varchar(50),
Trade varchar(50),  
Venture varchar(50),
/*BusOppID int not null foreign key references BusinessOpportunities(BusOppID)*/
);

Create Table GoalBusinessOpp(
BusOppID int not null foreign key references BusinessOpportunities(BusOppID),
GoalID int not null foreign key references GoalCatalog(GoalID),
);

Insert into Endeavor(  EName, EStatus,Category)
Values( 'Real Estate Development', 'Active', 'Management');
Insert into Endeavor(  EName, EStatus,Category)
Values( 'Consultant', 'Active', 'Management');

CREATE TABLE BusinessOpportunities(
BusOppId INT Identity(1,1) Primary Key,
BusName varchar(50) not null, 
BusVideoLink varchar(50),
BusDescription varchar(250) not null,
BusDetails varchar(250) not null,
/*GoalID int not null foreign key references GoalCatalog(GoalID)*/
);

select * from BusinessOpportunities; 
drop table BusinessOpportunities
drop table goalcatalog
drop table BusinessOpportunities
drop table Base64Images
drop table ImageTable
select * from Endeavor;
select * from venture;
select * from Base64Images;

CREATE TABLE Microtasks(
MicrotaskID INT Identity(1,1) Primary Key,
ManagedID int not null foreign key references GoalCatalog(GoalID)
BusName varchar(50) not null, 
BusVideoLink varchar(50),
BusDescription varchar(250) not null,
BusDetails varchar(250) not null,
/*GoalID int not null foreign key references GoalCatalog(GoalID)*/
);



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

