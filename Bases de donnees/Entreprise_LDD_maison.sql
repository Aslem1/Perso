DROP TABLE IF EXISTS materiel;
DROP TABLE IF EXISTS contrat;
DROP TABLE IF EXISTS societe; 
DROP TABLE IF EXISTS type;


CREATE TABLE societe (
	code_societe integer,
	raison_sociale varchar(50) not null,
	adresse varchar(50) not null,
	ville varchar(50) not null,
	code_postal integer not null,
	PRIMARY KEY (code_societe)
);

CREATE TABLE type (
	no_type integer,
	designation varchar(50) not null,
	caracteristiques varchar(50) not null,
	PRIMARY KEY (no_type)
);

CREATE TABLE contrat (
	no_contrat integer,
	date_expiration date not null,
	duree interval not null,
	montant real not null,
	societe integer,
	PRIMARY KEY (no_contrat),
	FOREIGN KEY (societe) REFERENCES societe (code_societe)
);

CREATE TABLE materiel (
	no_materiel integer,
	no_serie integer not null,
	designation varchar(50) not null,
	no_contrat integer,
	type integer not null,
	PRIMARY KEY (no_materiel),
	FOREIGN KEY (no_contrat) REFERENCES contrat (no_contrat),
	FOREIGN KEY (type) REFERENCES type (no_type)
);


