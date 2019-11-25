USE [website01]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 10/2/2019 1:58:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[Gender] [nvarchar](50) NULL,
	[Departmnet] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 
GO
INSERT [dbo].[Employees] ([Id], [name], [Gender], [Departmnet]) VALUES (1, N'jon', N'male', 1)
GO
INSERT [dbo].[Employees] ([Id], [name], [Gender], [Departmnet]) VALUES (2, N'Ali', N'male', 2)
GO
INSERT [dbo].[Employees] ([Id], [name], [Gender], [Departmnet]) VALUES (3, N'layla', N'female', 1)
GO
INSERT [dbo].[Employees] ([Id], [name], [Gender], [Departmnet]) VALUES (4, N'azzam', N'male', 3)
GO
INSERT [dbo].[Employees] ([Id], [name], [Gender], [Departmnet]) VALUES (5, N'Abod', N'male', 3)
GO
INSERT [dbo].[Employees] ([Id], [name], [Gender], [Departmnet]) VALUES (6, N'sarah', N'female', 2)
GO
INSERT [dbo].[Employees] ([Id], [name], [Gender], [Departmnet]) VALUES (7, N'ezel', N'male', 2)
GO
INSERT [dbo].[Employees] ([Id], [name], [Gender], [Departmnet]) VALUES (8, N'eysan', N'female', 1)
GO
INSERT [dbo].[Employees] ([Id], [name], [Gender], [Departmnet]) VALUES (9, N'selin', N'female', 1)
GO
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
