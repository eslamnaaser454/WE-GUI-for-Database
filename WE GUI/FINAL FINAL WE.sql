/*step one : run from the first comment till the second comment*/
/*first comment*/
-------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
/*creating table employees still there is altering after finishing the rest of tables*/
create table Employees(
Ejop_number varchar(8) primary key,
EFrist_name varchar(50)not null,
ESecond_name varchar(50)not null,
EThird_name varchar(50)not null,
ELast_name varchar(50)not null,
Emedical_no int not null,
Einsurance_number int ,
Eemail varchar(70) not null,
Egender varchar(6) not null,
Ecartificate varchar(70) not null,
Ejop_replacement decimal(10,2) not null,
Eposition varchar(50) not null,
Eworking_hours int not null,
Ephone int not null,
Estartdate date not null,
Ebirthdate date not null,
EStreet varchar(20) not null,
EBulding varchar(20) not null,
Supervise_jopnumber varchar(8),
CID varchar(8) ,
DEPname varchar(50) not null,
SAID varchar(10),
unique(Eemail),
foreign key (Supervise_jopnumber) references Employees(Ejop_number),

);
----------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
create table Dependences(
Ejop_number varchar(8)not null,
DEssn varchar(10)not null,
DErelationdegree int not null,
DEFrist_name varchar(50) not null,
DESecond_name varchar(50) not null,
DEThird_name varchar(50) not null,
DELast_name varchar(50) not null,
primary key (DEssn,Ejop_number),
foreign key (Ejop_number) references Employees(Ejop_number)

);
-------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
create table Centrals(
CID varchar(8) primary key,
Cbranch varchar(50) not null,
Clocation varchar(70) not null,
Csector varchar(50) not null,
Cname varchar(50) not null,
Ejop_number varchar(8),
unique(Ejop_number),
foreign key (Ejop_number) references Employees(Ejop_number)
);
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------

create table Stocks(
STID varchar(10) primary key,
STlocation varchar(70) not null,
CID varchar(8),
foreign key (CID) references Centrals(CID)
);
---------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------

create table Departments(
DEPname varchar(50) primary key,
DEPfloor int not null,
DEPserial_number int not null,
unique(DEPserial_number),
CID varchar(8),
Ejop_number varchar(8)  ,
unique(Ejop_number),
foreign key (Ejop_number) references Employees(Ejop_number),
foreign key (CID) references Centrals(CID)
);

----------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------
create table SalesCenters(
SAID varchar(10) primary key,
Saname varchar(50) not null,
Salocation varchar(70) not null,
Sanumber int not null,
STID varchar(10),
CID varchar(8),
foreign key (CID) references Centrals(CID),
foreign key (STID) references Stocks(STID)
);
-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
create table MSAN(
MS_ID varchar(10),
MS_location varchar(50) not null,
MS_capacity decimal(10,2) not null,
MS_weight decimal(10,2) not null,
C_ID varchar(8) not null,
primary key(MS_ID),
foreign key (C_ID) references Centrals (CID)
);
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
create table Cabinates(
CA_ID varchar(10),
CA_location varchar(50) not null,
CA_capacity decimal(10,2) not null,
CA_wiretype varchar(50) not null,
MS_ID varchar(10) not null,
primary key(CA_ID),
foreign key (MS_ID) references MSAN (MS_ID)
);
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

create table Product(
PRO_ID varchar(10),
PRO_name varchar(50) not null,
PRO_description varchar(100) not null,
PRO_price decimal(10,2) not null,
SA_ID varchar(10)not null,
primary key(PRO_ID),
foreign key (SA_ID) references SalesCenters (SAID)
);
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
create table Suppliers(
SUP_number varchar(10),
SUP_name varchar(50) not null,
SUP_email varchar(70) not null,
SUP_phone int not null,
primary key(SUP_number)
);
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
create table Services(
SE_number varchar(10) ,
SE_name varchar(50) not null,
SE_type varchar(50) not null,
SE_price decimal(10,2) not null,
SE_duration int not null,
C_ID varchar(8)not null,
primary key(SE_number),
foreign key (C_ID) references Centrals (CID)
);
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
create table Customer(
CU_SSN varchar(10),
CU_name varchar(50) not null,
CU_email varchar(50) not null,
CU_phone_no int not null,
Street varchar(50) not null,
Building_no varchar(50 )not null,
CU_system varchar(50)not null,
CU_home_no varchar(50)not null,
C_ID varchar(8),
DEP_name varchar(50),
primary key(CU_SSN),
foreign key (C_ID) references Centrals (CID),
foreign key (DEP_name) references Departments (DEPname)
);
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
create table Malfunctions(
MAL_number varchar(10)not null,
MAL_startdate date not null,
MAL_enddate date not null,
MAL_type varchar(50) not null,
cust_number varchar(10) not null,
DEP_name varchar(50) ,
primary key(MAL_number),
foreign key (DEP_name) references Departments (DEPname)
);
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
create table Subscibe_to(
SE_number varchar(10) not null,
CU_SSN varchar(10) not null,
primary key (SE_number,CU_SSN),
foreign key(SE_number) references Services(SE_number),
foreign key(CU_SSN) references Customer(CU_SSN)
);
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
create table Exist_in(
SA_ID varchar(10) not null,
SE_number varchar(10) not null,
primary key (SA_ID,SE_number),
foreign key(SE_number) references Services(SE_number),
foreign key(SA_ID) references SalesCenters(SAID)
);
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
create table Stick_around(
PRO_ID varchar(10)not null,
STID varchar(10)not null,
primary key (PRO_ID,STID),
foreign key(PRO_ID) references Product(PRO_ID),
foreign key(STID) references Stocks(STID)
);
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
create table Visits(
SA_ID varchar(10) not null,
CU_SSN varchar(10)not null,
primary key(SA_ID,CU_SSN),
foreign key(SA_ID) references SalesCenters(SAID),
foreign key(CU_SSN) references Customer(CU_SSN)
);
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
create table Supply(
PRO_ID varchar(10) not null,
SUP_number varchar(10) not null,
primary key(PRO_ID,SUP_number),
foreign key(PRO_ID) references Product(PRO_ID),
foreign key(SUP_number) references Suppliers(SUP_number)
);
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
create table Items_Supplier(
SUP_items varchar(50) not null,
SUP_number varchar(10) not null,
primary key(SUP_items,SUP_number),
foreign key(SUP_number) references Suppliers(SUP_number)
);
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
create table Extras_Services(
SE_extres varchar(10) not null,
SE_number varchar(10) not null,
primary key (SE_extres,SE_number),
foreign key(SE_number) references Services(SE_number)
);
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
/*step two : run from the second comment till the third comment*/
/*second comment */
alter table Employees
add constraint fkempcen foreign key(CID) references Centrals(CID);
alter table Employees
add constraint fkempdep foreign key(DEPname) references Departments(DEPname);
alter table Employees
add constraint fkempsaid foreign key(SAID) references SalesCenters(SAID);
alter table Employees
add Epassword varchar(8)not null;

------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------



/*third comment traaaaa ,your we database is ready to work*/
/*fifth comment : alters not to run*/
/*EXEC sp_rename 'Employees.Einurance_number', 'Einsurance_number', 'COLUMN';

DROP TABLE IF EXISTS Extras_Services;
DROP TABLE IF EXISTS Items_Supplier;
DROP TABLE IF EXISTS Supply;
DROP TABLE IF EXISTS Visits;
DROP TABLE IF EXISTS Stick_around;
DROP TABLE IF EXISTS Exis_in;
DROP TABLE IF EXISTS Subscibe_to;
DROP TABLE IF EXISTS Malfunctions;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Services;
DROP TABLE IF EXISTS Suppliers;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS MSAN;
DROP TABLE IF EXISTS Cabinates;
DROP TABLE IF EXISTS Stocks;
DROP TABLE IF EXISTS SalesCenters;
DROP TABLE IF EXISTS Centrals;
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Dependences;
DROP TABLE IF EXISTS Employees;

ALTER TABLE Employees
ALTER COLUMN Ejop_number varchar(10) ;
ALTER TABLE Employees
ALTER COLUMN EFrist_name varchar(50) NOT NULL;
ALTER TABLE Employees
ALTER COLUMN ESecond_name varchar(50)not null;
ALTER TABLE Employees
ALTER COLUMN EThird_name varchar(50)not null;
ALTER TABLE Employees
ALTER COLUMN ELast_name varchar(50)not null;
ALTER TABLE Employees
ALTER COLUMN Emedical_no int not null;
ALTER TABLE Employees
ALTER COLUMN Einsurance_number int ;
ALTER TABLE Employees
ALTER COLUMN Eemail varchar(70) not null;
ALTER TABLE Employees
ALTER COLUMN Egender varchar(6) not null;
ALTER TABLE Employees
ALTER COLUMN Ecartificate varchar(70) not null;
ALTER TABLE Employees
ALTER COLUMN Ejop_replacement decimal(10,2) not null;
ALTER TABLE Employees
ALTER COLUMN Eposition varchar(50) not null;
ALTER TABLE Employees
ALTER COLUMN Eworking_hours int not null;
ALTER TABLE Employees
ALTER COLUMN Ephone int not null;
ALTER TABLE Employees
ALTER COLUMN Estartdate date not null;
ALTER TABLE Employees
ALTER COLUMN Ebirthdate date not null;
ALTER TABLE Employees
ALTER COLUMN EStreet varchar(20) not null;
ALTER TABLE Employees
ALTER COLUMN EBulding varchar(20) not null;






ALTER TABLE Centrals
ALTER COLUMN Cbranch varchar(50) not null;
ALTER TABLE Centrals
ALTER COLUMN Clocation varchar(70) not null;
ALTER TABLE Centrals
ALTER COLUMN Csector varchar(50) not null;
ALTER TABLE Centrals
ALTER COLUMN Cname varchar(50) not null;

ALTER TABLE Departments
ALTER COLUMN DEPfloor int not null;
ALTER TABLE Departments
ALTER COLUMN DEPserial_number int not null;
ALTER TABLE Departments
add constraint uniq unique (DEPserial_number) ;
ALTER TABLE Departments
drop column DEPserial_number;
ALTER TABLE Departments
add DEPserial_number int not null;

EXEC sp_rename 'Exis_in', 'Exist_in' ; 

alter table Services
drop column SE_reciever;


ALTER TABLE Employees
drop constraint fkempdep;
ALTER TABLE Employees
drop COLUMN DEPname;
ALTER TABLE Employees
add  DEPname varchar(50);*/
ALTER TABLE Employees
drop constraint fkempdep;
ALTER TABLE Employees
drop COLUMN DEPname;
ALTER TABLE Employees
add  DEPname varchar(50) ;
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
/*inserting*/
INSERT INTO Employees (Ejop_number, EFrist_name, ESecond_name, EThird_name, ELast_name, Emedical_no, Einsurance_number, Eemail, Egender, Ecartificate, Ejop_replacement, Eposition, Eworking_hours, Ephone, Estartdate, Ebirthdate, EStreet, EBulding,Epassword)
VALUES
('E002', 'Jane', 'Doe', '', 'Johnson', 234567, NULL, 'jane.doe@example.com', 'Female', 'Certificate 2', 4500.00, 'Supervisor', 35, 76543210, '2022-02-01', '1985-02-01', 'Street 2', 'Building B','85989'),
('E003', 'Robert', 'Smith', '', 'Williams', 345678, 901234, 'robert.smith@example.com', 'Male', 'Certificate 3', 4000.00, 'Employee', 30, 55555555, '2022-03-01', '1990-03-01', 'Street 3', 'Building C','845412'),
('E004', 'Emily', 'Brown', '', 'Davis', 456789, NULL, 'emily.brown@example.com', 'Female', 'Certificate 4', 3500.00, 'Employee', 25, 66666666, '2022-04-01', '1995-04-01', 'Street 4', 'Building D','545322'),
('E005', 'Michael', 'Johnson', '', 'Miller', 567890, 345678, 'michael.johnson@example.com', 'Male', 'Certificate 5', 3000.00, 'Employee', 20, 77777777, '2022-05-01', '2000-05-01', 'Street 5', 'Building E','55125'),
('E006', 'Jessica', 'Anderson', '', 'Wilson', 678901, NULL, 'jessica.anderson@example.com', 'Female', 'Certificate 6', 2500.00, 'Employee', 15, 88888888, '2022-06-01', '2005-06-01', 'Street 6', 'Building F','65666'),
('E007', 'William', 'Taylor', '', 'Thomas', 789012, 567890, 'william.taylor@example.com', 'Male', 'Certificate 7', 2000.00, 'Employee', 10, 99999999, '2022-07-01', '2010-07-01', 'Street 7', 'Building G','584269'),
('E008', 'Sophia', 'Harris', '', 'White', 890123, NULL, 'sophia.harris@example.com', 'Female', 'Certificate 8', 1500.00, 'Employee', 5, 10101010, '2022-08-01', '2015-08-01', 'Street 8', 'Building H','55412'),
('E009', 'David', 'Clark', '', 'Jackson', 901234, 678901, 'david.clark@example.com', 'Male', 'Certificate 9', 1000.00, 'Employee', 40, 11111111, '2022-09-01', '2020-09-01', 'Street 9', 'Building I','94584'),
('E010', 'Olivia', 'Lewis', '', 'Anderson', 112345, NULL, 'olivia.lewis@example.com', 'Female', 'Certificate 10', 900.00, 'Employee', 35, 12121212, '2022-10-01', '2021-10-01', 'Street 10', 'Building J','55265'),
('E011', 'Alexander', 'Lee', '', 'Walker', 223456, 789012, 'alexander.lee@example.com', 'Male', 'Certificate 11', 800.00, 'Employee', 30, 13131313, '2022-11-01', '2022-11-01', 'Street 11', 'Building K','54512'),
('E012', 'Sophie', 'Turner', '', 'Miller', 334455, NULL, 'sophie.turner@example.com', 'Female', 'Certificate 12', 5500.00, 'Supervisor', 40, 12345678, '2022-12-01', '1987-12-01', 'Street 12', 'Building L', '785236'),
('E013', 'Daniel', 'Johnson', '', 'Brown', 445566, 123456, 'daniel.johnson@example.com', 'Male', 'Certificate 13', 5000.00, 'Employee', 35, 23456789, '2023-01-01', '1992-01-01', 'Street 13', 'Building M', '654123'),
('E014', 'Emma', 'White', '', 'Harris', 556677, NULL, 'emma.white@example.com', 'Female', 'Certificate 14', 4500.00, 'Employee', 30, 34567890, '2023-02-01', '1997-02-01', 'Street 14', 'Building N', '875421'),
('E015', 'James', 'Smith', '', 'Taylor', 667788, 234567, 'james.smith@example.com', 'Male', 'Certificate 15', 4000.00, 'Employee', 25, 45678901, '2023-03-01', '2002-03-01', 'Street 15', 'Building O', '965878'),
('E016', 'Sophia', 'Brown', '', 'Wilson', 778899, NULL, 'sophia.brown@example.com', 'Female', 'Certificate 16', 3500.00, 'Employee', 20, 56789012, '2023-04-01', '2007-04-01', 'Street 16', 'Building P', '632541'),
('E017', 'David', 'Williams', '', 'Lee', 889900, 345678, 'david.williams@example.com', 'Male', 'Certificate 17', 3000.00, 'Employee', 15, 67890123, '2023-05-01', '2012-05-01', 'Street 17', 'Building Q', '784512'),
('E018', 'Olivia', 'Turner', '', 'Anderson', 990011, NULL, 'olivia.turner@example.com', 'Female', 'Certificate 18', 2500.00, 'Employee', 10, 78901234, '2023-06-01', '2017-06-01', 'Street 18', 'Building R', '965874'),
('E019', 'Michael', 'Harris', '', 'Martin', 112233, 456789, 'michael.harris@example.com', 'Male', 'Certificate 19', 2000.00, 'Employee', 5, 89012345, '2023-07-01', '2022-07-01', 'Street 19', 'Building S', '745123'),
('E020', 'Sophie', 'Miller', '', 'Jones', 223344, NULL, 'sophie.miller@example.com', 'Female', 'Certificate 20', 1500.00, 'Employee', 40, 90123456, '2023-08-01', '2023-08-01', 'Street 20', 'Building T', '632145'),
('E021', 'Ethan', 'Anderson', '', 'White', 334455, 567890, 'ethan.anderson@example.com', 'Male', 'Certificate 21', 1000.00, 'Employee', 35, 12345678, '2023-09-01', '2020-09-01', 'Street 21', 'Building U', '854796');
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Centrals (CID, Cbranch, Clocation, Csector, Cname, Ejop_number)
VALUES

('C010', 'Branch J', 'Location 10', 'Sector 10', 'Central 10', 'E011'),
('C011', 'Branch A', 'Location 11', 'Sector 11', 'Central 11', 'E002'),
('C012', 'Branch B', 'Location 12', 'Sector 12', 'Central 12', 'E003'),
('C013', 'Branch C', 'Location 13', 'Sector 13', 'Central 13', 'E004'),
('C014', 'Branch D', 'Location 14', 'Sector 14', 'Central 14', 'E005'),
('C015', 'Branch E', 'Location 15', 'Sector 15', 'Central 15', 'E006'),
('C016', 'Branch F', 'Location 16', 'Sector 16', 'Central 16', 'E007'),
('C017', 'Branch G', 'Location 17', 'Sector 17', 'Central 17', 'E008'),
('C018', 'Branch H', 'Location 18', 'Sector 18', 'Central 18', 'E009'),
('C019', 'Branch I', 'Location 19', 'Sector 19', 'Central 19', 'E010');



------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Departments (DEPname, DEPfloor, DEPserial_number, CID, Ejop_number)
VALUES
('Department 1', 1, 1, 'C010', 'E011'),
('Department 2', 2, 2, 'C011', 'E002'),
('Department 3', 3, 3, 'C012', 'E003'),
('Department 4', 4, 4, 'C013', 'E004'),
('Department 5', 5, 5, 'C014', 'E005'),
('Department 6', 6, 6, 'C015', 'E006'),
('Department 7', 7, 7, 'C016', 'E007'),
('Department 8', 8, 8, 'C017', 'E008'),
('Department 9', 9, 9, 'C018', 'E009'),
('Department 10', 10, 10, 'C019', 'E010');

------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Dependences (Ejop_number, DEssn, DErelationdegree, DEFrist_name, DESecond_name, DEThird_name, DELast_name)
VALUES
('E002', '1234567890', 1, 'John', 'Doe', '', 'Johnson'),
('E003', '2345678901', 2, 'Jane', 'Doe', '', 'Johnson'),
('E004', '3456789012', 3, 'Robert', 'Smith', '', 'Williams'),
('E005', '4567890123', 4, 'Emily', 'Brown', '', 'Davis'),
('E006', '5678901234', 5, 'Michael', 'Johnson', '', 'Miller'),
('E007', '6789012345', 6, 'Jessica', 'Anderson', '', 'Wilson'),
('E008', '7890123456', 7, 'William', 'Taylor', '', 'Thomas'),
('E009', '8901234567', 8, 'Sophia', 'Harris', '', 'White'),
('E010', '9012345678', 9, 'David', 'Clark', '', 'Jackson'),
('E011', '0123456789', 10, 'Olivia', 'Lewis', '', 'Anderson');

------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Stocks (STID, STlocation, CID)
VALUES
('ST001', 'Stock Location 1', 'C010'),
('ST002', 'Stock Location 2', 'C011'),
('ST003', 'Stock Location 3', 'C012'),
('ST004', 'Stock Location 4', 'C013'),
('ST005', 'Stock Location 5', 'C014'),
('ST006', 'Stock Location 6', 'C015'),
('ST007', 'Stock Location 7', 'C016'),
('ST008', 'Stock Location 8', 'C017'),
('ST009', 'Stock Location 9', 'C018'),
('ST010', 'Stock Location 10', 'C019');

------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO SalesCenters (SAID, Saname, Salocation, Sanumber, STID, CID)
VALUES
('SA001', 'Sales Center 1', 'Sales Location 1', 10, 'ST001', 'C010'),
('SA002', 'Sales Center 2', 'Sales Location 2', 15, 'ST002', 'C011'),
('SA003', 'Sales Center 3', 'Sales Location 3', 20, 'ST003', 'C012'),
('SA004', 'Sales Center 4', 'Sales Location 4', 25, 'ST004', 'C013'),
('SA005', 'Sales Center 5', 'Sales Location 5', 30, 'ST005', 'C014'),
('SA006', 'Sales Center 6', 'Sales Location 6', 35, 'ST006', 'C015'),
('SA007', 'Sales Center 7', 'Sales Location 7', 40, 'ST007', 'C016'),
('SA008', 'Sales Center 8', 'Sales Location 8', 45, 'ST008', 'C017'),
('SA009', 'Sales Center 9', 'Sales Location 9', 50, 'ST009', 'C018'),
('SA010', 'Sales Center 10', 'Sales Location 10', 55, 'ST010', 'C019');

------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------


UPDATE Employees
SET Eposition = 'Supervisor', CID = 'C011', DEPname = 'Department 2', Supervise_jopnumber = 'E003'
WHERE Ejop_number = 'E002';

UPDATE Employees
SET CID = 'C012', DEPname = 'Department 3', Supervise_jopnumber = 'E002'
WHERE Ejop_number = 'E003';

UPDATE Employees
SET  DEPname = 'Department 4', SAID = 'SA004', Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E004';

UPDATE Employees
SET DEPname = 'Department 5', SAID = 'SA005', Supervise_jopnumber = 'E004'
WHERE Ejop_number = 'E005';

UPDATE Employees
SET CID = 'C015', DEPname = 'Department 6',  Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E006';

UPDATE Employees
SET CID = 'C016', DEPname = 'Department 7',  Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E007';

UPDATE Employees
SET  DEPname = 'Department 8', SAID = 'SA008', Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E008';

UPDATE Employees
SET DEPname = 'Department 9', SAID = 'SA009', Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E009';

UPDATE Employees
SET CID = 'C019', DEPname = 'Department 10', Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E010';

UPDATE Employees
SET CID = 'C019', DEPname = 'Department 10', Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E011';
 
 UPDATE Employees
SET Eposition = 'Supervisor', CID = 'C011', DEPname = 'Department 2', Supervise_jopnumber = 'E003'
WHERE Ejop_number = 'E017';

UPDATE Employees
SET CID = 'C012', DEPname = 'Department 3', Supervise_jopnumber = 'E002'
WHERE Ejop_number = 'E018';

UPDATE Employees
SET  DEPname = 'Department 4', SAID = 'SA004', Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E019';

UPDATE Employees
SET DEPname = 'Department 5', SAID = 'SA005', Supervise_jopnumber = 'E004'
WHERE Ejop_number = 'E020';
UPDATE Employees
SET CID = 'C015', DEPname = 'Department 6',  Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E021';

UPDATE Employees
SET CID = 'C016', DEPname = 'Department 7',  Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E016';

UPDATE Employees
SET  DEPname = 'Department 8', SAID = 'SA008', Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E015';

UPDATE Employees
SET DEPname = 'Department 9', SAID = 'SA009', Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E014';

UPDATE Employees
SET CID = 'C019', DEPname = 'Department 10', Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E013';

UPDATE Employees
SET CID = 'C019', DEPname = 'Department 10', Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E012';


------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE Employees
alter column  DEPname varchar(50) not null;
------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
INSERT INTO MSAN (MS_ID, MS_location, MS_capacity, MS_weight, C_ID)
VALUES
  ('MS001', 'Location 1', 100.00, 50.00, 'C010'),
  ('MS002', 'Location 2', 200.00, 75.50, 'C011'),
  ('MS003', 'Location 3', 150.00, 60.25, 'C012'),
  ('MS004', 'Location 4', 300.00, 90.00, 'C013'),
  ('MS005', 'Location 5', 250.00, 80.75, 'C014'),
  ('MS006', 'Location 6', 120.00, 45.25, 'C015'),
  ('MS007', 'Location 7', 180.00, 70.50, 'C016'),
  ('MS008', 'Location 8', 220.00, 85.75, 'C017'),
  ('MS009', 'Location 9', 260.00, 95.00, 'C018'),
  ('MS010', 'Location 10', 130.00, 50.50, 'C019');

  
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

  INSERT INTO Cabinates (CA_ID, CA_location, CA_capacity, CA_wiretype, MS_ID)
VALUES
  ('CA001', 'Location A', 10.00, 'Wire Type 1', 'MS001'),
  ('CA002', 'Location B', 20.00, 'Wire Type 2', 'MS002'),
  ('CA003', 'Location C', 15.00, 'Wire Type 1', 'MS003'),
  ('CA004', 'Location D', 30.00, 'Wire Type 2', 'MS004'),
  ('CA005', 'Location E', 25.00, 'Wire Type 1', 'MS005'),
  ('CA006', 'Location F', 12.00, 'Wire Type 2', 'MS006'),
  ('CA007', 'Location G', 18.00, 'Wire Type 1', 'MS007'),
  ('CA008', 'Location H', 22.00, 'Wire Type 2', 'MS008'),
  ('CA009', 'Location I', 26.00, 'Wire Type 1', 'MS009'),
  ('CA010', 'Location J', 13.00, 'Wire Type 2', 'MS010');

  
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

  INSERT INTO Product (PRO_ID, PRO_name, PRO_description, PRO_price, SA_ID)
VALUES
  ('PRO001', 'Product 1', 'Product Description 1', 10.00, 'SA001'),
  ('PRO002', 'Product 2', 'Product Description 2', 20.00, 'SA002'),
  ('PRO003', 'Product 3', 'Product Description 3', 15.00, 'SA003'),
  ('PRO004', 'Product 4', 'Product Description 4', 30.00, 'SA004'),
  ('PRO005', 'Product 5', 'Product Description 5', 25.00, 'SA005'),
  ('PRO006', 'Product 6', 'Product Description 6', 12.00, 'SA006'),
  ('PRO007', 'Product 7', 'Product Description 7', 18.00, 'SA007'),
  ('PRO008', 'Product 8', 'Product Description 8', 22.00, 'SA008'),
  ('PRO009', 'Product 9', 'Product Description 9', 26.00, 'SA009'),
  ('PRO010', 'Product 10', 'Product Description 10', 13.00, 'SA010');

  
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

  INSERT INTO Suppliers (SUP_number, SUP_name, SUP_email, SUP_phone)
VALUES
  ('SUP001', 'Supplier 1', 'supplier1@example.com', 12345890),
  ('SUP002', 'Supplier 2', 'supplier2@example.com', 23456901),
  ('SUP003', 'Supplier 3', 'supplier3@example.com', 34567012),
  ('SUP004', 'Supplier 4', 'supplier4@example.com', 45678123),
  ('SUP005', 'Supplier 5', 'supplier5@example.com', 56789234),
  ('SUP006', 'Supplier 6', 'supplier6@example.com', 67890345),
  ('SUP007', 'Supplier 7', 'supplier7@example.com', 78901456),
  ('SUP008', 'Supplier 8', 'supplier8@example.com', 89012567),
  ('SUP009', 'Supplier 9', 'supplier9@example.com', 90125678),
  ('SUP010', 'Supplier 10', 'supplier10@example.com', 12367890);

  
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

  INSERT INTO Services (SE_number, SE_name, SE_type, SE_price, SE_duration, C_ID)
VALUES
  ('SE001', 'Service 1', 'Type 1', 10.00, 30, 'C010'),
  ('SE002', 'Service 2', 'Type 2', 20.00, 45, 'C011'),
  ('SE003', 'Service 3', 'Type 3', 15.00, 60, 'C012'),
  ('SE004', 'Service 4', 'Type 4', 30.00, 75, 'C013'),
  ('SE005', 'Service 5', 'Type 5', 25.00, 90, 'C014'),
  ('SE006', 'Service 6', 'Type 6', 12.00, 30, 'C015'),
  ('SE007', 'Service 7', 'Type 7', 18.00, 45, 'C016'),
  ('SE008', 'Service 8', 'Type 8', 22.00, 60, 'C017'),
  ('SE009', 'Service 9', 'Type 9', 26.00, 75, 'C018'),
  ('SE010', 'Service 10', 'Type 10', 13.00, 90, 'C019');
  
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

  INSERT INTO Customer (CU_SSN, CU_name, CU_email, CU_phone_no, Street, Building_no, CU_system, CU_home_no, C_ID, DEP_name)
VALUES
  ('12347890', 'Customer 1', 'customer1@example.com', 34567890, 'Street 1', 'Building 1', 'System 1', 'Home 1', 'C010',null),
  ('23678901', 'Customer 2', 'customer2@example.com', 45678901, 'Street 2', 'Building 2', 'System 2', 'Home 2', 'C011', 'Department 2'),
  ('34567012', 'Customer 3', 'customer3@example.com', 56789012, 'Street 3', 'Building 3', 'System 3', 'Home 3', 'C012', null),
  ('45678123', 'Customer 4', 'customer4@example.com', 47890123, 'Street 4', 'Building 4', 'System 4', 'Home 4', 'C013', 'Department 2'),
  ('58901234', 'Customer 5', 'customer5@example.com', 56701234, 'Street 5', 'Building 5', 'System 5', 'Home 5', 'C014', null),
  ('67890125', 'Customer 6', 'customer6@example.com', 69012345, 'Street 6', 'Building 6', 'System 6', 'Home 6', 'C015', 'Department 2'),
  ('78901456', 'Customer 7', 'customer7@example.com',890123456, 'Street 7', 'Building 7', 'System 7', 'Home 7', 'C016', 'Department 2'),
  ('89014567', 'Customer 8', 'customer8@example.com', 89034567, 'Street 8', 'Building 8', 'System 8', 'Home 8', 'C017', 'Department 2'),
  ('92345678', 'Customer 9', 'customer9@example.com', 90125678, 'Street 9', 'Building 9', 'System 9', 'Home 9', 'C018', 'Department 2'),
  ('12345690', 'Customer 10', 'customer10@example.com', 12367890, 'Street 10', 'Building 10', 'System 10', 'Home 10', 'C019', 'Department 2');
  
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------


  UPDATE Customer
SET DEP_name = NULL
WHERE CU_SSN = '12347890';

UPDATE Customer
SET DEP_name = 'Department 2'
WHERE CU_SSN = '23678901';

UPDATE Customer
SET DEP_name = NULL
WHERE CU_SSN = '34567012';

UPDATE Customer
SET DEP_name = 'Department 2'
WHERE CU_SSN = '45678123';

UPDATE Customer
SET DEP_name = NULL
WHERE CU_SSN = '58901234';

UPDATE Customer
SET DEP_name = 'Department 2'
WHERE CU_SSN = '67890125';

UPDATE Customer
SET DEP_name = 'Department 2'
WHERE CU_SSN = '78901456';

UPDATE Customer
SET DEP_name = 'Department 2'
WHERE CU_SSN = '89014567';

UPDATE Customer
SET DEP_name = 'Department 2'
WHERE CU_SSN = '92345678';

------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------


 
 alter table Malfunctions
 alter column  MAL_enddate date null
 
 INSERT INTO Malfunctions (MAL_number, MAL_startdate, MAL_enddate, MAL_type, cust_number, DEP_name)
VALUES
  ('M011', '2023-11-05', '2023-11-07', 'Hardware', '12347890', 'Department 1'),
  ('M012', '2023-12-10', '2023-12-15', 'Software', '12347890', 'Department 2'),
  ('M013', '2024-01-20', '2024-01-22', 'Network', '45678123', 'Department 3'),
  ('M014', '2024-02-12', '2024-02-15', 'Hardware', '45678123', 'Department 4'),
  ('M015', '2024-03-08', '2024-03-11', 'Software', '12345690', 'Department 5'),
  ('M016', '2024-04-17', '2024-04-20', 'Network', '12345690', 'Department 6'),
  ('M017', '2024-05-25', '2024-05-29', 'Hardware', '89014567', 'Department 7'),
  ('M018', '2024-06-14', '2024-06-19', 'Software', '89014567', 'Department 8'),
  ('M019', '2024-07-06', '2024-07-09', 'Network', '92345678', 'Department 9'),
  ('M020', '2024-08-21', '2024-08-25', 'Hardware', '92345678', 'Department 10');
  
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

  
  

  INSERT INTO Subscibe_to (SE_number, CU_SSN)
VALUES
  ('SE001', '12347890'),
  ('SE002', '23678901'),
  ('SE003', '34567012'),
  ('SE004', '45678123'),
  ('SE005', '58901234'),
  ('SE006', '67890125'),
  ('SE007', '78901456'),
  ('SE008', '89014567'),
  ('SE009', '92345678'),
  ('SE010', '12345690');
  
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------




  INSERT INTO Exist_in (SA_ID, SE_number)
VALUES
  ('SA001', 'SE001'),
  ('SA002', 'SE002'),
  ('SA003', 'SE003'),
  ('SA004', 'SE004'),
  ('SA005', 'SE005'),
  ('SA006', 'SE006'),
  ('SA007', 'SE007'),
  ('SA008', 'SE008'),
  ('SA009', 'SE009'),
  ('SA010', 'SE010');
  
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------


  INSERT INTO Stick_around (PRO_ID, STID)
VALUES
  ('PRO001', 'ST001'),
  ('PRO002', 'ST002 '),
  ('PRO003', 'ST004  '),
  ('PRO004', 'ST003 '),
  ('PRO005', 'ST009 '),
  ('PRO006', 'ST010 '),
  ('PRO007', 'ST008 '),
  ('PRO008', 'ST007 '),
  ('PRO009', 'ST006 '),
  ('PRO010', 'ST005 ');
  
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------


  INSERT INTO Visits (SA_ID, CU_SSN)
VALUES
  ('SA001', '12347890'),
  ('SA002', '23678901'),
  ('SA003', '34567012'),
  ('SA004', '45678123'),
  ('SA005', '58901234'),
  ('SA006', '67890125'),
  ('SA007', '78901456'),
  ('SA008', '89014567'),
  ('SA009', '92345678'),
  ('SA010', '12345690');

  
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

  INSERT INTO Supply (PRO_ID, SUP_number)
VALUES
  ('PRO001', 'SUP001'),
  ('PRO002', 'SUP002'),
  ('PRO003', 'SUP003'),
  ('PRO004', 'SUP004'),
  ('PRO005', 'SUP005'),
  ('PRO006', 'SUP006'),
  ('PRO007', 'SUP007'),
  ('PRO008', 'SUP008'),
  ('PRO009', 'SUP009'),
  ('PRO010', 'SUP010');
  
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------


  INSERT INTO Items_Supplier (SUP_items, SUP_number)
VALUES
  ('Item 1', 'SUP001'),
  ('Item 2', 'SUP002'),
  ('Item 3', 'SUP003'),
  ('Item 4', 'SUP004'),
  ('Item 5', 'SUP005'),
  ('Item 6', 'SUP006'),
  ('Item 7', 'SUP007'),
  ('Item 8', 'SUP008'),
  ('Item 9', 'SUP009'),
  ('Item 10', 'SUP010');
  
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------


  INSERT INTO Extras_Services (SE_extres, SE_number)
VALUES
  ('Ext1', 'SE001'),
  ('Ext2', 'SE002'),
  ('Ext3', 'SE003'),
  ('Ext4', 'SE004'),
  ('Ext5', 'SE005'),
  ('Ext6', 'SE006'),
  ('Ext7', 'SE007'),
  ('Ext8', 'SE008'),
  ('Ext9', 'SE009'),
  ('Ext10', 'SE010');
  
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------


UPDATE Departments
SET Ejop_number = 'E012'
WHERE DEPname = 'Department 1';


UPDATE Departments
SET Ejop_number = 'E013'
WHERE DEPname = 'Department 2';


UPDATE Departments
SET Ejop_number = 'E014'
WHERE DEPname = 'Department 3';


UPDATE Departments
SET Ejop_number = 'E015'
WHERE DEPname = 'Department 4';


UPDATE Departments
SET Ejop_number = 'E016'
WHERE DEPname = 'Department 5';

UPDATE Departments
SET Ejop_number = 'E017'
WHERE DEPname = 'Department 6';

UPDATE Departments
SET Ejop_number = 'E018'
WHERE DEPname = 'Department 7';


UPDATE Departments
SET Ejop_number = 'E019'
WHERE DEPname = 'Department 8';

UPDATE Departments
SET Ejop_number = 'E020'
WHERE DEPname = 'Department 9';


UPDATE Departments
SET Ejop_number = 'E021'
WHERE DEPname = 'Department 10';

------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

UPDATE Employees
SET Eposition = 'Supervisor', CID = 'C011', DEPname = 'Department 2', Supervise_jopnumber = 'E003'
WHERE Ejop_number = 'E017';

UPDATE Employees
SET CID = 'C012', DEPname = 'Department 3', Supervise_jopnumber = 'E002'
WHERE Ejop_number = 'E018';

UPDATE Employees
SET  DEPname = 'Department 4', SAID = 'SA004', Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E019';

UPDATE Employees
SET DEPname = 'Department 5', SAID = 'SA005', Supervise_jopnumber = 'E004'
WHERE Ejop_number = 'E020';
UPDATE Employees
SET CID = 'C015', DEPname = 'Department 6',  Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E021';

UPDATE Employees
SET CID = 'C016', DEPname = 'Department 7',  Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E016';

UPDATE Employees
SET  DEPname = 'Department 8', SAID = 'SA008', Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E015';

UPDATE Employees
SET DEPname = 'Department 9', SAID = 'SA009', Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E014';

UPDATE Employees
SET CID = 'C019', DEPname = 'Department 10', Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E013';

UPDATE Employees
SET CID = 'C019', DEPname = 'Department 10', Supervise_jopnumber = 'E005'
WHERE Ejop_number = 'E012';

------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
/*selecting*/

SELECT * FROM Employees;
SELECT * FROM Dependences;
SELECT * FROM Centrals;
SELECT * FROM Stocks;
SELECT * FROM Departments;
SELECT * FROM SalesCenters;
SELECT * FROM MSAN;
SELECT * FROM Cabinates;
SELECT * FROM Product;
SELECT * FROM Suppliers;
SELECT * FROM Services;
SELECT * FROM Customer;
SELECT * FROM Malfunctions;
SELECT * FROM Subscibe_to;
SELECT * FROM Exist_in;
SELECT * FROM Stick_around;
SELECT * FROM Visits;
SELECT * FROM Supply;
SELECT * FROM Items_Supplier;
SELECT * FROM Extras_Services;
sp_help Employees;

------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------

