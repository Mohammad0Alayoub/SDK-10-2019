USE [master]
GO
/****** Object:  Database [customer]    Script Date: 11/27/2019 4:29:49 PM ******/
CREATE DATABASE [customer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'customer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\customer.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'customer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\customer_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [customer] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [customer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [customer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [customer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [customer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [customer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [customer] SET ARITHABORT OFF 
GO
ALTER DATABASE [customer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [customer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [customer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [customer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [customer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [customer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [customer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [customer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [customer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [customer] SET  DISABLE_BROKER 
GO
ALTER DATABASE [customer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [customer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [customer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [customer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [customer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [customer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [customer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [customer] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [customer] SET  MULTI_USER 
GO
ALTER DATABASE [customer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [customer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [customer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [customer] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [customer] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [customer] SET QUERY_STORE = OFF
GO
USE [customer]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/27/2019 4:29:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/27/2019 4:29:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] NOT NULL,
	[CustomerName] [nvarchar](255) NULL,
	[ContactName] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[PostalCode] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 11/27/2019 4:29:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] NOT NULL,
	[LastName] [nvarchar](255) NULL,
	[FirstName] [nvarchar](255) NULL,
	[BirthDate] [date] NULL,
	[Photo] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/27/2019 4:29:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/27/2019 4:29:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[EmployeeID] [int] NULL,
	[OrderDate] [date] NULL,
	[ShipperID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/27/2019 4:29:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](255) NULL,
	[SupplierID] [int] NULL,
	[CategoryID] [int] NULL,
	[Unit] [nvarchar](255) NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (1, N'Beverages', N'Soft drinks, coffees, teas, beers, and ales')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (2, N'Condiments', N'Sweet and savory sauces, relishes, spreads, and seasonings')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (3, N'Confections', N'Desserts, candies, and sweet breads')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (4, N'Dairy Products', N'Cheeses')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (5, N'Grains/Cereals', N'Breads, crackers, pasta, and cereal')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (6, N'Meat/Poultry', N'Prepared meats')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (7, N'Produce', N'Dried fruit and bean curd')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (8, N'Seafood', N'Seaweed and fish')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (1, N'Alfreds Futterkiste', N'Maria Anders', N'Obere Str. 57', N'Berlin', N'12209', N'Germany')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (2, N'Ana Trujillo Emparedados y helados', N'Ana Trujillo', N'Avda. de la Constituci?n 2222', N'M?xico D.F.', N'05021', N'Mexico')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (3, N'Antonio Moreno Taquer?a', N'Antonio Moreno', N'Mataderos 2312', N'M?xico D.F.', N'05023', N'Mexico')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (4, N'Around the Horn', N'Thomas Hardy', N'120 Hanover Sq.', N'London', N'WA1 1DP', N'UK')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (5, N'Berglunds snabbk?p', N'Christina Berglund', N'Berguvsv?gen 8', N'Lule?', N'S-958 22', N'Sweden')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (6, N'Blauer See Delikatessen', N'Hanna Moos', N'Forsterstr. 57', N'Mannheim', N'68306', N'Germany')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (7, N'Blondel p?re et fils', N'Fr?d?rique Citeaux', N'24, place Kl?ber', N'Strasbourg', N'67000', N'France')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (8, N'B?lido Comidas preparadas', N'Mart?n Sommer', N'C/ Araquil, 67', N'Madrid', N'28023', N'Spain')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (9, N'Bon app', N'Laurence Lebihans', N'12, rue des Bouchers', N'Marseille', N'13008', N'France')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (10, N'Bottom-Dollar Marketse', N'Elizabeth Lincoln', N'23 Tsawassen Blvd.', N'Tsawassen', N'T2F 8M4', N'Canada')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (11, N'B s Beverages', N'Victoria Ashworth', N'Fauntleroy Circus', N'London', N'EC2 5NT', N'UK')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (12, N'Cactus Comidas para llevar', N'Patricio Simpson', N'Cerrito 333', N'Buenos Aires', N'1010', N'Argentina')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (13, N'Centro comercial Moctezuma', N'Francisco Chang', N'Sierras de Granada 9993', N'M?xico D.F.', N'05022', N'Mexico')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (14, N'Chop-suey Chinese', N'Yang Wang', N'Hauptstr. 29', N'Bern', N'3012', N'Switzerland')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (15, N'Com?rcio Mineiro', N'Pedro Afonso', N'Av. dos Lus?adas, 23', N'S?o Paulo', N'05432-043', N'Brazil')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (16, N'Consolidated Holdings', N'Elizabeth Brown', N'Berkeley Gardens 12 Brewery ', N'London', N'WX1 6LT', N'UK')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (17, N'Drachenblut Delikatessend', N'Sven Ottlieb', N'Walserweg 21', N'Aachen', N'52066', N'Germany')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (18, N'Du monde entier', N'Janine Labrune', N'67, rue des Cinquante Otages', N'Nantes', N'44000', N'France')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (19, N'Eastern Connection', N'Ann Devon', N'35 King George', N'London', N'WX3 6FW', N'UK')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (20, N'Ernst Handel', N'Roland Mendel', N'Kirchgasse 6', N'Graz', N'8010', N'Austria')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (21, N'Familia Arquibaldo', N'Aria Cruz', N'Rua Or?s, 92', N'S?o Paulo', N'05442-030', N'Brazil')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (22, N'FISSA Fabrica Inter. Salchichas S.A.', N'Diego Roel', N'C/ Moralzarzal, 86', N'Madrid', N'28034', N'Spain')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (23, N'Folies gourmandes', N'Martine Ranc?', N'184, chauss?e de Tournai', N'Lille', N'59000', N'France')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (24, N'Folk och f? HB', N'Maria Larsson', N'?kergatan 24', N'Br?cke', N'S-844 67', N'Sweden')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (25, N'Frankenversand', N'Peter Franken', N'Berliner Platz 43', N'M?nchen', N'80805', N'Germany')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (26, N'France restauration', N'Carine Schmitt', N'54, rue Royale', N'Nantes', N'44000', N'France')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (27, N'Franchi S.p.A.', N'Paolo Accorti', N'Via Monte Bianco 34', N'Torino', N'10100', N'Italy')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (28, N'Furia Bacalhau e Frutos do Mar', N'Lino Rodriguez ', N'Jardim das rosas n. 32', N'Lisboa', N'1675', N'Portugal')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (29, N'Galer?a del gastr?nomo', N'Eduardo Saavedra', N'Rambla de Catalu?a, 23', N'Barcelona', N'08022', N'Spain')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (30, N'Godos Cocina T?pica', N'Jos? Pedro Freyre', N'C/ Romero, 33', N'Sevilla', N'41101', N'Spain')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (31, N'Gourmet Lanchonetes', N'Andr? Fonseca', N'Av. Brasil, 442', N'Campinas', N'04876-786', N'Brazil')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (32, N'Great Lakes Food Market', N'Howard Snyder', N'2732 Baker Blvd.', N'Eugene', N'97403', N'USA')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (33, N'GROSELLA-Restaurante', N'Manuel Pereira', N'5? Ave. Los Palos Grandes', N'Caracas', N'1081', N'Venezuela')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (34, N'Hanari Carnes', N'Mario Pontes', N'Rua do Pa?o, 67', N'Rio de Janeiro', N'05454-876', N'Brazil')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (35, N'HILARI?N-Abastos', N'Carlos Hern?ndez', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Crist?bal', N'5022', N'Venezuela')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (36, N'Hungry Coyote Import Store', N'Yoshi Latimer', N'City Center Plaza 516 Main St.', N'Elgin', N'97827', N'USA')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (37, N'Hungry Owl All-Night Grocers', N'Patricia McKenna', N'8 Johnstown Road', N'Cork', N'', N'Ireland')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (38, N'Island Trading', N'Helen Bennett', N'Garden House Crowther Way', N'Cowes', N'PO31 7PJ', N'UK')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (39, N'K?niglich Essen', N'Philip Cramer', N'Maubelstr. 90', N'Brandenburg', N'14776', N'Germany')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (40, N'La corne d abondance', N'Daniel Tonini', N'67, avenue de l Europe', N'Versailles', N'78000', N'France')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (41, N'La maison d Asie', N'Annette Roulet', N'1 rue Alsace-Lorraine', N'Toulouse', N'31000', N'France')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (42, N'Laughing Bacchus Wine Cellars', N'Yoshi Tannamuri', N'1900 Oak St.', N'Vancouver', N'V3F 2K1', N'Canada')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (43, N'Lazy K Kountry Store', N'John Steel', N'12 Orchestra Terrace', N'Walla Walla', N'99362', N'USA')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (44, N'Lehmanns Marktstand', N'Renate Messner', N'Magazinweg 7', N'Frankfurt a.M. ', N'60528', N'Germany')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (45, N'Let s Stop N Shop', N'Jaime Yorres', N'87 Polk St. Suite 5', N'San Francisco', N'94117', N'USA')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (46, N'LILA-Supermercado', N'Carlos Gonz?lez', N'Carrera 52 con Ave. Bol?var #65-98 Llano Largo', N'Barquisimeto', N'3508', N'Venezuela')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (47, N'LINO-Delicateses', N'Felipe Izquierdo', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'4980', N'Venezuela')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (48, N'Lonesome Pine Restaurant', N'Fran Wilson', N'89 Chiaroscuro Rd.', N'Portland', N'97219', N'USA')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (49, N'Magazzini Alimentari Riuniti', N'Giovanni Rovelli', N'Via Ludovico il Moro 22', N'Bergamo', N'24100', N'Italy')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (50, N'Maison Dewey', N'Catherine Dewey', N'Rue Joseph-Bens 532', N'Bruxelles', N'B-1180', N'Belgium')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (51, N'M?re Paillarde', N'Jean Fresni?re', N'43 rue St. Laurent', N'Montr?al', N'H1J 1C3', N'Canada')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (52, N'Morgenstern Gesundkost', N'Alexander Feuer', N'Heerstr. 22', N'Leipzig', N'04179', N'Germany')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (53, N'North/South', N'Simon Crowther', N'South House 300 Queensbridge', N'London', N'SW7 1RZ', N'UK')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (54, N'Oc?ano Atl?ntico Ltda.', N'Yvonne Moncada', N'Ing. Gustavo Moncada 8585 Piso 20-A', N'Buenos Aires', N'1010', N'Argentina')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (55, N'Old World Delicatessen', N'Rene Phillips', N'2743 Bering St.', N'Anchorage', N'99508', N'USA')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (56, N'Ottilies K?seladen', N'Henriette Pfalzheim', N'Mehrheimerstr. 369', N'K?ln', N'50739', N'Germany')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (57, N'Paris sp?cialit?s', N'Marie Bertrand', N'265, boulevard Charonne', N'Paris', N'75012', N'France')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (58, N'Pericles Comidas cl?sicas', N'Guillermo Fern?ndez', N'Calle Dr. Jorge Cash 321', N'M?xico D.F.', N'05033', N'Mexico')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (59, N'Piccolo und mehr', N'Georg Pipps', N'Geislweg 14', N'Salzburg', N'5020', N'Austria')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (60, N'Princesa Isabel Vinhoss', N'Isabel de Castro', N'Estrada da sa?de n. 58', N'Lisboa', N'1756', N'Portugal')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (61, N'Que Del?cia', N'Bernardo Batista', N'Rua da Panificadora, 12', N'Rio de Janeiro', N'02389-673', N'Brazil')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (62, N'Queen Cozinha', N'L?cia Carvalho', N'Alameda dos Can?rios, 891', N'S?o Paulo', N'05487-020', N'Brazil')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (63, N'QUICK-Stop', N'Horst Kloss', N'Taucherstra?e 10', N'Cunewalde', N'01307', N'Germany')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (64, N'Rancho grande', N'Sergio Guti?rrez', N'Av. del Libertador 900', N'Buenos Aires', N'1010', N'Argentina')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (65, N'Rattlesnake Canyon Grocery', N'Paula Wilson', N'2817 Milton Dr.', N'Albuquerque', N'87110', N'USA')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (66, N'Reggiani Caseifici', N'Maurizio Moroni', N'Strada Provinciale 124', N'Reggio Emilia', N'42100', N'Italy')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (67, N'Ricardo Adocicados', N'Janete Limeira', N'Av. Copacabana, 267', N'Rio de Janeiro', N'02389-890', N'Brazil')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (68, N'Richter Supermarkt', N'Michael Holz', N'Grenzacherweg 237', N'Gen?ve', N'1203', N'Switzerland')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (69, N'Romero y tomillo', N'Alejandra Camino', N'Gran V?a, 1', N'Madrid', N'28001', N'Spain')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (70, N'Sant? Gourmet', N'Jonas Bergulfsen', N'Erling Skakkes gate 78', N'Stavern', N'4110', N'Norway')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (71, N'Save-a-lot Markets', N'Jose Pavarotti', N'187 Suffolk Ln.', N'Boise', N'83720', N'USA')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (72, N'Seven Seas Imports', N'Hari Kumar', N'90 Wadhurst Rd.', N'London', N'OX15 4NB', N'UK')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (73, N'Simons bistro', N'Jytte Petersen', N'Vinb?ltet 34', N'K?benhavn', N'1734', N'Denmark')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (74, N'Sp?cialit?s du monde', N'Dominique Perrier', N'25, rue Lauriston', N'Paris', N'75016', N'France')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (75, N'Split Rail Beer & Ale', N'Art Braunschweiger', N'P.O. Box 555', N'Lander', N'82520', N'USA')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (76, N'Supr?mes d?lices', N'Pascale Cartrain', N'Boulevard Tirou, 255', N'Charleroi', N'B-6000', N'Belgium')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (77, N'The Big Cheese', N'Liz Nixon', N'89 Jefferson Way Suite 2', N'Portland', N'97201', N'USA')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (78, N'The Cracker Box', N'Liu Wong', N'55 Grizzly Peak Rd.', N'Butte', N'59801', N'USA')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (79, N'Toms Spezialit?ten', N'Karin Josephs', N'Luisenstr. 48', N'M?nster', N'44087', N'Germany')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (80, N'Tortuga Restaurante', N'Miguel Angel Paolino', N'Avda. Azteca 123', N'M?xico D.F.', N'05033', N'Mexico')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (81, N'Tradi??o Hipermercados', N'Anabela Domingues', N'Av. In?s de Castro, 414', N'S?o Paulo', N'05634-030', N'Brazil')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (82, N'Trails Head Gourmet Provisioners', N'Helvetius Nagy', N'722 DaVinci Blvd.', N'Kirkland', N'98034', N'USA')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (83, N'Vaffeljernet', N'Palle Ibsen', N'Smagsl?get 45', N'?rhus', N'8200', N'Denmark')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (84, N'Victuailles en stock', N'Mary Saveley', N'2, rue du Commerce', N'Lyon', N'69004', N'France')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (85, N'Vins et alcools Chevalier', N'Paul Henriot', N'59 rue de lAbbaye', N'Reims', N'51100', N'France')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (86, N'Die Wandernde Kuh', N'Rita M?ller', N'Adenauerallee 900', N'Stuttgart', N'70563', N'Germany')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (87, N'Wartian Herkku', N'Pirkko Koskitalo', N'Torikatu 38', N'Oulu', N'90110', N'Finland')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (88, N'Wellington Importadora', N'Paula Parente', N'Rua do Mercado, 12', N'Resende', N'08737-363', N'Brazil')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (89, N'White Clover Markets', N'Karl Jablonski', N'305 - 14th Ave. S. Suite 3B', N'Seattle', N'98128', N'USA')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (90, N'Wilman Kala', N'Matti Karttunen', N'Keskuskatu 45', N'Helsinki', N'21240', N'Finland')
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (91, N'Wolski', N'Zbyszek', N'ul. Filtrowa 68', N'Walla', N'01-012', N'Poland')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo]) VALUES (1, N'Davolio', N'Nancy', CAST(N'1968-12-08' AS Date), N'EmpID1.pic')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo]) VALUES (2, N'Leverling', N'Janet', CAST(N'1963-08-30' AS Date), N'EmpID3.pic')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo]) VALUES (3, N'Peacock', N'Margaret', CAST(N'1958-09-19' AS Date), N'EmpID4.pic')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo]) VALUES (4, N'Suyama', N'Michael', CAST(N'1963-07-02' AS Date), N'EmpID6.pic')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo]) VALUES (5, N'King', N'Robert', CAST(N'1960-05-29' AS Date), N'EmpID7.pic')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo]) VALUES (6, N'Callahan', N'Laura', CAST(N'1958-01-09' AS Date), N'EmpID8.pic')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo]) VALUES (7, N'Dodsworth', N'Anne', CAST(N'1969-07-02' AS Date), N'EmpID9.pic')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo]) VALUES (8, N'West', N'Adam', CAST(N'1928-09-19' AS Date), N'EmpID10.pic')
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (1, 10248, 11, 12)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (2, 10248, 42, 10)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (3, 10248, 72, 5)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (4, 10249, 14, 9)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (5, 10249, 51, 40)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (6, 10250, 41, 10)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (7, 10250, 51, 35)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (8, 10250, 65, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (9, 10251, 22, 6)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (10, 10251, 57, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (11, 10251, 65, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (12, 10252, 20, 40)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (13, 10252, 33, 25)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (14, 10252, 60, 40)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (15, 10253, 31, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (16, 10253, 39, 42)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (17, 10253, 49, 40)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (18, 10254, 24, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (19, 10254, 55, 21)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (20, 10254, 74, 21)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (21, 10255, 2, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (22, 10255, 16, 35)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (23, 10255, 36, 25)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10248, 90, 5, CAST(N'1996-07-04' AS Date), 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10249, 81, 6, CAST(N'1996-07-05' AS Date), 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10250, 34, 4, CAST(N'1996-07-08' AS Date), 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10251, 84, 3, CAST(N'1996-07-08' AS Date), 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10252, 76, 4, CAST(N'1996-07-09' AS Date), 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10253, 34, 3, CAST(N'1996-07-10' AS Date), 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10254, 14, 5, CAST(N'1996-07-11' AS Date), 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10255, 68, 9, CAST(N'1996-07-12' AS Date), 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10256, 88, 3, CAST(N'1996-07-15' AS Date), 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10257, 35, 4, CAST(N'1996-07-16' AS Date), 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10258, 20, 1, CAST(N'1996-07-17' AS Date), 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10259, 13, 4, CAST(N'1996-07-18' AS Date), 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10260, 55, 4, CAST(N'1996-07-19' AS Date), 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10261, 61, 4, CAST(N'1996-07-19' AS Date), 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10262, 65, 8, CAST(N'1996-07-22' AS Date), 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10263, 20, 9, CAST(N'1996-07-23' AS Date), 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10264, 24, 6, CAST(N'1996-07-24' AS Date), 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10265, 7, 2, CAST(N'1996-07-25' AS Date), 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10266, 87, 3, CAST(N'1996-07-26' AS Date), 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10267, 25, 4, CAST(N'1996-07-29' AS Date), 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10268, 33, 8, CAST(N'1996-07-30' AS Date), 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10269, 89, 5, CAST(N'1996-07-31' AS Date), 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10270, 87, 1, CAST(N'1996-08-01' AS Date), 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10271, 75, 6, CAST(N'1996-08-01' AS Date), 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10272, 65, 6, CAST(N'1996-08-02' AS Date), 2)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (1, N'Chais', 1, 1, N'10 boxes x 20 bags', 18.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (2, N'Chang', 1, 1, N'24 - 12 oz bottles', 19.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (3, N'Aniseed Syrup', 1, 2, N'12 - 550 ml bottles', 10.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (4, N'Chef Antons Cajun Seasoning', 2, 2, N'48 - 6 oz jars', 22.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (5, N'Chef Antons Gumbo Mix', 2, 2, N'36 boxes', 21.3500)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (6, N'Grandmas Boysenberry Spread', 3, 2, N'12 - 8 oz jars', 25.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (7, N'Uncle Bobs Organic Dried Pears', 3, 7, N'12 - 1 lb pkgs.', 30.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (8, N'Northwoods Cranberry Sauce', 3, 2, N'12 - 12 oz jars', 400.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (9, N'Mishi Kobe Niku', 4, 6, N'18 - 500 g pkgs.', 97.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (10, N'Ikura', 4, 8, N'12 - 200 ml jars', 31.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (11, N'Queso Cabrales', 5, 4, N'1 kg pkg.', 21.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (12, N'Queso Manchego La Pastora', 5, 4, N'10 - 500 g pkgs.', 38.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (13, N'Konbu', 6, 8, N'2 kg box', 6.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (14, N'Tofu', 6, 7, N'40 - 100 g pkgs.', 23.2500)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (15, N'Genen Shouyu', 6, 2, N'24 - 250 ml bottles', 15.5000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (16, N'Pavlova', 7, 3, N'32 - 500 g boxes', 17.4500)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (17, N'Alice Mutton', 7, 6, N'20 - 1 kg tins', 39.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (18, N'Carnarvon Tigers', 7, 8, N'16 kg pkg.', 62.5000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (19, N'Teatime Chocolate Biscuits', 8, 3, N'10 boxes x 12 pieces', 9.2000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (20, N'Sir Rodneys Marmalade', 8, 3, N'30 gift boxes', 81.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (21, N'Sir Rodneys Scones', 8, 3, N'24 pkgs. x 4 pieces', 10.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (22, N'Gustafs Kn?ckebr?d', 9, 5, N'24 - 500 g pkgs.', 21.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (23, N'Tunnbr?d', 9, 5, N'12 - 250 g pkgs.', 9.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (24, N'Guaran? Fant?stica', 10, 1, N'12 - 355 ml cans', 4.5000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (25, N'NuNuCa Nu?-Nougat-Creme', 11, 3, N'20 - 450 g glasses', 14.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (26, N'Gumb?r Gummib?rchen', 11, 3, N'100 - 250 g bags', 31.2300)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (27, N'Schoggi Schokolade', 11, 3, N'100 - 100 g pieces', 43.9000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (28, N'R?ssle Sauerkraut', 12, 7, N'25 - 825 g cans', 45.6000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (29, N'Th?ringer Rostbratwurst', 12, 6, N'50 bags x 30 sausgs.', 123.7900)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (30, N'Nord-Ost Matjeshering', 13, 8, N'10 - 200 g glasses', 25.8900)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (31, N'Gorgonzola Telino', 14, 4, N'12 - 100 g pkgs', 12.5000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (32, N'Mascarpone Fabioli', 14, 4, N'24 - 200 g pkgs.', 32.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (33, N'Geitost', 15, 4, N'500 g', 2.5000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (34, N'Sasquatch Ale', 16, 1, N'24 - 12 oz bottles', 14.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (35, N'Steeleye Stout', 16, 1, N'24 - 12 oz bottles', 18.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (36, N'Inlagd Sill', 17, 8, N'24 - 250 g jars', 19.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (37, N'Gravad lax', 17, 8, N'12 - 500 g pkgs.', 26.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (38, N'C?te de Blaye', 18, 1, N'12 - 75 cl bottles', 263.5000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (39, N'Chartreuse verte', 18, 1, N'750 cc per bottle', 18.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (40, N'Boston Crab Meat', 19, 8, N'24 - 4 oz tins', 18.4000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (41, N'Jacks New England Clam Chowder', 19, 8, N'12 - 12 oz cans', 9.6500)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (42, N'Singaporean Hokkien Fried Mee', 20, 5, N'32 - 1 kg pkgs.', 14.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (43, N'Ipoh Coffee', 20, 1, N'16 - 500 g tins', 46.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (44, N'Gula Malacca', 20, 2, N'20 - 2 kg bags', 19.4500)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (45, N'R?gede sild', 21, 8, N'1k pkg.', 9.5000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (46, N'Spegesild', 21, 8, N'4 - 450 g glasses', 12.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (47, N'Zaanse koeken', 22, 3, N'10 - 4 oz boxes', 9.5000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (48, N'Chocolade', 22, 3, N'10 pkgs.', 12.7500)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (49, N'Maxilaku', 23, 3, N'24 - 50 g pkgs.', 20.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (50, N'Valkoinen suklaa', 23, 3, N'12 - 100 g bars', 16.2500)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (51, N'Manjimup Dried Apples', 24, 7, N'50 - 300 g pkgs.', 53.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (52, N'Filo Mix', 24, 5, N'16 - 2 kg boxes', 7.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (53, N'Perth Pasties', 24, 6, N'48 pieces', 32.8000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (54, N'Tourti?re', 25, 6, N'16 pies', 7.4500)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (55, N'P?t? chinois', 25, 6, N'24 boxes x 2 pies', 24.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (56, N'Gnocchi di nonna Alice', 26, 5, N'24 - 250 g pkgs.', 38.0000)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (57, N'Ravioli Angelo', 26, 5, N'24 - 250 g pkgs.', 19.5000)
GO
USE [master]
GO
ALTER DATABASE [customer] SET  READ_WRITE 
GO
