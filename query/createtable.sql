
Use MyRecipe
GO

CREATE TABLE [Users]
(
user_id INT PRIMARY KEY IDENTITY (1, 1),
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
user_email varchar(100) NOT NULL
);
 
CREATE TABLE User (
menu_ID INT PRIMARY KEY IDENTITY (1, 1),
prefix varchar(5) NOT NULL,
menu_type as ( prefix + Right ('0000000000'+CAST (menu_ID AS VARCHAR(12)),12)) PERSISTED,
menuName varchar (100)
);

INSERT INTO MENU (
Drop table User