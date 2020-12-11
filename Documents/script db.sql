------------ Création des tables ----------
CREATE TABLE Utilisateur(
    IdUtilisateur NUMBER(10)NOT NULL,
    Pseudo VARCHAR2(45) NOT NULL,
    Email VARCHAR2(100) NOT NULL,
    passwords VARCHAR2(100) NOT NULL,
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
    Cout VARCHAR2(45) NOT NULL,
    IdUtilisateur NUMBER(10) NOT NULL,
    idImages NUMBER(10),
    PRIMARY KEY (IdRecette),
    CONSTRAINT fk_Recette_Utilisateur
        FOREIGN KEY (idUtilisateur)
        REFERENCES Utilisateur(IdUtilisateur),
    CONSTRAINT fk_Recette_Image
        FOREIGN KEY (idImages)
        REFERENCES Images(IdImages)
);

CREATE TABLE Commentaire(
    IdCommentaire NUMBER(10) NOT NULL,
    Messages VARCHAR2(4000) NOT NULL,
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
    DescriptionEtape VARCHAR2(4000) NOT NULL,
    idRecette NUMBER(10) NOT NULL,
    PRIMARY KEY (idEtape),
    CONSTRAINT fk_Etape_Recette
        FOREIGN KEY(idRecette)
        REFERENCES Recette(IdRecette)
);

CREATE TABLE IngredientRecette(
    idIngredientRecette NUMBER(10) NOT NULL,
    Quantite float(10) NOT NULL,
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
-- On crée la séquence
CREATE SEQUENCE Utilisateur_seq 
START WITH 1
INCREMENT BY 1;
-- On crée le trigger
CREATE OR REPLACE TRIGGER ajout_IDutilisateur
  BEFORE INSERT ON Utilisateur
  FOR EACH ROW
BEGIN
  SELECT Utilisateur_seq .nextval
  INTO :new.idUtilisateur
  FROM dual;
END;
-- On crée la séquence
CREATE SEQUENCE Ingredient_seq 
START WITH 1
INCREMENT BY 1;
-- On crée le trigger
CREATE OR REPLACE TRIGGER ajout_IdIngredient
  BEFORE INSERT ON Ingredient
  FOR EACH ROW
BEGIN
  SELECT Ingredient_seq.nextval
  INTO :new.IdIngredient
  FROM dual;
END;

-- On crée la séquence
CREATE SEQUENCE Images_seq 
START WITH 1
INCREMENT BY 1;
-- On crée le trigger
CREATE OR REPLACE TRIGGER ajout_IdImages
  BEFORE INSERT ON Images
  FOR EACH ROW
BEGIN
  SELECT Images_seq.nextval
  INTO :new.IdImages
  FROM dual;
END;

-- On crée la séquence
CREATE SEQUENCE Recette_seq 
START WITH 1
INCREMENT BY 1;
-- On crée le trigger
CREATE OR REPLACE TRIGGER ajout_IdRecette
  BEFORE INSERT ON Recette
  FOR EACH ROW
BEGIN
  SELECT Recette_seq.nextval
  INTO :new.IdRecette
  FROM dual;
END;

-- On crée la séquence
CREATE SEQUENCE Commentaire_seq 
START WITH 1
INCREMENT BY 1;
-- On crée le trigger
CREATE OR REPLACE TRIGGER ajout_IdCommentaire
  BEFORE INSERT ON Recette
  FOR EACH ROW
BEGIN
  SELECT Commentaire_seq.nextval
  INTO :new.IdCommentaire
  FROM dual;
END;

-- On crée la séquence
CREATE SEQUENCE Etape_seq 
START WITH 1
INCREMENT BY 1;
-- On crée le trigger
CREATE OR REPLACE TRIGGER ajout_IdEtape
  BEFORE INSERT ON Recette
  FOR EACH ROW
BEGIN
  SELECT Etape_seq.nextval
  INTO :new.IdEtape
  FROM dual;
END;

-- On crée la séquence
CREATE SEQUENCE IngredientRecette_seq 
START WITH 1
INCREMENT BY 1;
-- On crée le trigger
CREATE OR REPLACE TRIGGER ajout_IdIngredientRecette
  BEFORE INSERT ON Recette
  FOR EACH ROW
BEGIN
  SELECT IngredientRecette_seq.nextval
  INTO :new.IdIngredientRecette
  FROM dual;
END;
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

--------- Script pour le programme ------------------

-- Package qui va stocker toutes les procédures lié aux utilisateurs
CREATE OR REPLACE PACKAGE PKG_Utilisateur

-- Procédure de création d'un client ( vérification si email déjà prit )
CREATE OR REPLACE PROCEDURE Create_Client
    (IN_Pseudo IN Utilisateur.pseudo%TYPE,IN_Email IN Utilisateur.email%TYPE,IN_DateInscription IN Utilisateur.DateInscription%TYPE,IN_passwords IN Utilisateur.passwords%TYPE, test OUT NUMBER) IS
BEGIN
    -- On test si l'email n'existe pas dans la DB
    IF NOT EXISTS(SELECT * FROM Utilisateur WHERE Email = IN_Email) THEN
        INSERT INTO Utilisateur(pseudo,email,DateInscription,passwords) 
        VALUES (IN_Pseudo,IN_Email,IN_DateInscription,IN_passwords);
        test := 0; -- On renvoie 0 pour dire que l'inscription c'est bien passé
    ELSE 
        test := 1; -- On renvoie 1 pour dire que l'inscription n'est pas possible car l'email est déjà prit
    END IF;
    EXCEPTION 
        WHEN VALUE_ERROR THEN test := 2;
        WHEN OTHERS THEN test := 3;
END;
/
--------------------------------------------------------------------------
-- Fonction de création d'un client ( vérification si email déjà prit ) --
--------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION Create_Client
    (
        IN_Pseudo IN Utilisateur.pseudo%TYPE,
        IN_Email IN Utilisateur.email%TYPE,
        IN_DateInscription IN Utilisateur.DateInscription%TYPE,
        IN_passwords IN Utilisateur.passwords%TYPE
    ) RETURN NUMBER
    IS 
        OUT_Value NUMBER
    BEGIN
        -- On test si l'email n'existe pas dans la DB
        IF NOT EXISTS(SELECT * FROM Utilisateur WHERE Email = IN_Email) THEN
        INSERT INTO Utilisateur(pseudo,email,DateInscription,passwords) 
        VALUES (IN_Pseudo,IN_Email,IN_DateInscription,IN_passwords);
        OUT_Value := 0; -- On renvoie 0 pour dire que l'inscription c'est bien passé
    ELSE 
        OUT_Value := 1; -- On renvoie 1 pour dire que l'inscription n'est pas possible car l'email est déjà prit
    END IF;
    EXCEPTION 
        WHEN VALUE_ERROR THEN OUT_Value := 2;
        WHEN OTHERS THEN OUT_Value := 3;
    END;
    return (OUT_Value);
END;
/
-- Procédure pour trouver un client selon Pseudo/mdp ( pour le login )
CREATE OR REPLACE PROCEDURE Find_Client_Pseudo
    (IN_Pseudo IN Utilisateur.pseudo%TYPE, IN_passwords IN Utilisateur.passwords%TYPE, test OUT NUMBER) IS
BEGIN
    IF EXISTS(SELECT * FROM Utilisateur WHERE Pseudo = IN_Pseudo AND passwords = IN_passwords) THEN
        test := 0;
    ELSE
        test := 1;
    END IF;
END;
/
------------------------------------------------------------------
-- Fonction pour trouver un client pseudo/mdp ( pour le login ) --
------------------------------------------------------------------
CREATE OR REPLACE FUNCTION Find_Client_Pseudo
    (
        IN_Pseudo IN Utilisateur.pseudo%TYPE,
        IN_passwords IN Utilisateur.passwords%TYPE
    ) RETURN NUMBER
    IS
        OUT_Value NUMBER
    BEGIN
        IF EXISTS(SELECT * FROM Utilisateur WHERE Pseudo = IN_Pseudo AND passwords = IN_passwords) THEN
            OUT_Value := 0;
        ELSE
         OUT_Value := 1;
        END IF;
        return (OUT_Value);
    END;
/
-- Procédure pour trouver un client selon Email/mdp ( pour le login )
CREATE OR REPLACE PROCEDURE Find_Client_Email
    (IN_Email IN Utilisateur.email%TYPE, IN_passwords IN Utilisateur.passwords%TYPE, test OUT NUMBER) IS
BEGIN
    IF EXISTS(SELECT * FROM Utilisateur WHERE Email = IN_Email AND passwords = IN_passwords) THEN
        test := 0;
    ELSE
        test := 1;
    END IF;
END;
/
------------------------------------------------------------------
-- Fonction pour trouver un client pseudo/mdp ( pour le login ) --
------------------------------------------------------------------
CREATE OR REPLACE FUNCTION Find_Client_Email
    (
        IN_Email IN Utilisateur.email%TYPE,
        IN_passwords IN Utilisateur.passwords%TYPE
    ) RETURN NUMBER
    IS
        OUT_Value NUMBER
    BEGIN
        IF EXISTS(SELECT * FROM Utilisateur WHERE Email = IN_Email AND passwords = IN_passwords) THEN
            OUT_Value := 0;
        ELSE
         OUT_Value := 1;
        END IF;
        return (OUT_Value);
    END;
/
-- Procédure qui renvoie toutes les données du client pour la vision de son profil
CREATE OR REPLACE PROCEDURE Find_Client
    (IN_Email IN Utilisateur.email%TYPE, OUT_mail OUT Utilisateur.email%TYPE, OUT_Pseudo OUT Utilisateur.pseudo%TYPE, OUT_Date OUT Utilisateur.DateInscription%TYPE) IS
BEGIN
    IF EXISTS(SELECT * FROM Utilisateur WHERE Email = IN_Email) THEN

    ELSE 

    END IF;
END;
/
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