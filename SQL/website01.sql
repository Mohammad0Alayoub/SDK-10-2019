USE [master]
GO
/****** Object:  Database [website01]    Script Date: 11/16/2019 1:19:31 PM ******/
CREATE DATABASE [website01]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'login', FILENAME = N'E:\sqlTemp\MSSQL\DATA\login.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'login_log', FILENAME = N'E:\sqlTemp\MSSQL\DATA\login_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [website01] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [website01].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [website01] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [website01] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [website01] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [website01] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [website01] SET ARITHABORT OFF 
GO
ALTER DATABASE [website01] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [website01] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [website01] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [website01] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [website01] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [website01] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [website01] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [website01] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [website01] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [website01] SET  DISABLE_BROKER 
GO
ALTER DATABASE [website01] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [website01] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [website01] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [website01] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [website01] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [website01] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [website01] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [website01] SET RECOVERY FULL 
GO
ALTER DATABASE [website01] SET  MULTI_USER 
GO
ALTER DATABASE [website01] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [website01] SET DB_CHAINING OFF 
GO
ALTER DATABASE [website01] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [website01] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [website01] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'website01', N'ON'
GO
ALTER DATABASE [website01] SET QUERY_STORE = OFF
GO
USE [website01]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 11/16/2019 1:19:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Iso] [varchar](2) NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[Iso3] [varchar](3) NULL,
	[NumCode] [int] NULL,
	[PhoneCode] [int] NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gender]    Script Date: 11/16/2019 1:19:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gender](
	[id] [int] NULL,
	[gender] [char](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 11/16/2019 1:19:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[username] [char](50) NULL,
	[password] [char](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 11/16/2019 1:19:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[FirstName] [nvarchar](500) NOT NULL,
	[LastName] [nvarchar](500) NOT NULL,
	[Email] [nvarchar](500) NOT NULL,
	[Password] [nvarchar](500) NOT NULL,
	[BirthDay] [date] NOT NULL,
	[Gender] [int] NOT NULL,
	[CountryID] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (1, N'AF', N'Afghanistan', N'AFG', 4, 93)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (2, N'AL', N'Albania', N'ALB', 8, 355)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (3, N'DZ', N'Algeria', N'DZA', 12, 213)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (4, N'AS', N'American Samoa', N'ASM', 16, 1684)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (5, N'AD', N'Andorra', N'AND', 20, 376)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (6, N'AO', N'Angola', N'AGO', 24, 244)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (7, N'AI', N'Anguilla', N'AIA', 660, 1264)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (8, N'AQ', N'Antarctica', NULL, NULL, 0)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (9, N'AG', N'Antigua and Barbuda', N'ATG', 28, 1268)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (10, N'AR', N'Argentina', N'ARG', 32, 54)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (11, N'AM', N'Armenia', N'ARM', 51, 374)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (12, N'AW', N'Aruba', N'ABW', 533, 297)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (13, N'AU', N'Australia', N'AUS', 36, 61)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (14, N'AT', N'Austria', N'AUT', 40, 43)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (15, N'AZ', N'Azerbaijan', N'AZE', 31, 994)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (16, N'BS', N'Bahamas', N'BHS', 44, 1242)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (17, N'BH', N'Bahrain', N'BHR', 48, 973)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (18, N'BD', N'Bangladesh', N'BGD', 50, 880)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (19, N'BB', N'Barbados', N'BRB', 52, 1246)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (20, N'BY', N'Belarus', N'BLR', 112, 375)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (21, N'BE', N'Belgium', N'BEL', 56, 32)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (22, N'BZ', N'Belize', N'BLZ', 84, 501)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (23, N'BJ', N'Benin', N'BEN', 204, 229)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (24, N'BM', N'Bermuda', N'BMU', 60, 1441)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (25, N'BT', N'Bhutan', N'BTN', 64, 975)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (26, N'BO', N'Bolivia', N'BOL', 68, 591)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (27, N'BA', N'Bosnia and Herzegovina', N'BIH', 70, 387)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (28, N'BW', N'Botswana', N'BWA', 72, 267)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (29, N'BV', N'Bouvet Island', NULL, NULL, 0)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (30, N'BR', N'Brazil', N'BRA', 76, 55)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (31, N'IO', N'British Indian Ocean Territory', NULL, NULL, 246)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (32, N'BN', N'Brunei Darussalam', N'BRN', 96, 673)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (33, N'BG', N'Bulgaria', N'BGR', 100, 359)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (34, N'BF', N'Burkina Faso', N'BFA', 854, 226)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (35, N'BI', N'Burundi', N'BDI', 108, 257)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (36, N'KH', N'Cambodia', N'KHM', 116, 855)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (37, N'CM', N'Cameroon', N'CMR', 120, 237)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (38, N'CA', N'Canada', N'CAN', 124, 1)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (39, N'CV', N'Cape Verde', N'CPV', 132, 238)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (40, N'KY', N'Cayman Islands', N'CYM', 136, 1345)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (41, N'CF', N'Central African Republic', N'CAF', 140, 236)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (42, N'TD', N'Chad', N'TCD', 148, 235)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (43, N'CL', N'Chile', N'CHL', 152, 56)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (44, N'CN', N'China', N'CHN', 156, 86)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (45, N'CX', N'Christmas Island', NULL, NULL, 61)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (46, N'CC', N'Cocos (Keeling) Islands', NULL, NULL, 672)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (47, N'CO', N'Colombia', N'COL', 170, 57)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (48, N'KM', N'Comoros', N'COM', 174, 269)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (49, N'CG', N'Congo', N'COG', 178, 242)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (50, N'CD', N'Congo, the Democratic Republic of the', N'COD', 180, 242)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (51, N'CK', N'Cook Islands', N'COK', 184, 682)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (52, N'CR', N'Costa Rica', N'CRI', 188, 506)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (53, N'CI', N'Cote D''Ivoire', N'CIV', 384, 225)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (54, N'HR', N'Croatia', N'HRV', 191, 385)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (55, N'CU', N'Cuba', N'CUB', 192, 53)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (56, N'CY', N'Cyprus', N'CYP', 196, 357)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (57, N'CZ', N'Czech Republic', N'CZE', 203, 420)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (58, N'DK', N'Denmark', N'DNK', 208, 45)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (59, N'DJ', N'Djibouti', N'DJI', 262, 253)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (60, N'DM', N'Dominica', N'DMA', 212, 1767)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (61, N'DO', N'Dominican Republic', N'DOM', 214, 1809)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (62, N'EC', N'Ecuador', N'ECU', 218, 593)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (63, N'EG', N'Egypt', N'EGY', 818, 20)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (64, N'SV', N'El Salvador', N'SLV', 222, 503)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (65, N'GQ', N'Equatorial Guinea', N'GNQ', 226, 240)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (66, N'ER', N'Eritrea', N'ERI', 232, 291)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (67, N'EE', N'Estonia', N'EST', 233, 372)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (68, N'ET', N'Ethiopia', N'ETH', 231, 251)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (69, N'FK', N'Falkland Islands (Malvinas)', N'FLK', 238, 500)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (70, N'FO', N'Faroe Islands', N'FRO', 234, 298)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (71, N'FJ', N'Fiji', N'FJI', 242, 679)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (72, N'FI', N'Finland', N'FIN', 246, 358)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (73, N'FR', N'France', N'FRA', 250, 33)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (74, N'GF', N'French Guiana', N'GUF', 254, 594)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (75, N'PF', N'French Polynesia', N'PYF', 258, 689)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (76, N'TF', N'French Southern Territories', NULL, NULL, 0)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (77, N'GA', N'Gabon', N'GAB', 266, 241)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (78, N'GM', N'Gambia', N'GMB', 270, 220)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (79, N'GE', N'Georgia', N'GEO', 268, 995)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (80, N'DE', N'Germany', N'DEU', 276, 49)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (81, N'GH', N'Ghana', N'GHA', 288, 233)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (82, N'GI', N'Gibraltar', N'GIB', 292, 350)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (83, N'GR', N'Greece', N'GRC', 300, 30)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (84, N'GL', N'Greenland', N'GRL', 304, 299)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (85, N'GD', N'Grenada', N'GRD', 308, 1473)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (86, N'GP', N'Guadeloupe', N'GLP', 312, 590)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (87, N'GU', N'Guam', N'GUM', 316, 1671)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (88, N'GT', N'Guatemala', N'GTM', 320, 502)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (89, N'GN', N'Guinea', N'GIN', 324, 224)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (90, N'GW', N'Guinea-Bissau', N'GNB', 624, 245)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (91, N'GY', N'Guyana', N'GUY', 328, 592)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (92, N'HT', N'Haiti', N'HTI', 332, 509)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (93, N'HM', N'Heard Island and Mcdonald Islands', NULL, NULL, 0)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (94, N'VA', N'Holy See (Vatican City State)', N'VAT', 336, 39)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (95, N'HN', N'Honduras', N'HND', 340, 504)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (96, N'HK', N'Hong Kong', N'HKG', 344, 852)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (97, N'HU', N'Hungary', N'HUN', 348, 36)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (98, N'IS', N'Iceland', N'ISL', 352, 354)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (99, N'IN', N'India', N'IND', 356, 91)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (100, N'ID', N'Indonesia', N'IDN', 360, 62)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (101, N'IR', N'Iran, Islamic Republic of', N'IRN', 364, 98)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (102, N'IQ', N'Iraq', N'IRQ', 368, 964)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (103, N'IE', N'Ireland', N'IRL', 372, 353)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (104, N'IL', N'Israel', N'ISR', 376, 972)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (105, N'IT', N'Italy', N'ITA', 380, 39)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (106, N'JM', N'Jamaica', N'JAM', 388, 1876)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (107, N'JP', N'Japan', N'JPN', 392, 81)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (108, N'JO', N'Jordan', N'JOR', 400, 962)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (109, N'KZ', N'Kazakhstan', N'KAZ', 398, 7)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (110, N'KE', N'Kenya', N'KEN', 404, 254)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (111, N'KI', N'Kiribati', N'KIR', 296, 686)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (112, N'KP', N'Korea, Democratic People''s Republic of', N'PRK', 408, 850)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (113, N'KR', N'Korea, Republic of', N'KOR', 410, 82)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (114, N'KW', N'Kuwait', N'KWT', 414, 965)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (115, N'KG', N'Kyrgyzstan', N'KGZ', 417, 996)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (116, N'LA', N'Lao People''s Democratic Republic', N'LAO', 418, 856)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (117, N'LV', N'Latvia', N'LVA', 428, 371)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (118, N'LB', N'Lebanon', N'LBN', 422, 961)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (119, N'LS', N'Lesotho', N'LSO', 426, 266)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (120, N'LR', N'Liberia', N'LBR', 430, 231)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (121, N'LY', N'Libyan Arab Jamahiriya', N'LBY', 434, 218)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (122, N'LI', N'Liechtenstein', N'LIE', 438, 423)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (123, N'LT', N'Lithuania', N'LTU', 440, 370)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (124, N'LU', N'Luxembourg', N'LUX', 442, 352)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (125, N'MO', N'Macao', N'MAC', 446, 853)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (126, N'MK', N'Macedonia, the Former Yugoslav Republic of', N'MKD', 807, 389)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (127, N'MG', N'Madagascar', N'MDG', 450, 261)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (128, N'MW', N'Malawi', N'MWI', 454, 265)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (129, N'MY', N'Malaysia', N'MYS', 458, 60)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (130, N'MV', N'Maldives', N'MDV', 462, 960)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (131, N'ML', N'Mali', N'MLI', 466, 223)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (132, N'MT', N'Malta', N'MLT', 470, 356)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (133, N'MH', N'Marshall Islands', N'MHL', 584, 692)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (134, N'MQ', N'Martinique', N'MTQ', 474, 596)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (135, N'MR', N'Mauritania', N'MRT', 478, 222)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (136, N'MU', N'Mauritius', N'MUS', 480, 230)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (137, N'YT', N'Mayotte', NULL, NULL, 269)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (138, N'MX', N'Mexico', N'MEX', 484, 52)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (139, N'FM', N'Micronesia, Federated States of', N'FSM', 583, 691)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (140, N'MD', N'Moldova, Republic of', N'MDA', 498, 373)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (141, N'MC', N'Monaco', N'MCO', 492, 377)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (142, N'MN', N'Mongolia', N'MNG', 496, 976)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (143, N'MS', N'Montserrat', N'MSR', 500, 1664)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (144, N'MA', N'Morocco', N'MAR', 504, 212)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (145, N'MZ', N'Mozambique', N'MOZ', 508, 258)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (146, N'MM', N'Myanmar', N'MMR', 104, 95)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (147, N'NA', N'Namibia', N'NAM', 516, 264)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (148, N'NR', N'Nauru', N'NRU', 520, 674)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (149, N'NP', N'Nepal', N'NPL', 524, 977)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (150, N'NL', N'Netherlands', N'NLD', 528, 31)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (151, N'AN', N'Netherlands Antilles', N'ANT', 530, 599)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (152, N'NC', N'New Caledonia', N'NCL', 540, 687)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (153, N'NZ', N'New Zealand', N'NZL', 554, 64)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (154, N'NI', N'Nicaragua', N'NIC', 558, 505)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (155, N'NE', N'Niger', N'NER', 562, 227)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (156, N'NG', N'Nigeria', N'NGA', 566, 234)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (157, N'NU', N'Niue', N'NIU', 570, 683)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (158, N'NF', N'Norfolk Island', N'NFK', 574, 672)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (159, N'MP', N'Northern Mariana Islands', N'MNP', 580, 1670)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (160, N'NO', N'Norway', N'NOR', 578, 47)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (161, N'OM', N'Oman', N'OMN', 512, 968)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (162, N'PK', N'Pakistan', N'PAK', 586, 92)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (163, N'PW', N'Palau', N'PLW', 585, 680)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (164, N'PS', N'Palestinian Territory, Occupied', NULL, NULL, 970)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (165, N'PA', N'Panama', N'PAN', 591, 507)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (166, N'PG', N'Papua New Guinea', N'PNG', 598, 675)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (167, N'PY', N'Paraguay', N'PRY', 600, 595)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (168, N'PE', N'Peru', N'PER', 604, 51)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (169, N'PH', N'Philippines', N'PHL', 608, 63)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (170, N'PN', N'Pitcairn', N'PCN', 612, 0)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (171, N'PL', N'Poland', N'POL', 616, 48)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (172, N'PT', N'Portugal', N'PRT', 620, 351)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (173, N'PR', N'Puerto Rico', N'PRI', 630, 1787)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (174, N'QA', N'Qatar', N'QAT', 634, 974)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (175, N'RE', N'Reunion', N'REU', 638, 262)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (176, N'RO', N'Romania', N'ROM', 642, 40)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (177, N'RU', N'Russian Federation', N'RUS', 643, 70)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (178, N'RW', N'Rwanda', N'RWA', 646, 250)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (179, N'SH', N'Saint Helena', N'SHN', 654, 290)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (180, N'KN', N'Saint Kitts and Nevis', N'KNA', 659, 1869)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (181, N'LC', N'Saint Lucia', N'LCA', 662, 1758)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (182, N'PM', N'Saint Pierre and Miquelon', N'SPM', 666, 508)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (183, N'VC', N'Saint Vincent and the Grenadines', N'VCT', 670, 1784)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (184, N'WS', N'Samoa', N'WSM', 882, 684)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (185, N'SM', N'San Marino', N'SMR', 674, 378)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (186, N'ST', N'Sao Tome and Principe', N'STP', 678, 239)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (187, N'SA', N'Saudi Arabia', N'SAU', 682, 966)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (188, N'SN', N'Senegal', N'SEN', 686, 221)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (189, N'CS', N'Serbia and Montenegro', NULL, NULL, 381)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (190, N'SC', N'Seychelles', N'SYC', 690, 248)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (191, N'SL', N'Sierra Leone', N'SLE', 694, 232)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (192, N'SG', N'Singapore', N'SGP', 702, 65)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (193, N'SK', N'Slovakia', N'SVK', 703, 421)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (194, N'SI', N'Slovenia', N'SVN', 705, 386)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (195, N'SB', N'Solomon Islands', N'SLB', 90, 677)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (196, N'SO', N'Somalia', N'SOM', 706, 252)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (197, N'ZA', N'South Africa', N'ZAF', 710, 27)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (198, N'GS', N'South Georgia and the South Sandwich Islands', NULL, NULL, 0)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (199, N'ES', N'Spain', N'ESP', 724, 34)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (200, N'LK', N'Sri Lanka', N'LKA', 144, 94)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (201, N'SD', N'Sudan', N'SDN', 736, 249)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (202, N'SR', N'Suriname', N'SUR', 740, 597)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (203, N'SJ', N'Svalbard and Jan Mayen', N'SJM', 744, 47)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (204, N'SZ', N'Swaziland', N'SWZ', 748, 268)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (205, N'SE', N'Sweden', N'SWE', 752, 46)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (206, N'CH', N'Switzerland', N'CHE', 756, 41)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (207, N'SY', N'Syrian Arab Republic', N'SYR', 760, 963)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (208, N'TW', N'Taiwan, Province of China', N'TWN', 158, 886)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (209, N'TJ', N'Tajikistan', N'TJK', 762, 992)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (210, N'TZ', N'Tanzania, United Republic of', N'TZA', 834, 255)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (211, N'TH', N'Thailand', N'THA', 764, 66)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (212, N'TL', N'Timor-Leste', NULL, NULL, 670)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (213, N'TG', N'Togo', N'TGO', 768, 228)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (214, N'TK', N'Tokelau', N'TKL', 772, 690)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (215, N'TO', N'Tonga', N'TON', 776, 676)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (216, N'TT', N'Trinidad and Tobago', N'TTO', 780, 1868)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (217, N'TN', N'Tunisia', N'TUN', 788, 216)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (218, N'TR', N'Turkey', N'TUR', 792, 90)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (219, N'TM', N'Turkmenistan', N'TKM', 795, 7370)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (220, N'TC', N'Turks and Caicos Islands', N'TCA', 796, 1649)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (221, N'TV', N'Tuvalu', N'TUV', 798, 688)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (222, N'UG', N'Uganda', N'UGA', 800, 256)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (223, N'UA', N'Ukraine', N'UKR', 804, 380)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (224, N'AE', N'United Arab Emirates', N'ARE', 784, 971)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (225, N'GB', N'United Kingdom', N'GBR', 826, 44)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (226, N'US', N'United States', N'USA', 840, 1)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (227, N'UM', N'United States Minor Outlying Islands', NULL, NULL, 1)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (228, N'UY', N'Uruguay', N'URY', 858, 598)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (229, N'UZ', N'Uzbekistan', N'UZB', 860, 998)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (230, N'VU', N'Vanuatu', N'VUT', 548, 678)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (231, N'VE', N'Venezuela', N'VEN', 862, 58)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (232, N'VN', N'Viet Nam', N'VNM', 704, 84)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (233, N'VG', N'Virgin Islands, British', N'VGB', 92, 1284)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (234, N'VI', N'Virgin Islands, U.s.', N'VIR', 850, 1340)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (235, N'WF', N'Wallis and Futuna', N'WLF', 876, 681)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (236, N'EH', N'Western Sahara', N'ESH', 732, 212)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (237, N'YE', N'Yemen', N'YEM', 887, 967)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (238, N'ZM', N'Zambia', N'ZMB', 894, 260)
GO
INSERT [dbo].[Countries] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (239, N'ZW', N'Zimbabwe', N'ZWE', 716, 263)
GO
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
INSERT [dbo].[gender] ([id], [gender]) VALUES (1, N'male                                              ')
GO
INSERT [dbo].[gender] ([id], [gender]) VALUES (2, N'female                                            ')
GO
INSERT [dbo].[gender] ([id], [gender]) VALUES (3, N'other                                             ')
GO
INSERT [dbo].[login] ([username], [password]) VALUES (N'ageelbaraa@gmail.com                              ', N'Ayaz@123                                          ')
GO
INSERT [dbo].[login] ([username], [password]) VALUES (N'aqeel_baraa@yahoo.com                             ', N'Ayaz#123                                          ')
GO
INSERT [dbo].[UserInfo] ([FirstName], [LastName], [Email], [Password], [BirthDay], [Gender], [CountryID]) VALUES (N'Ali', N'Sonal', N'sonal@yahoo.com', N'sonal7410', CAST(N'1980-05-16' AS Date), 1, 218)
GO
INSERT [dbo].[UserInfo] ([FirstName], [LastName], [Email], [Password], [BirthDay], [Gender], [CountryID]) VALUES (N'Unur', N'Atila', N'atila@yahoo.com', N'atila7410', CAST(N'1985-08-02' AS Date), 1, 218)
GO
INSERT [dbo].[UserInfo] ([FirstName], [LastName], [Email], [Password], [BirthDay], [Gender], [CountryID]) VALUES (N'Ayaz', N'ugurlu', N'ugurlu@gmail.com', N'ugurlu7410', CAST(N'1990-06-15' AS Date), 1, 218)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uc_Countries_Iso]    Script Date: 11/16/2019 1:19:31 PM ******/
ALTER TABLE [dbo].[Countries] ADD  CONSTRAINT [uc_Countries_Iso] UNIQUE NONCLUSTERED 
(
	[Iso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[AddUser]    Script Date: 11/16/2019 1:19:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddUser] 
@FName varchar(500),
@LName varchar(500),
@BirthDay date,
@Gender int,
@Email varchar(500),
@Pass varchar(500),
@CountryID int ,
@result int out 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO dbo.UserInfo (FirstName,LastName,Email,Password,BirthDay,Gender,CountryID) VALUES (@FName , @LName ,@Email,@Pass , @BirthDay , @Gender , @CountryID  ) ;
	DECLARE @ID int =  @@IDENTITY;

	set @result = @ID ;
	return @ID ;
END

GO
USE [master]
GO
ALTER DATABASE [website01] SET  READ_WRITE 
GO
