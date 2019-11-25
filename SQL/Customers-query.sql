
CREATE TABLE Categories (
CategoryID int NOT NULL PRIMARY KEY ,
CategoryName NVARCHAR(255),
Description NVARCHAR(255))

INSERT INTO Categories (CategoryID,CategoryName,Description) VALUES (1,'Beverages','Soft drinks, coffees, teas, beers, and ales')
INSERT INTO Categories (CategoryID,CategoryName,Description) VALUES (2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings')
INSERT INTO Categories (CategoryID,CategoryName,Description) VALUES (3,'Confections','Desserts, candies, and sweet breads')
INSERT INTO Categories (CategoryID,CategoryName,Description) VALUES (4,'Dairy Products','Cheeses')
INSERT INTO Categories (CategoryID,CategoryName,Description) VALUES (5,'Grains/Cereals','Breads, crackers, pasta, and cereal')
INSERT INTO Categories (CategoryID,CategoryName,Description) VALUES (6,'Meat/Poultry','Prepared meats')
INSERT INTO Categories (CategoryID,CategoryName,Description) VALUES (7,'Produce','Dried fruit and bean curd')
INSERT INTO Categories (CategoryID,CategoryName,Description) VALUES (8,'Seafood','Seaweed and fish')


DELETE TOP (100) PERCENT FROM Categories;

CREATE TABLE Customers (
CustomerID INTEGER NOT NULL PRIMARY KEY ,
CustomerName NVARCHAR(255),
ContactName NVARCHAR(255),
Address NVARCHAR(255),
City NVARCHAR(255),
PostalCode NVARCHAR(255),
Country NVARCHAR(255))



                   
INSERT INTO Customers  VALUES (1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany')
INSERT INTO Customers  VALUES (2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','México D.F.','05021','Mexico')
INSERT INTO Customers  VALUES (3,'Antonio Moreno Taquería','Antonio Moreno','Mataderos 2312','México D.F.','05023','Mexico')     
INSERT INTO Customers  VALUES (4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK')     
INSERT INTO Customers  VALUES (5,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleå','S-958 22','Sweden')     
INSERT INTO Customers   VALUES (6,'Blauer See Delikatessen','Hanna Moos','Forsterstr. 57','Mannheim','68306','Germany')     
INSERT INTO Customers   VALUES (7,'Blondel père et fils','Frédérique Citeaux','24, place Kléber','Strasbourg','67000','France')     
INSERT INTO Customers   VALUES (8,'Bólido Comidas preparadas','Martín Sommer','C/ Araquil, 67','Madrid','28023','Spain')     
INSERT INTO Customers   VALUES (9,'Bon app','Laurence Lebihans','12, rue des Bouchers','Marseille','13008','France')     
INSERT INTO Customers   VALUES (10,'Bottom-Dollar Marketse','Elizabeth Lincoln','23 Tsawassen Blvd.','Tsawassen','T2F 8M4','Canada')     
INSERT INTO Customers   VALUES (11,'B s Beverages','Victoria Ashworth','Fauntleroy Circus','London','EC2 5NT','UK')     
INSERT INTO Customers   VALUES (12,'Cactus Comidas para llevar','Patricio Simpson','Cerrito 333','Buenos Aires','1010','Argentina')     
INSERT INTO Customers   VALUES (13,'Centro comercial Moctezuma','Francisco Chang','Sierras de Granada 9993','México D.F.','05022','Mexico')     
INSERT INTO Customers   VALUES (14,'Chop-suey Chinese','Yang Wang','Hauptstr. 29','Bern','3012','Switzerland')     
INSERT INTO Customers   VALUES (15,'Comércio Mineiro','Pedro Afonso','Av. dos Lusíadas, 23','São Paulo','05432-043','Brazil')     
INSERT INTO Customers  VALUES (16,'Consolidated Holdings','Elizabeth Brown','Berkeley Gardens 12 Brewery ','London','WX1 6LT','UK')    
INSERT INTO Customers   VALUES (17,'Drachenblut Delikatessend','Sven Ottlieb','Walserweg 21','Aachen','52066','Germany')     
INSERT INTO Customers   VALUES (18,'Du monde entier','Janine Labrune','67, rue des Cinquante Otages','Nantes','44000','France')     
INSERT INTO Customers   VALUES (19,'Eastern Connection','Ann Devon','35 King George','London','WX3 6FW','UK')     
INSERT INTO Customers   VALUES (20,'Ernst Handel','Roland Mendel','Kirchgasse 6','Graz','8010','Austria')     
INSERT INTO Customers   VALUES (21,'Familia Arquibaldo','Aria Cruz','Rua Orós, 92','São Paulo','05442-030','Brazil')     
INSERT INTO Customers   VALUES (22,'FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','C/ Moralzarzal, 86','Madrid','28034','Spain')     
INSERT INTO Customers   VALUES (23,'Folies gourmandes','Martine Rancé','184, chaussée de Tournai','Lille','59000','France')    
INSERT INTO Customers   VALUES (24,'Folk och fä HB','Maria Larsson','Åkergatan 24','Bräcke','S-844 67','Sweden')    
INSERT INTO Customers   VALUES (25,'Frankenversand','Peter Franken','Berliner Platz 43','München','80805','Germany')     
INSERT INTO Customers   VALUES (26,'France restauration','Carine Schmitt','54, rue Royale','Nantes','44000','France')    
INSERT INTO Customers  VALUES (27,'Franchi S.p.A.','Paolo Accorti','Via Monte Bianco 34','Torino','10100','Italy')    
INSERT INTO Customers  VALUES (28,'Furia Bacalhau e Frutos do Mar','Lino Rodriguez ','Jardim das rosas n. 32','Lisboa','1675','Portugal')    
INSERT INTO Customers   VALUES (29,'Galería del gastrónomo','Eduardo Saavedra','Rambla de Cataluña, 23','Barcelona','08022','Spain')    
INSERT INTO Customers   VALUES (30,'Godos Cocina Típica','José Pedro Freyre','C/ Romero, 33','Sevilla','41101','Spain')     
INSERT INTO Customers   VALUES (31,'Gourmet Lanchonetes','André Fonseca','Av. Brasil, 442','Campinas','04876-786','Brazil')     
INSERT INTO Customers   VALUES (32,'Great Lakes Food Market','Howard Snyder','2732 Baker Blvd.','Eugene','97403','USA')     
INSERT INTO Customers   VALUES (33,'GROSELLA-Restaurante','Manuel Pereira','5ª Ave. Los Palos Grandes','Caracas','1081','Venezuela')     
INSERT INTO Customers  VALUES (34,'Hanari Carnes','Mario Pontes','Rua do Paço, 67','Rio de Janeiro','05454-876','Brazil')     
INSERT INTO Customers   VALUES (35,'HILARIÓN-Abastos','Carlos Hernández','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal','5022','Venezuela')     
INSERT INTO Customers  VALUES (36,'Hungry Coyote Import Store','Yoshi Latimer','City Center Plaza 516 Main St.','Elgin','97827','USA')    
INSERT INTO Customers   VALUES (37,'Hungry Owl All-Night Grocers','Patricia McKenna','8 Johnstown Road','Cork','','Ireland')    
INSERT INTO Customers   VALUES (38,'Island Trading','Helen Bennett','Garden House Crowther Way','Cowes','PO31 7PJ','UK')    
INSERT INTO Customers   VALUES (39,'Königlich Essen','Philip Cramer','Maubelstr. 90','Brandenburg','14776','Germany')     
INSERT INTO Customers   VALUES (40,'La corne d abondance','Daniel Tonini','67, avenue de l Europe','Versailles','78000','France')     
INSERT INTO Customers   VALUES (41,'La maison d Asie','Annette Roulet','1 rue Alsace-Lorraine','Toulouse','31000','France')     
INSERT INTO Customers   VALUES (42,'Laughing Bacchus Wine Cellars','Yoshi Tannamuri','1900 Oak St.','Vancouver','V3F 2K1','Canada')    
INSERT INTO Customers   VALUES (43,'Lazy K Kountry Store','John Steel','12 Orchestra Terrace','Walla Walla','99362','USA')    
INSERT INTO Customers  VALUES (44,'Lehmanns Marktstand','Renate Messner','Magazinweg 7','Frankfurt a.M. ','60528','Germany')     
INSERT INTO Customers   VALUES (45,'Let s Stop N Shop','Jaime Yorres','87 Polk St. Suite 5','San Francisco','94117','USA')     
INSERT INTO Customers   VALUES (46,'LILA-Supermercado','Carlos González','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','3508','Venezuela')     
INSERT INTO Customers   VALUES (47,'LINO-Delicateses','Felipe Izquierdo','Ave. 5 de Mayo Porlamar','I. de Margarita','4980','Venezuela')     
INSERT INTO Customers  VALUES (48,'Lonesome Pine Restaurant','Fran Wilson','89 Chiaroscuro Rd.','Portland','97219','USA')     
INSERT INTO Customers   VALUES (49,'Magazzini Alimentari Riuniti','Giovanni Rovelli','Via Ludovico il Moro 22','Bergamo','24100','Italy')     
INSERT INTO Customers   VALUES (50,'Maison Dewey','Catherine Dewey','Rue Joseph-Bens 532','Bruxelles','B-1180','Belgium')    
INSERT INTO Customers   VALUES (51,'Mère Paillarde','Jean Fresnière','43 rue St. Laurent','Montréal','H1J 1C3','Canada')     
INSERT INTO Customers   VALUES (52,'Morgenstern Gesundkost','Alexander Feuer','Heerstr. 22','Leipzig','04179','Germany')    
INSERT INTO Customers   VALUES (53,'North/South','Simon Crowther','South House 300 Queensbridge','London','SW7 1RZ','UK')     
INSERT INTO Customers   VALUES (54,'Océano Atlántico Ltda.','Yvonne Moncada','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires','1010','Argentina')    
INSERT INTO Customers  VALUES (55,'Old World Delicatessen','Rene Phillips','2743 Bering St.','Anchorage','99508','USA')     
INSERT INTO Customers   VALUES (56,'Ottilies Käseladen','Henriette Pfalzheim','Mehrheimerstr. 369','Köln','50739','Germany')     
INSERT INTO Customers   VALUES (57,'Paris spécialités','Marie Bertrand','265, boulevard Charonne','Paris','75012','France')     
INSERT INTO Customers   VALUES (58,'Pericles Comidas clásicas','Guillermo Fernández','Calle Dr. Jorge Cash 321','México D.F.','05033','Mexico')     
INSERT INTO Customers   VALUES (59,'Piccolo und mehr','Georg Pipps','Geislweg 14','Salzburg','5020','Austria')     
INSERT INTO Customers  VALUES (60,'Princesa Isabel Vinhoss','Isabel de Castro','Estrada da saúde n. 58','Lisboa','1756','Portugal')     
INSERT INTO Customers   VALUES (61,'Que Delícia','Bernardo Batista','Rua da Panificadora, 12','Rio de Janeiro','02389-673','Brazil')    
INSERT INTO Customers  VALUES (62,'Queen Cozinha','Lúcia Carvalho','Alameda dos Canàrios, 891','São Paulo','05487-020','Brazil')  
INSERT INTO Customers   VALUES (63,'QUICK-Stop','Horst Kloss','Taucherstraße 10','Cunewalde','01307','Germany')     
INSERT INTO Customers  VALUES (64,'Rancho grande','Sergio Gutiérrez','Av. del Libertador 900','Buenos Aires','1010','Argentina')     
INSERT INTO Customers   VALUES (65,'Rattlesnake Canyon Grocery','Paula Wilson','2817 Milton Dr.','Albuquerque','87110','USA')    
INSERT INTO Customers  VALUES (66,'Reggiani Caseifici','Maurizio Moroni','Strada Provinciale 124','Reggio Emilia','42100','Italy')     
INSERT INTO Customers   VALUES (67,'Ricardo Adocicados','Janete Limeira','Av. Copacabana, 267','Rio de Janeiro','02389-890','Brazil')     
INSERT INTO Customers   VALUES (68,'Richter Supermarkt','Michael Holz','Grenzacherweg 237','Genève','1203','Switzerland')    
INSERT INTO Customers   VALUES (69,'Romero y tomillo','Alejandra Camino','Gran Vía, 1','Madrid','28001','Spain')     
INSERT INTO Customers   VALUES (70,'Santé Gourmet','Jonas Bergulfsen','Erling Skakkes gate 78','Stavern','4110','Norway')     
INSERT INTO Customers   VALUES (71,'Save-a-lot Markets','Jose Pavarotti','187 Suffolk Ln.','Boise','83720','USA')    
INSERT INTO Customers   VALUES (72,'Seven Seas Imports','Hari Kumar','90 Wadhurst Rd.','London','OX15 4NB','UK')     
INSERT INTO Customers   VALUES (73,'Simons bistro','Jytte Petersen','Vinbæltet 34','København','1734','Denmark')     
INSERT INTO Customers   VALUES (74,'Spécialités du monde','Dominique Perrier','25, rue Lauriston','Paris','75016','France')     
INSERT INTO Customers   VALUES (75,'Split Rail Beer & Ale','Art Braunschweiger','P.O. Box 555','Lander','82520','USA')     
INSERT INTO Customers   VALUES (76,'Suprêmes délices','Pascale Cartrain','Boulevard Tirou, 255','Charleroi','B-6000','Belgium')     
INSERT INTO Customers   VALUES (77,'The Big Cheese','Liz Nixon','89 Jefferson Way Suite 2','Portland','97201','USA')     
INSERT INTO Customers   VALUES (78,'The Cracker Box','Liu Wong','55 Grizzly Peak Rd.','Butte','59801','USA')     
INSERT INTO Customers   VALUES (79,'Toms Spezialitäten','Karin Josephs','Luisenstr. 48','Münster','44087','Germany')    
INSERT INTO Customers   VALUES (80,'Tortuga Restaurante','Miguel Angel Paolino','Avda. Azteca 123','México D.F.','05033','Mexico')    
INSERT INTO Customers   VALUES (81,'Tradição Hipermercados','Anabela Domingues','Av. Inês de Castro, 414','São Paulo','05634-030','Brazil')     
INSERT INTO Customers   VALUES (82,'Trails Head Gourmet Provisioners','Helvetius Nagy','722 DaVinci Blvd.','Kirkland','98034','USA')     
INSERT INTO Customers VALUES (83,'Vaffeljernet','Palle Ibsen','Smagsløget 45','Århus','8200','Denmark')     
INSERT INTO Customers   VALUES (84,'Victuailles en stock','Mary Saveley','2, rue du Commerce','Lyon','69004','France')    
INSERT INTO Customers  VALUES (85,'Vins et alcools Chevalier','Paul Henriot','59 rue de lAbbaye','Reims','51100','France')    
INSERT INTO Customers   VALUES (86,'Die Wandernde Kuh','Rita Müller','Adenauerallee 900','Stuttgart','70563','Germany')    
INSERT INTO Customers   VALUES (87,'Wartian Herkku','Pirkko Koskitalo','Torikatu 38','Oulu','90110','Finland')     
INSERT INTO Customers   VALUES (88,'Wellington Importadora','Paula Parente','Rua do Mercado, 12','Resende','08737-363','Brazil')     
INSERT INTO Customers   VALUES (89,'White Clover Markets','Karl Jablonski','305 - 14th Ave. S. Suite 3B','Seattle','98128','USA')    
INSERT INTO Customers   VALUES (90,'Wilman Kala','Matti Karttunen','Keskuskatu 45','Helsinki','21240','Finland')     
INSERT INTO Customers   VALUES (91,'Wolski','Zbyszek','ul. Filtrowa 68','Walla','01-012','Poland') 




DELETE TOP (100) PERCENT FROM Customers;




CREATE TABLE Employees (
EmployeeID INTEGER NOT NULL PRIMARY KEY ,
LastName NVARCHAR(255),
FirstName NVARCHAR(255),
BirthDate DATE,
Photo NVARCHAR(255))



INSERT INTO Employees (EmployeeID,LastName,FirstName,BirthDate,Photo) VALUES (1,'Davolio','Nancy','1968-12-08','EmpID1.pic')     
INSERT INTO Employees (EmployeeID,LastName,FirstName,BirthDate,Photo) VALUES (2,'Leverling','Janet','1963-08-30','EmpID3.pic')     
INSERT INTO Employees (EmployeeID,LastName,FirstName,BirthDate,Photo) VALUES (3,'Peacock','Margaret','1958-09-19','EmpID4.pic')     
INSERT INTO Employees (EmployeeID,LastName,FirstName,BirthDate,Photo) VALUES (4,'Suyama','Michael','1963-07-02','EmpID6.pic')     
INSERT INTO Employees (EmployeeID,LastName,FirstName,BirthDate,Photo) VALUES (5,'King','Robert','1960-05-29','EmpID7.pic')     
INSERT INTO Employees (EmployeeID,LastName,FirstName,BirthDate,Photo) VALUES (6,'Callahan','Laura','1958-01-09','EmpID8.pic')     
INSERT INTO Employees (EmployeeID,LastName,FirstName,BirthDate,Photo) VALUES (7,'Dodsworth','Anne','1969-07-02','EmpID9.pic')    
INSERT INTO Employees (EmployeeID,LastName,FirstName,BirthDate,Photo) VALUES (8,'West','Adam','1928-09-19','EmpID10.pic') 





CREATE TABLE OrderDetails (
OrderDetailID INTEGER NOT NULL PRIMARY KEY ,
OrderID INT,
ProductID INT,
Quantity INT)


INSERT INTO OrderDetails  VALUES (1,10248,11,12)
INSERT INTO OrderDetails  VALUES (2,10248,42,10)
INSERT INTO OrderDetails  VALUES (3,10248,72,5)
INSERT INTO OrderDetails  VALUES (4,10249,14,9)
INSERT INTO OrderDetails VALUES (5,10249,51,40)
INSERT INTO OrderDetails VALUES (6,10250,41,10)
INSERT INTO OrderDetails  VALUES (7,10250,51,35)
INSERT INTO OrderDetails  VALUES (8,10250,65,15)
INSERT INTO OrderDetails  VALUES (9,10251,22,6)
INSERT INTO OrderDetails  VALUES (10,10251,57,15)
INSERT INTO OrderDetails  VALUES (11,10251,65,20)
INSERT INTO OrderDetails VALUES (12,10252,20,40)
INSERT INTO OrderDetails  VALUES (13,10252,33,25)
INSERT INTO OrderDetails  VALUES (14,10252,60,40)
INSERT INTO OrderDetails VALUES (15,10253,31,20)
INSERT INTO OrderDetails  VALUES (16,10253,39,42)
INSERT INTO OrderDetails  VALUES (17,10253,49,40)
INSERT INTO OrderDetails  VALUES (18,10254,24,15)
INSERT INTO OrderDetails  VALUES (19,10254,55,21)
INSERT INTO OrderDetails  VALUES (20,10254,74,21)
INSERT INTO OrderDetails  VALUES (21,10255,2,20)
INSERT INTO OrderDetails  VALUES (22,10255,16,35)
INSERT INTO OrderDetails  VALUES (23,10255,36,25)


CREATE TABLE Orders (
OrderID INTEGER NOT NULL PRIMARY KEY ,
CustomerID INT,
EmployeeID INT,
OrderDate DATE,
ShipperID INT)




INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10248,90,5,'1996-07-04',3)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10249,81,6,'1996-07-05',1)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10250,34,4,'1996-07-08',2)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10251,84,3,'1996-07-08',1)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10252,76,4,'1996-07-09',2)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10253,34,3,'1996-07-10',2)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10254,14,5,'1996-07-11',2)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10255,68,9,'1996-07-12',3)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10256,88,3,'1996-07-15',2)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10257,35,4,'1996-07-16',3)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10258,20,1,'1996-07-17',1)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10259,13,4,'1996-07-18',3)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10260,55,4,'1996-07-19',1)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10261,61,4,'1996-07-19',2)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10262,65,8,'1996-07-22',3)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10263,20,9,'1996-07-23',3)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10264,24,6,'1996-07-24',3)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10265,7,2,'1996-07-25',1)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10266,87,3,'1996-07-26',3)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10267,25,4,'1996-07-29',1)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10268,33,8,'1996-07-30',3)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10269,89,5,'1996-07-31',1)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10270,87,1,'1996-08-01',1)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10271,75,6,'1996-08-01',2)
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) VALUES (10272,65,6,'1996-08-02',2)





CREATE TABLE Products (
ProductID INTEGER NOT NULL PRIMARY KEY ,
ProductName NVARCHAR(255),
SupplierID INT,
CategoryID INT,
Unit NVARCHAR(255),
Price MONEY)

 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (1,'Chais',1,1,'10 boxes x 20 bags',18)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (2,'Chang',1,1,'24 - 12 oz bottles',19)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (3,'Aniseed Syrup',1,2,'12 - 550 ml bottles',10)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (4,'Chef Antons Cajun Seasoning',2,2,'48 - 6 oz jars',22)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (5,'Chef Antons Gumbo Mix',2,2,'36 boxes',21.35)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (6,'Grandmas Boysenberry Spread',3,2,'12 - 8 oz jars',25)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (7,'Uncle Bobs Organic Dried Pears',3,7,'12 - 1 lb pkgs.',30)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (8,'Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',400)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (9,'Mishi Kobe Niku',4,6,'18 - 500 g pkgs.',97)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (10,'Ikura',4,8,'12 - 200 ml jars',31)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (11,'Queso Cabrales',5,4,'1 kg pkg.',21)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (12,'Queso Manchego La Pastora',5,4,'10 - 500 g pkgs.',38)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (13,'Konbu',6,8,'2 kg box',6)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (14,'Tofu',6,7,'40 - 100 g pkgs.',23.25)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (15,'Genen Shouyu',6,2,'24 - 250 ml bottles',15.5)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (16,'Pavlova',7,3,'32 - 500 g boxes',17.45)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (17,'Alice Mutton',7,6,'20 - 1 kg tins',39)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (18,'Carnarvon Tigers',7,8,'16 kg pkg.',62.5)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (19,'Teatime Chocolate Biscuits',8,3,'10 boxes x 12 pieces',9.2)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (20,'Sir Rodneys Marmalade',8,3,'30 gift boxes',81)   
  INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (21,'Sir Rodneys Scones',8,3,'24 pkgs. x 4 pieces',10)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (22,'Gustafs Knäckebröd',9,5,'24 - 500 g pkgs.',21)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (23,'Tunnbröd',9,5,'12 - 250 g pkgs.',9)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (24,'Guaraná Fantástica',10,1,'12 - 355 ml cans',4.5)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (25,'NuNuCa Nuß-Nougat-Creme',11,3,'20 - 450 g glasses',14)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (26,'Gumbär Gummibärchen',11,3,'100 - 250 g bags',31.23)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (27,'Schoggi Schokolade',11,3,'100 - 100 g pieces',43.9)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (28,'Rössle Sauerkraut',12,7,'25 - 825 g cans',45.6)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (29,'Thüringer Rostbratwurst',12,6,'50 bags x 30 sausgs.',123.79)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (30,'Nord-Ost Matjeshering',13,8,'10 - 200 g glasses',25.89)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (31,'Gorgonzola Telino',14,4,'12 - 100 g pkgs',12.5)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (32,'Mascarpone Fabioli',14,4,'24 - 200 g pkgs.',32)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (33,'Geitost',15,4,'500 g',2.5)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (34,'Sasquatch Ale',16,1,'24 - 12 oz bottles',14)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (35,'Steeleye Stout',16,1,'24 - 12 oz bottles',18)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (36,'Inlagd Sill',17,8,'24 - 250 g jars',19)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (37,'Gravad lax',17,8,'12 - 500 g pkgs.',26)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (38,'Côte de Blaye',18,1,'12 - 75 cl bottles',263.5)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (39,'Chartreuse verte',18,1,'750 cc per bottle',18)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (40,'Boston Crab Meat',19,8,'24 - 4 oz tins',18.4)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (41,'Jacks New England Clam Chowder',19,8,'12 - 12 oz cans',9.65)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (42,'Singaporean Hokkien Fried Mee',20,5,'32 - 1 kg pkgs.',14)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (43,'Ipoh Coffee',20,1,'16 - 500 g tins',46)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (44,'Gula Malacca',20,2,'20 - 2 kg bags',19.45)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (45,'Røgede sild',21,8,'1k pkg.',9.5)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (46,'Spegesild',21,8,'4 - 450 g glasses',12)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (47,'Zaanse koeken',22,3,'10 - 4 oz boxes',9.5)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (48,'Chocolade',22,3,'10 pkgs.',12.75)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (49,'Maxilaku',23,3,'24 - 50 g pkgs.',20)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (50,'Valkoinen suklaa',23,3,'12 - 100 g bars',16.25)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (51,'Manjimup Dried Apples',24,7,'50 - 300 g pkgs.',53)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (52,'Filo Mix',24,5,'16 - 2 kg boxes',7)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (53,'Perth Pasties',24,6,'48 pieces',32.8)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (54,'Tourtière',25,6,'16 pies',7.45)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (55,'Pâté chinois',25,6,'24 boxes x 2 pies',24)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (56,'Gnocchi di nonna Alice',26,5,'24 - 250 g pkgs.',38)    
 INSERT INTO Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price) VALUES (57,'Ravioli Angelo',26,5,'24 - 250 g pkgs.',19.5)