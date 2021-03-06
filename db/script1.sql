USE [Test4]
GO
/****** Object:  Table [dbo].[GoalSubject]    Script Date: 2020-10-06 9:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoalSubject](
	[GoalID] [int] IDENTITY(1,1) NOT NULL,
	[GoalName] [varchar](50) NOT NULL,
	[GoalVerb] [varchar](50) NULL,
	[GoalDescription] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[GoalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 2020-10-06 9:35:45 PM ******/
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
	[Gmail] [varchar](150) NULL,
	[Linkedin] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[EntrepreneurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GoalSubject] ON 

INSERT [dbo].[GoalSubject] ([GoalID], [GoalName], [GoalVerb], [GoalDescription]) VALUES (1, N'real estate investing business', N'Improve, Establsih', N'Credit & Score')
INSERT [dbo].[GoalSubject] ([GoalID], [GoalName], [GoalVerb], [GoalDescription]) VALUES (2, N'House', N'Buy,Sell,Repair,Invest', N'buy or save')
INSERT [dbo].[GoalSubject] ([GoalID], [GoalName], [GoalVerb], [GoalDescription]) VALUES (3, N'Landscaping business', N'Strat,Grow,Join', N'Landscaping')
INSERT [dbo].[GoalSubject] ([GoalID], [GoalName], [GoalVerb], [GoalDescription]) VALUES (4, N'Restaurant', N'Start,Grow,Join', N'Business, Restaurant')
INSERT [dbo].[GoalSubject] ([GoalID], [GoalName], [GoalVerb], [GoalDescription]) VALUES (5, N'Urban Planner', N'Become', N'Career,Job')
INSERT [dbo].[GoalSubject] ([GoalID], [GoalName], [GoalVerb], [GoalDescription]) VALUES (6, N'Industrial-organizational phychologist', N'Become', N'Career,Job')
SET IDENTITY_INSERT [dbo].[GoalSubject] OFF
GO



