use master
GO
CREATE DATABASE Test10
GO
USE Test10
GO
--Create Tables for the database

CREATE TABLE Opportunities(
OppID INT Identity(1,1)  Primary Key,
OppName varchar (50) not null,
OppCategory varchar (50) not null,
OppStatus varchar (50) not null,
OppDescription varchar(250) not null,
OppDetails varchar(250) not null
)
GO

alter table Opportunities
ADD CareerID int foreign key references Trade(TradeID)
GO

alter table Opportunities
ADD TradeID int foreign key references Trade(TradeID)
GO

alter table Opportunities
ADD VentureID int  foreign key references Trade(TradeID)
GO

INSERT INTO Opportunities ( OppName,OppCategory,OppStatus,OppDescription,OppDetails)
Values( 'Computer','Managment','Active','This is a great opportunity','we offer the best values for an entrepreneur')
GO

CREATE TABLE Venture (
VentureID INT Identity(1,1),
OppID int,
VentureName varchar(50) not null,
Primary Key(VentureID),
VentureImage  varbinary(max) not null,
)
GO
drop table venture
alter table venture
add OppID int foreign key references  Opportunity(OppID);
GO

select * from venture

INSERT INTO Venture (OppID,VentureName,VentureImage)
Select 1, 'Hotels', BulkColumn FROM Openrowset(Bulk 'C:\Users\andre\Desktop\Simfoni\img\questions.jpg', Single_Blob) as image;
GO

CREATE TABLE Trade (
TradeID INT Identity(1,1),
OppID int,
Primary Key(TradeID),
TradeName varchar(50) not null,
TradeImage  varbinary(max) not null,
)
GO

alter table trade
add OppID int not null foreign key references  Opportunity(OppID);
GO

INSERT INTO Trade ( OppID,TradeName,TradeImage)
Select  1,'Stocks', BulkColumn FROM Openrowset(Bulk 'C:\Users\andre\Desktop\Simfoni\img\questions.jpg', Single_Blob) as image;
GO


CREATE TABLE Career (
CareerID INT identity(1,1), 
OppID int,
Primary Key (CareerID),
CareerName varchar(50) not null,
CareerImage  varbinary(max) not null,
)
GO

alter table career
add OppID int not null foreign key references Opportunity(OppID); 
GO

INSERT INTO Career ( OppID,CareerName,CareerImage)
Select  1,'Computers', BulkColumn FROM Openrowset(Bulk 'C:\Users\andre\Desktop\Simfoni\img\questions.jpg', Single_Blob) as image;
GO

select * from career
select * from venture
select * from Opportunities
select * from Trade













