------------ Création des tables ----------
CREATE TABLE Utilisateur(
    IdUtilisateur NUMBER(10)NOT NULL,
    Pseudo VARCHAR2(45) NOT NULL,
    Email VARCHAR2(100) NOT NULL,
    password VARCHAR2(100) NOT NULL,
    DateInscription DATE NOT NULL,
    PRIMARY KEY (IdUtilisateur)
);

CREATE TABLE Ingredient(
    IdIngredient NUMBER(10)NOT NULL,
    NomIngredient VARCHAR2(100) NOT NULL,
    PRIMARY KEY (IdIngredient)
);

CREATE TABLE Images(
    IdImages NUMBER(10)NOT NULL,
    UrlImages VARCHAR2(200),
    PRIMARY KEY (IdImages)
);

CREATE TABLE Recette(
    IdRecette NUMBER(10) NOT NULL,
    Titre VARCHAR2(45) NOT NULL,
    Categorie VARCHAR2(45) NOT NULL,
    TempsCuisson NUMBER(10) NOT NULL,
    TempsPrearation NUMBER(10) NOT NULL,
    TempsTotal NUMBER(10) NOT NULL,
    Coût VARCHAR2(45) NOT NULL,
    IdUtilisateur NUMBER(10) NOT NULL,
    idImages NUMBER(10),
    PRIMARY KEY (IdRecette),
    CONSTRAINT fk_Recette_Utilisateur
        FOREIGN KEY (idUtilisateur)
        REFERENCES Utilisateur(IdUtilisateur),
    CONSTRAINT fk_Recette_Image
        FOREIGN KEY (idImage)
        REFERENCES Images(IdImages)
);

CREATE TABLE Commentaire(
    IdCommentaire NUMBER(10) NOT NULL,
    Messages VARCHAR2(5000) NOT NULL,
    DateHeureCommentaire DATE NOT NULL,
    IdRecette NUMBER(10) NOT NULL,
    IdUtilisateur NUMBER(10)NOT NULL,
    PRIMARY KEY(IdCommentaire),
    CONSTRAINT fk_Commentaire_Recette
        FOREIGN KEY(IdRecette)
        REFERENCES Recette(IdRecette),
    CONSTRAINT fk_Commentaire_Utilisateur
        FOREIGN KEY(IdUtilisateur)
        REFERENCES Utilisateur(IdUtilisateur)
);

CREATE TABLE Etape(
    idEtape NUMBER(10) NOT NULL,
    NumeroEtape NUMBER(10) NOT NULL,
    DescriptionEtape VARCHAR2(5000) NOT NULL,
    idRecette NUMBER(10) NOT NULL,
    PRIMARY KEY (idEtape),
    CONSTRAINT fk_Etape_Recette
        FOREIGN KEY(idRecette)
        REFERENCES Recette(IdRecette)
);

CREATE TABLE IngredientRecette(
    idIngredientRecette NUMBER(10) NOT NULL,
    Quantité float(10) NOT NULL,
    Mesure VARCHAR2(30) NOT NULL,
    idRecette NUMBER(10) NOT NULL,
    idIngredient NUMBER(10)NOT NULL,
    PRIMARY KEY(idIngredientRecette),
    CONSTRAINT fk_IngredientRecette_Ingredient
        FOREIGN KEY(idIngredient)
        REFERENCES Ingredient(IdIngredient),
    CONSTRAINT fk_IngredientRecette_Recette
        FOREIGN KEY(idRecette)
        REFERENCES Recette(IdRecette)
);

------------ Script gestion ID -----------------
CREATE SEQUENCE Utilisateur_seq START WITH 1;

CREATE OR REPLACE TRIGGER Utilisateur_id
BEFORE INSERT ON Utilisateur
FOR EACH ROW 
DECLARE
BEGIN
    
END;
/
/********************* ajout id autoincrement **************************/
CREATE TRIGGER ajout_IDutilisateur BEFORE INSERT
 ON Utilisateur 
 FOR EACH ROW
 BEGIN
	DECLARE IdIncremente int;
	IF (NEW.idUtilisateur IS NULL) THEN
		SET IdIncremente = (SELECT MAX(idUtilisateur)+1 FROM Utilisateur ) ;
		SET NEW.idUtilisateur = IdIncremente ;
	END IF;
 END 
 
 
 CREATE TRIGGER ajout_IdIngredient BEFORE INSERT
 ON Ingredient 
 FOR EACH ROW
 BEGIN
	DECLARE IdIncremente int;
	IF (NEW.IdIngredient IS NULL) THEN
		SET IdIncremente = (SELECT MAX(IdIngredient)+1 FROM Ingredient ) ;
		SET NEW.IdIngredient = IdIncremente ;
	END IF;
 END 
 
 CREATE TRIGGER ajout_IdImages BEFORE INSERT
 ON Images
 FOR EACH ROW
 BEGIN
	DECLARE IdIncremente int;
	IF (NEW.IdImages IS NULL) THEN
		SET IdIncremente = (SELECT MAX(IdImages)+1 FROM Images ) ;
		SET NEW.IdImages = IdIncremente ;
	END IF;
 END 
 
 CREATE TRIGGER ajout_IdRecette BEFORE INSERT
 ON Recette
 FOR EACH ROW
 BEGIN
	DECLARE IdIncremente int;
	IF (NEW.IdRecette IS NULL) THEN
		SET IdIncremente = (SELECT MAX(IdRecette)+1 FROM Recette ) ;
		SET NEW.IdRecette = IdIncremente ;
	END IF;
 END 
 
 
 CREATE TRIGGER ajout_IdCommentaire BEFORE INSERT
 ON Commentaire
 FOR EACH ROW
 BEGIN
	DECLARE IdIncremente int;
	IF (NEW.IdCommentaire IS NULL) THEN
		SET IdIncremente = (SELECT MAX(IdCommentaire)+1 FROM Commentaire ) ;
		SET NEW.IdCommentaire = IdIncremente ;
	END IF;
 END 
 
 CREATE TRIGGER ajout_idEtape BEFORE INSERT
 ON Etape
 FOR EACH ROW
 BEGIN
	DECLARE IdIncremente int;
	IF (NEW.idEtape IS NULL) THEN
		SET IdIncremente = (SELECT MAX(idEtape)+1 FROM Etape ) ;
		SET NEW.idEtape = IdIncremente ;
	END IF;
 END 
 

 CREATE TRIGGER ajout_idIngredientRecette BEFORE INSERT
 ON IngredientRecette
 FOR EACH ROW
 BEGIN
	DECLARE IdIncremente int;
	IF (NEW.idIngredientRecette IS NULL) THEN
		SET IdIncremente = (SELECT MAX(idIngredientRecette)+1 FROM IngredientRecette ) ;
		SET NEW.idIngredientRecette = IdIncremente ;
	END IF;
 END 
 
----------- Script population des tables --------------
INSERT INTO Utilisateur VALUES (1,'ChefCulinaire','chefculinaire@gmail.con','01/12/2020', 'test1');
INSERT INTO Utilisateur VALUES (2,'LeCordonBleu','lecordonbleu@yahoo.fr','03/12/2020', 'test2');
INSERT INTO Utilisateur VALUES (3,'Traiteur','traiteur@gmail.con','04/12/2020', 'test3');
INSERT INTO Utilisateur VALUES (4,'Meticuleux','meticuleux@gmail.con','12/12/2020', 'test4');

INSERT INTO Ingredient VALUES (1,'Oeuf');
INSERT INTO Ingredient VALUES (2,'Farine');
INSERT INTO Ingredient VALUES (3,'Beurre');
INSERT INTO Ingredient VALUES (4,'Sucre');
INSERT INTO Ingredient VALUES (5,'poudre de Cacao');
INSERT INTO Ingredient VALUES (6,'Levure');
INSERT INTO Ingredient VALUES (7,'Arome');

INSERT INTO Recette VALUES (1,'Cake', 'Dessert', '30', '15', '45', 'Abordable', 1, 1);
INSERT INTO Recette VALUES (2,'Cake', 'Dessert', '30', '15', '45', 'Abordable', 2, 0);
