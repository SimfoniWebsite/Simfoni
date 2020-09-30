CREATE DATABASE Test1

CREATE TABLE Endeavor(
EndeavorID INT Identity(1,1) Primary Key,
EName varchar (150) not null,
EStatus varchar (40) not null,
Category varchar(60),
);

Insert into Endeavor(  EName, EStatus,Category)
Values( 'Real Estate Development', 'Active', 'Management');
Insert into Endeavor(  EName, EStatus,Category)
Values( 'Consultant', 'Active', 'Management');

CREATE TABLE Venture(
VentureID INT Identity(1,1) Primary Key,
/*Base64Content varchar(max) not null,*/
VenFileName varchar(255) not null,
Image varbinary(max),
);

CREATE TABLE Base64Images(
FileID INT Identity(1,1) Primary Key,
Base64Content varchar(max) not null,
FileName varchar(255) not null,
);

create table VentureEnd(
VentureID int not null foreign key references Venture(VentureID),
EndeavorID int not null foreign key references Endeavor(EndeavorID),
);

drop table venture
drop table endeavor
select * from Endeavor;
select * from venture;
select * from Base64Images;
drop table Base64Images

Insert into Base64Images values((select * from Openrowset(Bulk N'C:\db\Building2.jpg',SINGLE_BLOB)as SRC),Building2.jpg);

Insert into Venture values(1,(select * from Openrowset(Bulk N'C:\img\max-bottinger-Gup8MCvSsf0-unsplash.jpg',SINGLE_BLOB)as site));

Insert into Base64Images values((select * from Openrowset(Bulk N'C:\db\Building2.jpg',SINGLE_BLOB)as site),Building2.jpg);

CREATE TABLE ImageTable(
    Id int,
    Name varchar(50),
    Photo varbinary(max) 
);

select * from ImageTable;

INSERT INTO ImageTable (Id, Name, Photo) 
SELECT 1, 'Building2.jpg', BulkColumn 
FROM Openrowset( Bulk 'C:\Users\joell\OneDrive\Documents\BVC\Simfoni\website\Simfoni\img\Building2.jpg', Single_Blob) as image;


select *
from Endeavor JOIN Venture
ON Endeavor.endeavorID = Venture.VentureID;

select Ename, EStatus,Category, image
from Endeavor JOIN Venture
ON Endeavor.endeavorID = Venture.VentureID;

select * from ventureEnd;

CREATE TABLE BusinessOpportunities (
    BusOppId INT Identity(1,1) Primary Key,
    /*BusName varchar(50),*/ 
	VenFileName int not null foreign key references
	Venture(VenFileName),
	BusVideoLink varchar(50),
	BusDescription varchar(250),
    Details varchar(250)
);

select * from BusinessOpportunities; 

drop table BusinessOpportunities
