DROP TABLE CLIENT;
DROP TABLE PRODUCT; 
DROP TABLE DOSAGE; 
DROP TABLE HISTORY; 

create table CLIENT (
	CLNO 		integer,
	NAME 		varchar(30),
	LASTNAME varchar(30),
	CURRENTCOLOR 	varchar(30),
	COLORTONE integer, 
	EMAIL 	varchar(30),
	PHONE 	integer,
    constraint CLIENTS_PK primary key (CLNO)
);

create table PRODUCT(
	PRNO integer,
	PRODUCTNAME varchar(30),
	COLOR varchar(30), 
	COLORCODE varchar(30), 
	PRODUCTBRAND varchar(30),
		constraint PRODUCT_PK primary key (PRNO)
);

create table DOSAGE(
	DONO integer,
	DESIREDCOLOR varchar(30),
	COLORCODE varchar(30),
	COLORTONE integer,
	OXYDOSAGE integer, 
	PIGDOSAGE integer, 
	constraint DOSAGE_PK primary key (DONO)
);

create TABLE HISTORY(
	HSTNO integer,
	PRNO integer,
	DONO integer,
	CLNO integer,
		constraint HISTORY_PK primary key(HSTNO),
		constraint CLNO_FK_EID foreign key (CLNO) references CLIENT(CLNO), 
		constraint PRNO_FK_EID foreign key (PRNO) references PRODUCT(PRNO), 
		constraint DONO_FK_EID foreign key (DONO) references DOSAGE(DONO)
);

insert into CLIENT values (1, 'Sakina', 'Laanani', 'Brown', 2,'sakina.laanani@gmail.com', '0620304050');
insert into CLIENT values (2, 'Julie', 'Polge', 'Blond', 7,'julie.polge@gmail.com', '0620304050');
insert into CLIENT values (3, 'Mohamed', 'Hedhli', 'Brown', 4 ,'momo@gmail.com', '0620304050');

insert into PRODUCT values (1, 'Superior Preference', 'Blonde', 7,"L'Oreal");
insert into PRODUCT values (2, 'Excellence Creme', 'Blonde', 7,"L'Oreal");
insert into PRODUCT values (3, 'Sublime Mousse', 'Blonde', 7,"L'Oreal");
insert into PRODUCT values (4, 'Superior Preference', 'Brown', 2,"L'Oreal");
insert into PRODUCT values (5, 'Excellence Creme', 'Brown', 2,"L'Oreal");
insert into PRODUCT values (6, 'Sublime Mousse', 'Brown', 2,"L'Oreal");

--TABLE : CLIENT, COLORTONE
--ce chiffre sera entre 1 et 10
--Code	Hauteur de ton
--1			Noir
--2			Brun
--3			Châtain foncé
--4			Châtain
--5			Châtain clair
--6			Blond foncé
--7			Blond
--8			Blond clair
--9			Blond très clair
--10		Blond très très clair / platine
-- gestion du dosage : se fait en fonction de ce numero : if(colortone==1) colorcode = 1%%;

--TABLE : PRODUCT, COLORCODE
--ex : 7,34 ; 9,13 ; 5,45 ; 1,1
-- Le premier nombre (avant la virgule) correspond à la hauteur de ton de la couleur.
-- S’il y en a un, le premier nombre après la virgule (ou le point, ou le slash..) est le reflet principal;
-- le deuxième nombre, s’il y en a un également, est le reflet secondaire (donc plus faible).
--Ce code varie selon les marques, voici ce que cela donne pour l'Oreal:
--Code	L’Oréal
--0			Neutre, sans reflet
--1			Cendré
--2			Irisé
--3			Doré
--4			Cuivré
--5			Acajou
--6			Rouge
