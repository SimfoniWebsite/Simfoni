USE [Test9]
GO
/****** Object:  Table [dbo].[MemberGoal]    Script Date: 2020-10-10 3:49:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberGoal](
	[SelectedID] [int] NOT NULL,
	[MemberID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SelectedID] ASC,
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Object]    Script Date: 2020-10-10 3:49:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Object](
	[ObjectID] [int] IDENTITY(1,1) NOT NULL,
	[ObjectName] [varchar](150) NOT NULL,
	[ObjectRank] [int] NULL,
	[SelectObjectID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ObjectPrimary]    Script Date: 2020-10-10 3:49:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ObjectPrimary](
	[ObjectID] [int] NOT NULL,
	[PrimaryID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[PrimaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrimaryTag]    Script Date: 2020-10-10 3:49:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrimaryTag](
	[PrimaryID] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PrimaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 2020-10-10 3:49:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[FName] [varchar](50) NOT NULL,
	[LName] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](12) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[MailingAddress] [varchar](150) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](20) NULL,
	[ZipCode] [varchar](12) NULL,
	[DateOfBirth] [date] NULL,
	[Education] [varchar](5000) NULL,
	[WorkHistory] [varchar](5000) NULL,
	[EmploymentStatus] [varchar](50) NULL,
	[ManagedProfileServices] [varchar](50) NULL,
	[SelectObjectID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SelectedGoal]    Script Date: 2020-10-10 3:49:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SelectedGoal](
	[SelectedID] [int] IDENTITY(1,1) NOT NULL,
	[Goals] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SelectedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SelectedObject]    Script Date: 2020-10-10 3:49:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SelectedObject](
	[SelectObjectID] [int] IDENTITY(1,1) NOT NULL,
	[ObjectID] [int] NULL,
	[MemberID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SelectObjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Object] ON 

INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (1, N'$1,000,000', 239, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (2, N'$100,000', 238, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (3, N'per year', 237, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (4, N'$10,000', 237, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (5, N'$100', 236, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (6, N'per week', 235, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (7, N'$10', 235, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (8, N'per day', 234, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (9, N'Start', 233, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (10, N'mental health counselor', 233, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (11, N'a pest control company', 232, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (12, N'within the', 231, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (13, N'next three years', 230, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (14, N'management analyst', 230, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (15, N'Save', 229, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (16, N'dental assistant', 229, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (17, N'$1,000', 228, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (18, N'cartographer', 228, NULL)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank], [SelectObjectID]) VALUES (19, N'per month', 227, NULL)
SET IDENTITY_INSERT [dbo].[Object] OFF
GO
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (1, 1)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (2, 1)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (3, 2)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (4, 3)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (5, 1)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (6, 2)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (7, 1)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (8, 2)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (9, 4)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (10, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (11, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (12, 6)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (13, 2)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (14, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (15, 4)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (16, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (17, 1)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (18, 1)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (19, 5)
GO
SET IDENTITY_INSERT [dbo].[PrimaryTag] ON 

INSERT [dbo].[PrimaryTag] ([PrimaryID], [TagName]) VALUES (1, N'dollars')
INSERT [dbo].[PrimaryTag] ([PrimaryID], [TagName]) VALUES (2, N'duration')
INSERT [dbo].[PrimaryTag] ([PrimaryID], [TagName]) VALUES (3, N'quantity')
INSERT [dbo].[PrimaryTag] ([PrimaryID], [TagName]) VALUES (4, N'verb')
INSERT [dbo].[PrimaryTag] ([PrimaryID], [TagName]) VALUES (5, N'subject')
INSERT [dbo].[PrimaryTag] ([PrimaryID], [TagName]) VALUES (6, N'conjunction')
SET IDENTITY_INSERT [dbo].[PrimaryTag] OFF
GO
ALTER TABLE [dbo].[MemberGoal]  WITH CHECK ADD FOREIGN KEY([MemberID])
REFERENCES [dbo].[Registration] ([MemberID])
GO
ALTER TABLE [dbo].[MemberGoal]  WITH CHECK ADD FOREIGN KEY([SelectedID])
REFERENCES [dbo].[SelectedGoal] ([SelectedID])
GO
ALTER TABLE [dbo].[Object]  WITH CHECK ADD FOREIGN KEY([SelectObjectID])
REFERENCES [dbo].[SelectedObject] ([SelectObjectID])
GO
ALTER TABLE [dbo].[ObjectPrimary]  WITH CHECK ADD FOREIGN KEY([ObjectID])
REFERENCES [dbo].[Object] ([ObjectID])
GO
ALTER TABLE [dbo].[ObjectPrimary]  WITH CHECK ADD FOREIGN KEY([PrimaryID])
REFERENCES [dbo].[PrimaryTag] ([PrimaryID])
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD FOREIGN KEY([SelectObjectID])
REFERENCES [dbo].[SelectedObject] ([SelectObjectID])
GO
ALTER TABLE [dbo].[SelectedObject]  WITH CHECK ADD FOREIGN KEY([MemberID])
REFERENCES [dbo].[Registration] ([MemberID])
GO
ALTER TABLE [dbo].[SelectedObject]  WITH CHECK ADD FOREIGN KEY([ObjectID])
REFERENCES [dbo].[Object] ([ObjectID])
GO
