 USE [master]
GO
/****** Object:  Database [Test1]    Script Date: 2020-09-24 8:22:08 PM ******/
CREATE DATABASE [Test1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Test1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Test1.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Test1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Test1_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Test1] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Test1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Test1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Test1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Test1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Test1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Test1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Test1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Test1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Test1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Test1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Test1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Test1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Test1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Test1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Test1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Test1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Test1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Test1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Test1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Test1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Test1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Test1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Test1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Test1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Test1] SET  MULTI_USER 
GO
ALTER DATABASE [Test1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Test1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Test1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Test1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Test1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Test1] SET QUERY_STORE = OFF
GO
USE [Test1]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Test1]
GO
/****** Object:  Table [dbo].[Career]    Script Date: 2020-09-24 8:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Career](
	[CareerID] [int] NOT NULL,
	[BusOppID] [int] NULL,
	[CareerName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CareerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoalsCatalog]    Script Date: 2020-09-24 8:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoalsCatalog](
	[BusOppID] [int] IDENTITY(1,1) NOT NULL,
	[BusName] [varchar](50) NOT NULL,
	[BusImageLink] [varchar](250) NOT NULL,
	[BusVideoLink] [varchar](250) NOT NULL,
	[BusCategory] [varchar](50) NOT NULL,
	[BusStatus] [varchar](50) NOT NULL,
	[CareerID] [int] NULL,
	[TradeID] [int] NULL,
	[VENTUREID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BusOppID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 2020-09-24 8:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[EntrepreneurID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[FName] [varchar](50) NOT NULL,
	[LName] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](12) NOT NULL,
	[Email] [varchar](50) NULL,
	[MailingAddress] [varchar](150) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](20) NOT NULL,
	[ZipCode] [varchar](12) NOT NULL,
	[DateOfBirth] [date] NULL,
	[Education] [varchar](250) NOT NULL,
	[WorkHistory] [varchar](250) NOT NULL,
	[EmploymentStatus] [varchar](50) NOT NULL,
	[ManagedProfileServices] [varchar](50) NOT NULL,
	[Gmail] [varchar](150) NOT NULL,
	[Linkedin] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EntrepreneurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trade]    Script Date: 2020-09-24 8:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trade](
	[TradeID] [int] NOT NULL,
	[BusOppID] [int] NULL,
	[TradeName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venture]    Script Date: 2020-09-24 8:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venture](
	[VentureID] [int] NOT NULL,
	[VentureName] [varchar](50) NOT NULL,
	[BusOppID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VentureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Career]  WITH CHECK ADD FOREIGN KEY([BusOppID])
REFERENCES [dbo].[GoalsCatalog] ([BusOppID])
GO
ALTER TABLE [dbo].[GoalsCatalog]  WITH CHECK ADD FOREIGN KEY([CareerID])
REFERENCES [dbo].[Career] ([CareerID])
GO
ALTER TABLE [dbo].[GoalsCatalog]  WITH CHECK ADD FOREIGN KEY([TradeID])
REFERENCES [dbo].[Trade] ([TradeID])
GO
ALTER TABLE [dbo].[GoalsCatalog]  WITH CHECK ADD FOREIGN KEY([VENTUREID])
REFERENCES [dbo].[Trade] ([TradeID])
GO
ALTER TABLE [dbo].[Trade]  WITH CHECK ADD FOREIGN KEY([BusOppID])
REFERENCES [dbo].[GoalsCatalog] ([BusOppID])
GO
ALTER TABLE [dbo].[Venture]  WITH CHECK ADD FOREIGN KEY([BusOppID])
REFERENCES [dbo].[GoalsCatalog] ([BusOppID])
GO
USE [master]
GO
ALTER DATABASE [Test1] SET  READ_WRITE 
GO

select * from Venture

create table sample(
sampleID int identity (100,1) not null primary key,
product varchar (50) not null,
);
select * from sample
insert into sample
values ('cup');

create table customer(
customerID int identity (1,1) not null primary key,
fName varchar (50) not null,
lName varchar (50) not null,
city varchar (50) not null,
dept varchar (50) not null,
);

 
select * from customer where dept = 'IT'
insert into customer
values ('Andres', 'Monsalvo', 'Calgary', 'IT');

select * from customer where customerID = 1;

update customer set fName = 'Lucas' where customerID = 2;

delete from customer where customerID = 14

select * from customer

select * from goalscatalog


insert into GoalsCatalog
values ('Real Estate', 'C:\Users\andre\Desktop\Simfoni\img\questions.jpg', 'C:\Users\andre\Desktop\Simfoni\img\questions.jpg', 'Management', 'Active', null, null, null); 

create table business(
[BusOppID] [int] IDENTITY(1,1) NOT NULL,
[BusName] [varchar](50) NOT NULL,
[BusImageLink] [varchar](250) NOT NULL,
);

insert into business
values ('Real Estate', 'C:\Users\andre\Desktop\Simfoni\img\questions.jpg'); 

select * from business

insert into business
values ('Real Estate', 'C:\Users\andre\Desktop\Simfoni\img\questions.jpg'); 

CREATE TABLE ImageTable(
    Id int,
    Name varchar(50),
    Photo varbinary(max) 
);

drop table ImageTable

select * from ImageTable;

INSERT INTO ImageTable (Id, Name, Photo) 
SELECT 1, 'questions.jpg', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\questions.jpg', Single_Blob) as image;

drop table Career

select * from Career

CREATE TABLE [dbo].[Career](
	[CareerID] [int] NOT NULL,
	[BusOppID] [int] NULL,
	[CareerName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED  
(
select * from Career
alter table Career
add CareerImage varbinary(max);

INSERT INTO Career (CareerId, BusOppID, CareerName, CareerImage) 
Select 1, null, 'Computers', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\questions.jpg', Single_Blob) as image;

alter table Career
add CareerImage varbinary(max);

INSERT INTO Career (CareerId, BusOppID, CareerName, CareerImage) 
Select 2, null, 'Computers', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\questions.jpg', Single_Blob) as image;

INSERT INTO Career (CareerId, BusOppID, CareerName, CareerImage) 
Select 3, null, 'Computers', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\labyrinth.jpg', Single_Blob) as image;

INSERT INTO Career (CareerId, BusOppID, CareerName, CareerImage) 
Select 4, null, 'Building', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\Building2.jpg', Single_Blob) as image;

select * from Trade
alter table Trade
add TradeImage varbinary(max);

INSERT INTO Trade (TradeId, BusOppID, TradeName, TradeImage) 
Select 1, null, 'Building', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\Building2.jpg', Single_Blob) as image;

INSERT INTO Trade (TradeId, BusOppID, TradeName, TradeImage) 
Select 2, null, 'Labyrinth', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\labyrinth.jpg', Single_Blob) as image;

INSERT INTO Trade (TradeId, BusOppID, TradeName, TradeImage) 
Select 3, null, 'questions', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\questions.jpg', Single_Blob) as image;

INSERT INTO Trade (TradeId, BusOppID, TradeName, TradeImage) 
Select 4, null, 'Building', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\Building2.jpg', Single_Blob) as image;

select * from ve nture
alter table Venture
add VentureImage varbinary(max);

INSERT INTO venture (ventureId, BusOppID, ventureName, ventureImage) 
Select 1, 1, 'Real Estate', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\labyrinth.jpg', Single_Blob) as image;

INSERT INTO venture (ventureId, BusOppID, ventureName, ventureImage) 
Select 2, 2, 'Accountant', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\labyrinth.jpg', Single_Blob) as image;

INSERT INTO venture (ventureId, BusOppID, ventureName, ventureImage) 
Select 3, 3, 'Consultant', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\labyrinth.jpg', Single_Blob) as image;

INSERT INTO venture (ventureId, BusOppID, ventureName, ventureImage) 
Select 4, 4, 'Equipment Sales', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\labyrinth.jpg', Single_Blob) as image;

drop table trade

CREATE TABLE [dbo].[Skill](
	[SkillID] [int] NOT NULL,
	[BusOppID] [int] NULL,
	[SkillName] [varchar](50) NOT NULL
PRIMARY KEY CLUSTERED 
)
select * from Skill
alter table Skill
add SkillImage varbinary(max);

INSERT INTO Skill (SkillId, BusOppID, SkillName, SkillImage) 
Select 1, null, 'Building', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\Building2.jpg', Single_Blob) as image;

INSERT INTO Skill (SkillId, BusOppID, SkillName, SkillImage)  
Select 2, null, 'Labyrinth', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\labyrinth.jpg', Single_Blob) as image;

INSERT INTO Skill (SkillId, BusOppID, SkillName, SkillImage)  
Select 3, null, 'questions', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\questions.jpg', Single_Blob) as image;

INSERT INTO Skill (SkillId, BusOppID, SkillName, SkillImage) 
Select 4, null, 'Carpenter', BulkColumn FROM Openrowset( Bulk 'C:\Users\andre\Desktop\Simfoni\img\Building2.jpg', Single_Blob) as image;


CREATE TABLE [dbo].[Registration](
	[MemberID] [int] IDENTITY(1,1) NOT NULL primary key,
	[Password] [varchar](50) NOT NULL,
	[FName] [varchar](50) NOT NULL,
	[LName] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](12) NULL,
	[Email] [varchar](50) NULL,
	[MailingAddress] [varchar](150) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](20) NULL,
	[ZipCode] [varchar](12) NULL,
	[DateOfBirth] [date] NULL,
	[Education] [varchar](250) NULL,
	[WorkHistory] [varchar](250) NULL,
	[EmploymentStatus] [varchar](50) NULL,
	[ManagedProfileServices] [varchar](50) NULL,
)

select * from registration
drop table registration 

