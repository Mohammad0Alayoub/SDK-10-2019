USE [Company]
GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 9/28/2019 12:03:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENT](
	[Dname] [varchar](15) NOT NULL,
	[Dnumber] [int] NOT NULL,
	[Mgr_ssn] [char](9) NOT NULL,
	[Mgr_start_date] [date] NULL,
 CONSTRAINT [DEPTPK] PRIMARY KEY CLUSTERED 
(
	[Dnumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPT_LOCATIONS]    Script Date: 9/28/2019 12:03:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPT_LOCATIONS](
	[Dnumber] [int] NOT NULL,
	[Dlocation] [varchar](15) NOT NULL,
 CONSTRAINT [DEPTLOCPK] PRIMARY KEY CLUSTERED 
(
	[Dnumber] ASC,
	[Dlocation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMP_DEPENDENT]    Script Date: 9/28/2019 12:03:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMP_DEPENDENT](
	[Essn] [char](9) NOT NULL,
	[Dependent_name] [varchar](15) NOT NULL,
	[Sex] [char](1) NULL,
	[Bdate] [date] NULL,
	[Relationship] [varchar](8) NULL,
 CONSTRAINT [DEPPK] PRIMARY KEY CLUSTERED 
(
	[Essn] ASC,
	[Dependent_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 9/28/2019 12:03:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[Fname] [varchar](15) NOT NULL,
	[Minit] [char](1) NULL,
	[Lname] [varchar](15) NOT NULL,
	[Ssn] [char](9) NOT NULL,
	[Bdate] [date] NULL,
	[Emp_Address] [varchar](30) NULL,
	[Sex] [char](1) NULL,
	[Salary] [decimal](10, 2) NULL,
	[Super_ssn] [char](9) NULL,
	[Dno] [int] NOT NULL,
 CONSTRAINT [EMPPK] PRIMARY KEY CLUSTERED 
(
	[Ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROJECT]    Script Date: 9/28/2019 12:03:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROJECT](
	[Pname] [varchar](15) NOT NULL,
	[Pnumber] [int] NOT NULL,
	[Plocation] [varchar](15) NULL,
	[Dnum] [int] NOT NULL,
 CONSTRAINT [PROJPK] PRIMARY KEY CLUSTERED 
(
	[Pnumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WORKS_ON]    Script Date: 9/28/2019 12:03:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WORKS_ON](
	[Essn] [char](9) NOT NULL,
	[Pno] [int] NOT NULL,
	[Emp_Hours] [decimal](3, 1) NOT NULL,
 CONSTRAINT [WONPK] PRIMARY KEY CLUSTERED 
(
	[Essn] ASC,
	[Pno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DEPARTMENT] ([Dname], [Dnumber], [Mgr_ssn], [Mgr_start_date]) VALUES (N'Headquarters', 1, N'888665555', CAST(N'1981-06-19' AS Date))
GO
INSERT [dbo].[DEPARTMENT] ([Dname], [Dnumber], [Mgr_ssn], [Mgr_start_date]) VALUES (N'Administration', 4, N'987654321', CAST(N'1995-01-01' AS Date))
GO
INSERT [dbo].[DEPARTMENT] ([Dname], [Dnumber], [Mgr_ssn], [Mgr_start_date]) VALUES (N'Research', 5, N'333445555', CAST(N'1988-05-22' AS Date))
GO
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (1, N'Houston')
GO
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (4, N'Stafford')
GO
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (5, N'Bellaire')
GO
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (5, N'Houston')
GO
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (5, N'Sugarland')
GO
INSERT [dbo].[EMP_DEPENDENT] ([Essn], [Dependent_name], [Sex], [Bdate], [Relationship]) VALUES (N'123456789', N'Alice', N'F', CAST(N'1988-12-30' AS Date), N'Daughter')
GO
INSERT [dbo].[EMP_DEPENDENT] ([Essn], [Dependent_name], [Sex], [Bdate], [Relationship]) VALUES (N'123456789', N'Elizabeth', N'F', CAST(N'1967-05-05' AS Date), N'Spouse')
GO
INSERT [dbo].[EMP_DEPENDENT] ([Essn], [Dependent_name], [Sex], [Bdate], [Relationship]) VALUES (N'123456789', N'Michael', N'M', CAST(N'1988-01-04' AS Date), N'Son')
GO
INSERT [dbo].[EMP_DEPENDENT] ([Essn], [Dependent_name], [Sex], [Bdate], [Relationship]) VALUES (N'333445555', N'Alice', N'F', CAST(N'1986-04-05' AS Date), N'Daughter')
GO
INSERT [dbo].[EMP_DEPENDENT] ([Essn], [Dependent_name], [Sex], [Bdate], [Relationship]) VALUES (N'333445555', N'Joy', N'F', CAST(N'1958-05-03' AS Date), N'Spouse')
GO
INSERT [dbo].[EMP_DEPENDENT] ([Essn], [Dependent_name], [Sex], [Bdate], [Relationship]) VALUES (N'333445555', N'Theodore', N'M', CAST(N'1983-10-25' AS Date), N'Son')
GO
INSERT [dbo].[EMP_DEPENDENT] ([Essn], [Dependent_name], [Sex], [Bdate], [Relationship]) VALUES (N'888665555', N'John', N'M', CAST(N'2001-01-01' AS Date), N'Son')
GO
INSERT [dbo].[EMP_DEPENDENT] ([Essn], [Dependent_name], [Sex], [Bdate], [Relationship]) VALUES (N'987654321', N'Abner', N'M', CAST(N'1942-02-28' AS Date), N'Spouse')
GO
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Emp_Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'John', N'B', N'Smith', N'123456789', CAST(N'1965-09-01' AS Date), N'John_address', N'M', CAST(30000.00 AS Decimal(10, 2)), N'333445555', 5)
GO
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Emp_Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Franklin', N'T', N'Wong', N'333445555', CAST(N'1955-08-12' AS Date), N'Franklin_address', N'M', CAST(40000.00 AS Decimal(10, 2)), N'888665555', 5)
GO
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Emp_Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Joyce', N'A', N'English', N'453453453', CAST(N'1972-07-31' AS Date), N'Joyce_address', N'F', CAST(25000.00 AS Decimal(10, 2)), N'333445555', 5)
GO
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Emp_Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Ramesh', N'K', N'Narayan', N'666884444', CAST(N'1962-09-15' AS Date), N'Ramesh_address', N'M', CAST(38000.00 AS Decimal(10, 2)), N'333445555', 5)
GO
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Emp_Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'James', N'E', N'Borg', N'888665555', CAST(N'1937-11-10' AS Date), N'James_address', N'M', CAST(55000.00 AS Decimal(10, 2)), NULL, 1)
GO
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Emp_Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Jennifer', N'S', N'Wallace', N'987654321', CAST(N'1941-06-20' AS Date), N'Jennifer_address', N'F', CAST(43000.00 AS Decimal(10, 2)), N'888665555', 4)
GO
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Emp_Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Ahmad', N'V', N'Jabbar', N'987987987', CAST(N'1969-03-29' AS Date), N'Ahmad_address', N'M', CAST(25000.00 AS Decimal(10, 2)), N'987654321', 4)
GO
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Emp_Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Alicia', N'J', N'Zelaya', N'999887777', CAST(N'1968-01-19' AS Date), N'Alicia_address', N'F', CAST(25000.00 AS Decimal(10, 2)), N'987654321', 4)
GO
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'ProductX', 1, N'Bellaire', 5)
GO
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'ProductY', 2, N'Sugarland', 5)
GO
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'ProductZ', 3, N'Houston', 5)
GO
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'test', 5, N'test', 1)
GO
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'Computerization', 10, N'Stafford', 4)
GO
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'Reorganization', 20, N'Houston', 1)
GO
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'Newbenefits', 30, N'Stafford', 4)
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Emp_Hours]) VALUES (N'123456789', 1, CAST(32.5 AS Decimal(3, 1)))
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Emp_Hours]) VALUES (N'123456789', 2, CAST(7.5 AS Decimal(3, 1)))
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Emp_Hours]) VALUES (N'333445555', 2, CAST(10.0 AS Decimal(3, 1)))
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Emp_Hours]) VALUES (N'333445555', 3, CAST(10.0 AS Decimal(3, 1)))
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Emp_Hours]) VALUES (N'333445555', 10, CAST(10.0 AS Decimal(3, 1)))
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Emp_Hours]) VALUES (N'333445555', 20, CAST(10.0 AS Decimal(3, 1)))
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Emp_Hours]) VALUES (N'453453453', 1, CAST(20.0 AS Decimal(3, 1)))
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Emp_Hours]) VALUES (N'453453453', 2, CAST(20.0 AS Decimal(3, 1)))
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Emp_Hours]) VALUES (N'666884444', 3, CAST(40.0 AS Decimal(3, 1)))
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Emp_Hours]) VALUES (N'888665555', 20, CAST(0.0 AS Decimal(3, 1)))
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Emp_Hours]) VALUES (N'987654321', 20, CAST(15.0 AS Decimal(3, 1)))
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Emp_Hours]) VALUES (N'987654321', 30, CAST(20.0 AS Decimal(3, 1)))
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Emp_Hours]) VALUES (N'987987987', 10, CAST(35.0 AS Decimal(3, 1)))
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Emp_Hours]) VALUES (N'987987987', 30, CAST(5.0 AS Decimal(3, 1)))
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Emp_Hours]) VALUES (N'999887777', 10, CAST(10.0 AS Decimal(3, 1)))
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Emp_Hours]) VALUES (N'999887777', 30, CAST(30.0 AS Decimal(3, 1)))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [DEPTSK]    Script Date: 9/28/2019 12:03:21 PM ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DEPTSK] UNIQUE NONCLUSTERED 
(
	[Dname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PROJSK]    Script Date: 9/28/2019 12:03:21 PM ******/
ALTER TABLE [dbo].[PROJECT] ADD  CONSTRAINT [PROJSK] UNIQUE NONCLUSTERED 
(
	[Pname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DNODEF]  DEFAULT ((1)) FOR [Dnumber]
GO
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [MGRSSNDEF]  DEFAULT ('888665555') FOR [Mgr_ssn]
GO
ALTER TABLE [dbo].[EMPLOYEE] ADD  CONSTRAINT [SSNDEF]  DEFAULT ('888665555') FOR [Ssn]
GO
ALTER TABLE [dbo].[DEPARTMENT]  WITH CHECK ADD  CONSTRAINT [MGRSSNFK] FOREIGN KEY([Mgr_ssn])
REFERENCES [dbo].[EMPLOYEE] ([Ssn])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[DEPARTMENT] CHECK CONSTRAINT [MGRSSNFK]
GO
ALTER TABLE [dbo].[DEPT_LOCATIONS]  WITH CHECK ADD  CONSTRAINT [DEPTLOCDNOFK] FOREIGN KEY([Dnumber])
REFERENCES [dbo].[DEPARTMENT] ([Dnumber])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DEPT_LOCATIONS] CHECK CONSTRAINT [DEPTLOCDNOFK]
GO
ALTER TABLE [dbo].[EMP_DEPENDENT]  WITH NOCHECK ADD  CONSTRAINT [EMPDPNDNTSSNFK] FOREIGN KEY([Essn])
REFERENCES [dbo].[EMPLOYEE] ([Ssn])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[EMP_DEPENDENT] NOCHECK CONSTRAINT [EMPDPNDNTSSNFK]
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [EMPDNOFK] FOREIGN KEY([Dno])
REFERENCES [dbo].[DEPARTMENT] ([Dnumber])
GO
ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [EMPDNOFK]
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH NOCHECK ADD  CONSTRAINT [EMPSUPERFK] FOREIGN KEY([Super_ssn])
REFERENCES [dbo].[EMPLOYEE] ([Ssn])
GO
ALTER TABLE [dbo].[EMPLOYEE] NOCHECK CONSTRAINT [EMPSUPERFK]
GO
ALTER TABLE [dbo].[PROJECT]  WITH CHECK ADD  CONSTRAINT [PROJDNOFK] FOREIGN KEY([Dnum])
REFERENCES [dbo].[DEPARTMENT] ([Dnumber])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PROJECT] CHECK CONSTRAINT [PROJDNOFK]
GO
ALTER TABLE [dbo].[WORKS_ON]  WITH CHECK ADD  CONSTRAINT [WONPNOFK] FOREIGN KEY([Pno])
REFERENCES [dbo].[PROJECT] ([Pnumber])
GO
ALTER TABLE [dbo].[WORKS_ON] CHECK CONSTRAINT [WONPNOFK]
GO
ALTER TABLE [dbo].[WORKS_ON]  WITH NOCHECK ADD  CONSTRAINT [WONSSNFK] FOREIGN KEY([Essn])
REFERENCES [dbo].[EMPLOYEE] ([Ssn])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WORKS_ON] NOCHECK CONSTRAINT [WONSSNFK]
GO
