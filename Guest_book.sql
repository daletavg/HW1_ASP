USE [Guest_book]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 1/31/2019 9:52:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NOT NULL,
	[Message] [nvarchar](max) NULL,
	[Message_Date] [nvarchar](50) NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/31/2019 9:52:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Pwd] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (1, 1, N'fssefsfsfdvvxvxvgeergs', N'2018-01-01')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (2, 1, N'ggdgd', N'2018-01-01')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (3, 1, N'dadad', N'2018-02-10')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (4, 2, N'gdd', N'12')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (5, 2, N'ffwfwfw', N'23')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (6, 2, N'fefs', N'12')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (7, 10, N'grgr', N'1/30/2019 11:43:15 PM')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (8, 10, N'fefsfs', N'1/30/2019 11:48:24 PM')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (9, 10, N'fefsfs', N'1/30/2019 11:48:28 PM')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (10, 10, N'fefsfs', N'1/30/2019 11:48:30 PM')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (11, 10, N'dadadadad', N'1/30/2019 11:48:35 PM')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (12, 10, N'fr', N'1/30/2019 11:50:15 PM')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (13, 10, N'fr', N'1/30/2019 11:50:17 PM')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (14, 10, N'fr', N'1/30/2019 11:50:18 PM')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (15, 10, N'ffwefefffff', N'1/30/2019 11:50:40 PM')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (16, 10, N'ffwefefffff', N'1/30/2019 11:50:43 PM')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (17, 10, N'fefefe', N'1/31/2019 8:48:37 AM')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (18, 10, N'fefefe', N'1/31/2019 8:48:39 AM')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (19, 10, N'fefefe', N'1/31/2019 8:48:40 AM')
INSERT [dbo].[Messages] ([id], [id_user], [Message], [Message_Date]) VALUES (20, 11, N'fsfsfsf', N'1/31/2019 9:44:03 AM')
SET IDENTITY_INSERT [dbo].[Messages] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [Name], [Pwd]) VALUES (1, N'q1', N'85064efb60a9601805dcea56ec5402f7')
INSERT [dbo].[Users] ([id], [Name], [Pwd]) VALUES (2, N'wqwwqw', N'f1013813afc5ab4eb9d25a9140ff2300')
INSERT [dbo].[Users] ([id], [Name], [Pwd]) VALUES (3, N'q12', N'e807f1fcf82d132f9bb018ca6738a19f')
INSERT [dbo].[Users] ([id], [Name], [Pwd]) VALUES (4, N'dffs', N'cd2a68cad08c4931f967732365fb5f5d')
INSERT [dbo].[Users] ([id], [Name], [Pwd]) VALUES (5, N'wqwqw', N'7a12a47984333222320df4510947fbdd')
INSERT [dbo].[Users] ([id], [Name], [Pwd]) VALUES (6, N'q1grg', N'f06ac251825c3356492b7594a6c8b892')
INSERT [dbo].[Users] ([id], [Name], [Pwd]) VALUES (7, N'fefe', N'084fe8aecafea8b2f84cca493377eb9b')
INSERT [dbo].[Users] ([id], [Name], [Pwd]) VALUES (8, N'rgdgd', N'c51a546ca1c65cb823e989df48e88bbd')
INSERT [dbo].[Users] ([id], [Name], [Pwd]) VALUES (9, N'admin', N'827ccb0eea8a706c4c34a16891f84e7b')
INSERT [dbo].[Users] ([id], [Name], [Pwd]) VALUES (10, N'aq', N'e807f1fcf82d132f9bb018ca6738a19f')
INSERT [dbo].[Users] ([id], [Name], [Pwd]) VALUES (11, N'df', N'202cb962ac59075b964b07152d234b70')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Users]
GO
