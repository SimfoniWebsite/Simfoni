USE [Test2]
GO
/****** Object:  Table [dbo].[Career]    Script Date: 2020-09-29 10:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Career](
	[CareerID] [int] IDENTITY(1,1) NOT NULL,
	[OppID] [int] NULL,
	[CareerName] [varchar](50) NOT NULL,
	[CareerImage] [varbinary](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CareerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Opportunities]    Script Date: 2020-09-29 10:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opportunities](
	[OppID] [int] IDENTITY(1,1) NOT NULL,
	[OppName] [varchar](50) NOT NULL,
	[OppCategory] [varchar](50) NOT NULL,
	[OppStatus] [varchar](50) NOT NULL,
	[OppDescription] [varchar](250) NOT NULL,
	[OppDetails] [varchar](250) NOT NULL,
	[CareerID] [int] NULL,
	[TradeID] [int] NULL,
	[VentureID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OppID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trade]    Script Date: 2020-09-29 10:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trade](
	[TradeID] [int] IDENTITY(1,1) NOT NULL,
	[OppID] [int] NULL,
	[TradeName] [varchar](50) NOT NULL,
	[TradeImage] [varbinary](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venture]    Script Date: 2020-09-29 10:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venture](
	[VentureID] [int] IDENTITY(1,1) NOT NULL,
	[OppID] [int] NULL,
	[VentureName] [varchar](50) NOT NULL,
	[VentureImage] [varbinary](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VentureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Opportunities]  WITH CHECK ADD FOREIGN KEY([CareerID])
REFERENCES [dbo].[Trade] ([TradeID])
GO
ALTER TABLE [dbo].[Opportunities]  WITH CHECK ADD FOREIGN KEY([TradeID])
REFERENCES [dbo].[Trade] ([TradeID])
GO
ALTER TABLE [dbo].[Opportunities]  WITH CHECK ADD FOREIGN KEY([VentureID])
REFERENCES [dbo].[Trade] ([TradeID])
GO

drop table Career
drop table Opportunities
drop table venture
drop table Trade

select * from career
select * from Opportunities
select * from Trade
select * from venture