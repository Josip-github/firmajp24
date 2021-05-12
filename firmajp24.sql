drop database if exists firmajp24;
CREATE database firmajp24;
use firmajp24;

CREATE TABLE projekt(
 	sifra int NOT NULL primary KEY auto_increment,
 	naziv varchar(50),
 	cijena decimal(18,2)
);

CREATE TABLE programer(
	sifra int NOT NULL primary KEY auto_increment,
	ime varchar(50),
	prezime varchar(50),
	datumrodjenja datetime,
	placa int
	
);


CREATE TABLE sudjeluje(
	projekt int,
	programer int,
	datumpocetka datetime,
	datumkraja datetime
);

ALTER TABLE sudjeluje ADD FOREIGN KEY (projekt) REFERENCES projekt(sifra);
ALTER TABLE sudjeluje ADD FOREIGN KEY (programer) REFERENCES programer(sifra);


