USE [SimfoniDatabase]
GO
/****** Object:  Table [dbo].[MemberGoal]    Script Date: 2020-10-12 8:39:24 AM ******/
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
/****** Object:  Table [dbo].[Object]    Script Date: 2020-10-12 8:39:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Object](
	[ObjectID] [int] IDENTITY(1,1) NOT NULL,
	[ObjectName] [varchar](150) NOT NULL,
	[ObjectRank] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ObjectPrimary]    Script Date: 2020-10-12 8:39:25 AM ******/
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
/****** Object:  Table [dbo].[PrimaryTag]    Script Date: 2020-10-12 8:39:25 AM ******/
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
/****** Object:  Table [dbo].[Registration]    Script Date: 2020-10-12 8:39:25 AM ******/
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
PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SelectedGoal]    Script Date: 2020-10-12 8:39:25 AM ******/
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
/****** Object:  Table [dbo].[SelectedObject]    Script Date: 2020-10-12 8:39:25 AM ******/
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

INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (1, N'$1,000,000', 239)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (2, N'$100,000', 238)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (3, N'per year', 237)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (4, N'$10,000', 237)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (5, N'$100', 236)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (6, N'per week', 235)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (7, N'$10', 235)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (8, N'per day', 234)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (9, N'Start', 233)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (10, N'mental health counselor', 233)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (11, N'a pest control company', 232)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (12, N'within the', 231)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (13, N'next three years', 230)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (14, N'management analyst', 230)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (15, N'Save', 229)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (16, N'dental assistant', 229)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (17, N'$1,000', 228)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (18, N'cartographer', 228)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (19, N'per month', 227)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (20, N'message therapist', 227)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (21, N'Create', 226)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (22, N'Computer Systems Administrator', 226)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (23, N'by', 225)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (24, N'a budget', 225)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (25, N'Personal Care Aide', 225)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (26, N'next year', 224)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (27, N'Architect', 224)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (28, N'Begin', 223)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (29, N'Computer Network Architect', 223)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (30, N'Improve', 222)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (31, N'Landscaping', 222)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (32, N'Accelerate', 221)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (33, N'Construction Manager', 221)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (34, N'next quarter', 220)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (35, N'Medical Records Technician', 220)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (36, N'Specific Date', 219)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (37, N'Actuary', 219)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (38, N'Computer Systems Analyst', 218)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (39, N'Medical Assistant', 217)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (40, N'Therapist', 216)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (41, N'Lawyer', 215)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (42, N'Social and Community Service Manager', 214)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (43, N'Environmental Engineer', 213)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (44, N'Podiatrist', 212)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (45, N'Industrial Psychologist', 211)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (46, N'Marketing Manager', 210)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (47, N'Business Operations Manager', 209)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (48, N'Market Research Analyst', 208)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (49, N'Accountant', 207)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (50, N'Diagnostic Medical Sonographer', 206)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (51, N'Respiratory Therapist', 205)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (52, N'Pilot', 204)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (53, N'School Psychologist', 203)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (54, N'Psychiatrist', 202)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (55, N'Civil Engineer', 201)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (56, N'Mechanical Engineer', 200)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (57, N'Database Administrator', 199)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (58, N'Psychologist', 198)
INSERT [dbo].[Object] ([ObjectID], [ObjectName], [ObjectRank]) VALUES (59, N'Occupational Therapist', 197)
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
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (20, 2)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (21, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (22, 4)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (23, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (24, 6)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (25, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (26, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (27, 2)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (28, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (29, 4)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (30, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (31, 4)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (32, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (33, 4)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (34, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (35, 2)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (36, 4)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (37, 2)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (38, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (39, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (40, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (41, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (42, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (43, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (44, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (45, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (46, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (47, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (48, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (49, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (50, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (51, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (52, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (53, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (54, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (55, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (56, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (57, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (58, 5)
INSERT [dbo].[ObjectPrimary] ([ObjectID], [PrimaryID]) VALUES (59, 5)
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
ALTER TABLE [dbo].[ObjectPrimary]  WITH CHECK ADD FOREIGN KEY([ObjectID])
REFERENCES [dbo].[Object] ([ObjectID])
GO
ALTER TABLE [dbo].[ObjectPrimary]  WITH CHECK ADD FOREIGN KEY([PrimaryID])
REFERENCES [dbo].[PrimaryTag] ([PrimaryID])
GO
ALTER TABLE [dbo].[SelectedObject]  WITH CHECK ADD FOREIGN KEY([MemberID])
REFERENCES [dbo].[Registration] ([MemberID])
GO
ALTER TABLE [dbo].[SelectedObject]  WITH CHECK ADD FOREIGN KEY([ObjectID])
REFERENCES [dbo].[Object] ([ObjectID])
GO
