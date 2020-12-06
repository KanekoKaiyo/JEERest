------------ Création des tables ----------
CREATE TABLE Utilisateur(
    IdUtilisateur NUMBER(10)NOT NULL,
    Pseudo VARCHAR2(45) NOT NULL,
    Email VARCHAR2(100) NOT NULL,
    DateInscriptionDATE NOT NULL,
    Passwords VARCHAR2(512) NOT NULL,
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
    PRIMARY KEY (idImage)
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
    idImages NUMBER(10) NOT NULL,
    PRIMARY KEY (IDRecette),
    CONSTRAINT fk_Recette_Utilisateur
        FOREIGN KEY (idUtilisateur)
        REFERENCES Utilisateur(idUtilisateur),
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
        REFERENCES Recette(idRecette)
);

CREATE TABLE IngredientRecette(
    idIngredientRecette NUMBER(10) NOT NULL,
    Quantité float(10) NOT NULL,
    Mesure VARCHAR2(30) NOT NULL,
    idRecette NUMBER(10) NOT NULL,
    IdIngredient NUMBER(10)NOT NULL,
    PRIMARY KEY(idIngredientRecette),
    CONSTRAINT fk_IngredientRecette_Ingredient
        FOREIGN KEY(IdIngredient)
        REFERENCES Ingredient(IdIngredient),
    CONSTRAINT fk_IngredientRecette_Recette
        FOREIGN KEY(idRecette)
        REFERENCES Recette(idRecette)
);

------------ Script gestion ID -----------------

-- Version trouvé sur le net : 
CREATE SEQUENCE Utilisateur_seq 
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER Utilisateur_id
BEFORE INSERT ON Utilisateur
FOR EACH ROW

BEGIN
    :NEW.idUtilisateur := Utilisateur_seq.nextval;
END;
/

-- Version Prof :
CREATE OR REPLACE TRIGGER Utilisateur_id
BEFORE INSERT ON Utilisateur
FOR EACH ROW 
BEGIN
    DECLARE idIncremente INT;
    IF (NEW.idUtilisateur IS NULL) THEN
    SET idIncremente = (SELECT MAX(idUtilisateur)+1 FROM Utilisateur);
    SET NEW.idUtilisateur = idIncremente;
    END IF
END;
/
----------- Script population des tables --------------

INSERT INTO Utilisateur VALUES (1,'ChefCulinaire','chefculinaire@gmail.con','01/12/2020', 'test1');
INSERT INTO Utilisateur VALUES (2,'LeCordonBleu','lecordonbleu@yahoo.fr','03/12/2020', 'test2');
INSERT INTO Utilisateur VALUES (3,'Traiteur','traiteur@gmail.con','04/12/2020', 'test3');
INSERT INTO Utilisateur VALUES (4,'Meticuleux','meticuleux@gmail.con','12/12/2020', 'test4');

--------- Script pour le programme ------------------

-- Package qui va stocker toutes les procédures lié aux utilisateurs
CREATE OR REPLACE PACKAGE PKG_Utilisateur

-- Procédure de création d'un client ( vérification si email déjà prit )

-- Procédure pour trouver un client selon Pseudo/mdp

-- Procédure pour trouver un client selon Email/mdp

-- Procédure pour modifier un client
END PKG_Utilisateur

-- Package qui va stocker toutes les procédures lié aux ingrédients
CREATE OR REPLACE PACKAGE PKG_Ingredient

-- Procédure de création d'un ingrédient s'il n'existe pas

-- Procédure pour récuperer la liste des ingrédients ( vraiment besoin ?? )

END PKG_Ingredient

-- Package qui va stocker toutes les procédures lié aux Images
CREATE OR REPLACE PACKAGE PKG_Image

-- Procédure de création d'une Image lié a une recette

-- Procédure pour trouver une image celon la recette qui lui est lié

-- Procédure pour modifier l'imagine d'une recette
END PKG_Image

-- Package qui va stocker toutes les procédures lié aux Etapes
CREATE OR REPLACE PACKAGE PKG_Etape

-- Procédure pour ajouter une liste d'étape

-- Procédure pour recuperer une liste d'étape d'une recette

-- Procédure pour modifier une étape ( ou une liste d'étape ? )

-- Procédure pour supprimer une étape ( ou une liste d'étape ?)

END PKG_Etape

-- Package qui va stocker toutes les procédures lié aux Commentaires
CREATE OR REPLACE PACKAGE PKG_Commentaire

-- Procédure pour créer un commentaire lié à une recettes

-- Procédure pour recuperer la liste des commentaires d'une recette

-- Procédure pour supprimer un commentaire d'une recette ( vraiment besoin ? )

END PKG_Commentaire

-- Package qui va stocker toutes les procédures lié aux ingrédients d'une recette
CREATE OR REPLACE PACKAGE PKG_IngredientRecette

-- Procédure de création de la liste d'ingrédient d'une recette

-- Procédure de récuperation de la liste d'ingrédient d'une recette

-- Procédure de modification de la liste d'ingrédient d'une recette

-- Procédure de suppréssion d'ingrédients d'une recette

END PKG_IngredientRecette

-- Package qui va stocker toutes les procédures lié aux Recettes
CREATE OR REPLACE PACKAGE PKG_Recette

-- Procédure de création d'une recette ( Attention elle doit appeler d'autre procédure d'autre package, image, ingrédient ect ... )

-- Procédure pour avoir la liste complète des recettes ( Attention il faut appeler les procédures de package différents pour les images/ingrédients/étape/commentaire )

-- Procédure pour trouver une liste de recette celons le nom

-- Procédure pour trouver une liste de recette celons une liste d'ingrédients

-- Procédure pour modifier une recette et les eléments de la recette ( appel a d'autre procédure d'autre package )

-- Procédure pour supprimer une recette et les élements de celle ci  ( appel a d'autre procédure d'autre package )
END PKG_Recette