USE [master]
GO
/****** Object:  Database [Employye]    Script Date: 12/31/2019 5:27:05 PM ******/
CREATE DATABASE [Employye]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Employye', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Employye.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Employye_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Employye_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Employye] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Employye].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Employye] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Employye] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Employye] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Employye] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Employye] SET ARITHABORT OFF 
GO
ALTER DATABASE [Employye] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Employye] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Employye] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Employye] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Employye] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Employye] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Employye] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Employye] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Employye] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Employye] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Employye] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Employye] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Employye] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Employye] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Employye] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Employye] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Employye] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Employye] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Employye] SET  MULTI_USER 
GO
ALTER DATABASE [Employye] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Employye] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Employye] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Employye] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Employye] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Employye] SET QUERY_STORE = OFF
GO
USE [Employye]
GO
/****** Object:  Table [dbo].[EmployeeInfo]    Script Date: 12/31/2019 5:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeInfo](
	[EmpId] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Gender] [nvarchar](50) NULL,
	[City] [nvarchar](100) NULL,
	[Phone] [nvarchar](100) NULL,
	[birthdate] [nchar](50) NULL,
	[address] [nchar](100) NULL,
 CONSTRAINT [PK_EmployeeInfo] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[EmployyeStandertInfo]    Script Date: 12/31/2019 5:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EmployyeStandertInfo]
AS
SELECT        EmpId, City, Gender
FROM            dbo.EmployeeInfo
GO
INSERT [dbo].[EmployeeInfo] ([EmpId], [Name], [Gender], [City], [Phone], [birthdate], [address]) VALUES (1, N'mike', N'male', N'London', N'0796582454', N'01/01/1968                                        ', N'0796582454                                                                                          ')
GO
INSERT [dbo].[EmployeeInfo] ([EmpId], [Name], [Gender], [City], [Phone], [birthdate], [address]) VALUES (4, N'mikel1', N'male', N'sydeny', N'0796852454', N'06/01/1999                                        ', N'birazil                                                                                             ')
GO
INSERT [dbo].[EmployeeInfo] ([EmpId], [Name], [Gender], [City], [Phone], [birthdate], [address]) VALUES (5, N'pam', N'female', N'toronto', N'078788989', N'02/06/2000                                        ', N'jordan-amman                                                                                        ')
GO
INSERT [dbo].[EmployeeInfo] ([EmpId], [Name], [Gender], [City], [Phone], [birthdate], [address]) VALUES (6, N'david', N'male', N'broklin', NULL, NULL, NULL)
GO
INSERT [dbo].[EmployeeInfo] ([EmpId], [Name], [Gender], [City], [Phone], [birthdate], [address]) VALUES (7, N'saad', N'male', N'istanbul', NULL, NULL, NULL)
GO
INSERT [dbo].[EmployeeInfo] ([EmpId], [Name], [Gender], [City], [Phone], [birthdate], [address]) VALUES (8, N'ali', N'male', N'amman', NULL, NULL, NULL)
GO
INSERT [dbo].[EmployeeInfo] ([EmpId], [Name], [Gender], [City], [Phone], [birthdate], [address]) VALUES (9, N'baraa', N'male', N'irbid', NULL, NULL, NULL)
GO
INSERT [dbo].[EmployeeInfo] ([EmpId], [Name], [Gender], [City], [Phone], [birthdate], [address]) VALUES (10, N'ali ali', N'male', N'irbid', NULL, NULL, NULL)
GO
INSERT [dbo].[EmployeeInfo] ([EmpId], [Name], [Gender], [City], [Phone], [birthdate], [address]) VALUES (11, N'odat', N'male', N'amman', NULL, NULL, NULL)
GO
INSERT [dbo].[EmployeeInfo] ([EmpId], [Name], [Gender], [City], [Phone], [birthdate], [address]) VALUES (12, N'mo', N'2', N'ok', NULL, NULL, NULL)
GO
INSERT [dbo].[EmployeeInfo] ([EmpId], [Name], [Gender], [City], [Phone], [birthdate], [address]) VALUES (13, N'aliAssad', N'male', N'amman', N'0789565542', N'01/05/2003                                        ', N'amman-jordan                                                                                        ')
GO
INSERT [dbo].[EmployeeInfo] ([EmpId], [Name], [Gender], [City], [Phone], [birthdate], [address]) VALUES (14, N'ayaz', N'male', N'istanbul', N'056896548', N'07/08/1995                                        ', N'istanbul-turkiye                                                                                    ')
GO
INSERT [dbo].[EmployeeInfo] ([EmpId], [Name], [Gender], [City], [Phone], [birthdate], [address]) VALUES (15, NULL, NULL, NULL, N'0796582454', N'01/01/1978                                        ', N'amman-jordan                                                                                        ')
GO
INSERT [dbo].[EmployeeInfo] ([EmpId], [Name], [Gender], [City], [Phone], [birthdate], [address]) VALUES (16, N'khalifa', N'male', N'dubai', NULL, NULL, NULL)
GO
/****** Object:  StoredProcedure [dbo].[spGetFullInfoAboutEmployye]    Script Date: 12/31/2019 5:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spGetFullInfoAboutEmployye] as

	begin
	select *
	from EmployeeInfo

end
GO
/****** Object:  StoredProcedure [dbo].[spInsertEmployee]    Script Date: 12/31/2019 5:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spInsertEmployee]
  @Em_id int,
  @name nvarchar(100) ,
  @gender nvarchar(50) ,
  @city nvarchar(100) 
  as 
  begin 
		insert into EmployeeInfo (EmpId,Name,Gender,City) values (@Em_id,@name,@gender,@city)
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertPhoneAndBDateAndAddress]    Script Date: 12/31/2019 5:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spInsertPhoneAndBDateAndAddress]
@id int,
@Phone nvarchar(100),
@BDate nchar(50),
@address nchar(100)

as
	begin
		update EmployeeInfo
		set Phone = @Phone ,birthdate = @BDate ,address =@address
		where EmpId = @id
end
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "EmployeeInfo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EmployyeStandertInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EmployyeStandertInfo'
GO
USE [master]
GO
ALTER DATABASE [Employye] SET  READ_WRITE 
GO
