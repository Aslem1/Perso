set datestyle to 'european';

DROP TABLE IF EXISTS remplacements;
DROP TABLE IF EXISTS interventions;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS factures;
DROP TABLE IF EXISTS produits;

CREATE TABLE clients (
	no_client integer,
	nom varchar(50),
	prenom varchar(50),
	adresse text,
	PRIMARY KEY (no_client)
);


CREATE TABLE factures (
	no_facture integer,
	date_facture date not null,
	etat char not null,
	PRIMARY KEY (no_facture)
);

CREATE TABLE interventions (
	no_interv integer,
	date_interv date not null,
	nom_resp varchar(50) not null,
	nom_interv varchar(50) not null,
	temps interval not null,
	no_client integer,
	no_facture integer,
	PRIMARY KEY (no_interv),
	FOREIGN KEY (no_client) REFERENCES clients (no_client),
	FOREIGN KEY (no_facture) REFERENCES factures (no_facture)
);


CREATE TABLE produits (
	reference integer,
	designation varchar(50) not null,
	prixht real,
	qtestock integer not null,
	qtesecurite integer not null,
	PRIMARY KEY (reference)
);

CREATE TABLE remplacements (
	reference integer,
	no_interv integer,
	qte_remplacee integer not null,
	PRIMARY KEY (reference, no_interv),
	FOREIGN KEY (reference) REFERENCES produits (reference),
	FOREIGN KEY (no_interv) REFERENCES interventions (no_interv)
);

/* 1.Insérez dans la table CLIENTS, deux tuples valides, l'un ayant un prénom et l'autre pas. */
INSERT INTO clients VALUES ('154862', 'Dubois', 'Jeanne', '3 rue des pisenlis');
INSERT INTO clients VALUES ('154812', 'Dupuis', '', '6 rue des coquelicots');

SELECT * FROM clients;

/* 2.Tentez d'insérer dans la table CLIENTS, deux tuples ayant le même No_client. */
INSERT INTO clients VALUES ('154862', 'Dubois', 'Jeanne', '3 rue des pisenlis');
INSERT INTO clients VALUES ('154862', 'Dupuis', '', '6 rue des coquelicots');

/* 3.Insérez un tuple dans la table PRODUITS, ne contenant pas de valeur pour les attributs qtestock et qtesecurite. 
Vérifiez que les valeurs par défaut ont été attribuées. */
INSERT INTO produits VALUES ('124578', 'designation1', '35', '', '');

/* 4.Tentez d'insérer un tuple dans la table PRODUITS qui ne satisfait pas la contrainte sur les attributs qtestock et qtesecurite. */
INSERT INTO produits VALUES	('675124', 'designation2', '15', 'a', 'b');

/* 5.Jouez le code SQL présent dans le fichier LMD_FACTURES.SQL (sur Moodle). */
insert into factures values ( 1000,'01/01/2009','R');
insert into factures values ( 1001,'12/02/2009','R');
insert into factures values ( 1002,'17/03/2009','R');
insert into factures values ( 1003,'24/04/2009','R');
insert into factures values ( 1004,'16/05/2009','R');
insert into factures values ( 1005,'08/07/2009','R');
insert into factures values ( 1006,'08/07/2009','R');
insert into factures values ( 1007,'15/07/2009','R');
insert into factures values ( 1008,'15/07/2009','R');
insert into factures values ( 1009,'22/07/2009','C');
insert into factures values ( 1010,'22/07/2009','C');
insert into factures values ( 1011,'29/07/2009','C');
insert into factures values ( 1012,'30/08/2009','R');
insert into factures values ( 1013,'19/10/2009','R');

/* 6.Dans la table FACTURES, supprimez le tuple ayant pour numéro de facture 1010. */
DELETE FROM factures WHERE no_facture = 1010;

/* 7.Dans la table FACTURES, supprimez tous les tuples dont l'état est R. */
DELETE FROM factures WHERE etat = 'R';

/* 8.Insérez un tuple dans la table INTERVENTIONS. 
Pour que cette insertion soit valide, d'autres tuples sont à insérer préalablement. A vous de trouver lesquels! */
INSERT INTO interventions ('', '05/10/2020', 'Pichon', 'Huet', '20.15', '', '');
/*INSERT INTO interventions ('557864', '05/10/2020', 'Pichon', 'Huet', '20.15', '157513', '54531');*/

/* 9.Testez la contrainte sur le Temps, dans la table INTERVENTIONS. 
Pour cela vous devez tenter d'insérer des tuples dont tous les attributs sont valides et pour lesquels, le Temps vaut respectivement: 0.0, 2.5, 12.0 */
INSERT INTO interventions ('156', '05/10/2020', 'Pichon', 'Huet', '0.0', '157513', '54531');

/* 10.A l'aide de requêtes DELETE, effacez tous les tuples de toutes les tables (sans effacer les tables) */
DELETE FROM clients;