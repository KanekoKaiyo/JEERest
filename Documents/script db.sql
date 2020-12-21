------------ Création des tables ----------
CREATE TABLE UserF(
    IdUserF NUMBER(10)NOT NULL,
    Pseudo VARCHAR2(45) NOT NULL,
    Email VARCHAR2(100) NOT NULL,
    password VARCHAR2(100) NOT NULL,
    DateInscription DATE NOT NULL,
    PRIMARY KEY (IdUserF)
);

CREATE TABLE IngredientF(
    IdIngredientF NUMBER(10)NOT NULL,
    NameIngredientF VARCHAR2(100) NOT NULL,
    PRIMARY KEY (IdIngredientF)
);

CREATE TABLE ImagesF(
    IdImagesF NUMBER(10)NOT NULL,
    UrlImagesF VARCHAR2(200),
    PRIMARY KEY (IdImagesF)
);

CREATE TABLE RecipeF(
    IdRecipeF NUMBER(10) NOT NULL,
    Title VARCHAR2(45) NOT NULL,
    Category VARCHAR2(45) NOT NULL,
    TimeCooking NUMBER(10) NOT NULL,
    TimePreparation NUMBER(10) NOT NULL,
    TotalTime NUMBER(10) NOT NULL,
    Cost VARCHAR2(45) NOT NULL,
    IdUserF NUMBER(10) NOT NULL,
    idImagesF NUMBER(10),
    PRIMARY KEY (IdRecipeF),
    CONSTRAINT fk_RecipeF_UserF
        FOREIGN KEY (idUserF)
        REFERENCES UserF(IdUserF),
    CONSTRAINT fk_RecipeF_Image
        FOREIGN KEY (idImagesF)
        REFERENCES ImagesF(IdImagesF)
);

CREATE TABLE CommentF(
    IdCommentF NUMBER(10) NOT NULL,
    Messages VARCHAR2(4000) NOT NULL,
    DateTimeCommentF DATE NOT NULL,
    IdRecipeF NUMBER(10) NOT NULL,
    IdUserF NUMBER(10)NOT NULL,
    PRIMARY KEY(IdCommentF),
    CONSTRAINT fk_CommentF_RecipeF
        FOREIGN KEY(IdRecipeF)
        REFERENCES RecipeF(IdRecipeF),
    CONSTRAINT fk_CommentF_UserF
        FOREIGN KEY(IdUserF)
        REFERENCES UserF(IdUserF)
);

CREATE TABLE StepF(
    idStepF NUMBER(10) NOT NULL,
    NumberStepF NUMBER(10) NOT NULL,
    DescriptionStepF VARCHAR2(4000) NOT NULL,
    idRecipeF NUMBER(10) NOT NULL,
    PRIMARY KEY (idStepF),
    CONSTRAINT fk_StepF_RecipeF
        FOREIGN KEY(idRecipeF)
        REFERENCES RecipeF(IdRecipeF)
);

CREATE TABLE IngredientFRecipeF(
    idIngredientFRecipeF NUMBER(10) NOT NULL,
    Quantity float(10) NOT NULL,
    Measure VARCHAR2(30) NOT NULL,
    idRecipeF NUMBER(10) NOT NULL,
    idIngredientF NUMBER(10)NOT NULL,
    PRIMARY KEY(idIngredientFRecipeF),
    CONSTRAINT fk_IngredientFRecipeF_IngredientF
        FOREIGN KEY(idIngredientF)
        REFERENCES IngredientF(IdIngredientF),
    CONSTRAINT fk_IngredientFRecipeF_RecipeF
        FOREIGN KEY(idRecipeF)
        REFERENCES RecipeF(IdRecipeF)
);

-- We create the sequence
CREATE SEQUENCE UserF_seq 
START WITH 1
INCREMENT BY 1;
-- We create the trigger
CREATE OR REPLACE TRIGGER add_IDUserF
  BEFORE INSERT ON UserF
  FOR EACH ROW
BEGIN
  SELECT UserF_seq .nextval
  INTO :new.idUserF
  FROM dual;
END;
-- We create the sequence
CREATE SEQUENCE IngredientF_seq 
START WITH 1
INCREMENT BY 1;
-- We create the trigger
CREATE OR REPLACE TRIGGER add_IdIngredientF
  BEFORE INSERT ON IngredientF
  FOR EACH ROW
BEGIN
  SELECT IngredientF_seq.nextval
  INTO :new.IdIngredientF
  FROM dual;
END;

-- We create the sequence
CREATE SEQUENCE ImagesF_seq 
START WITH 1
INCREMENT BY 1;
-- We create the trigger
CREATE OR REPLACE TRIGGER add_IdImagesF
  BEFORE INSERT ON ImagesF
  FOR EACH ROW
BEGIN
  SELECT ImagesF_seq.nextval
  INTO :new.IdImagesF
  FROM dual;
END;

-- We create the sequence
CREATE SEQUENCE RecipeF_seq 
START WITH 1
INCREMENT BY 1;
-- We create the trigger
CREATE OR REPLACE TRIGGER add_IdRecipeF
  BEFORE INSERT ON RecipeF
  FOR EACH ROW
BEGIN
  SELECT RecipeF_seq.nextval
  INTO :new.IdRecipeF
  FROM dual;
END;

-- We create the sequence
CREATE SEQUENCE CommentF_seq 
START WITH 1
INCREMENT BY 1;
-- We create the trigger
CREATE OR REPLACE TRIGGER add_IdCommentF
  BEFORE INSERT ON CommentF
  FOR EACH ROW
BEGIN
  SELECT CommentF_seq.nextval
  INTO :new.IdCommentF
  FROM dual;
END;

-- We create the sequence
CREATE SEQUENCE StepF_seq 
START WITH 1
INCREMENT BY 1;
-- We create the trigger
CREATE OR REPLACE TRIGGER add_IdStepF
  BEFORE INSERT ON StepF
  FOR EACH ROW
BEGIN
  SELECT StepF_seq.nextval
  INTO :new.IdStepF
  FROM dual;
END;

-- We create the sequence
CREATE SEQUENCE IngredientFRecipeF_seq 
START WITH 1
INCREMENT BY 1;
-- We create the trigger
CREATE OR REPLACE TRIGGER add_IdIngredientFRecipeF
  BEFORE INSERT ON IngredientFRecipeF
  FOR EACH ROW
BEGIN
  SELECT IngredientFRecipeF_seq.nextval
  INTO :new.IdIngredientFRecipeF
  FROM dual;
END;


INSERT INTO UserF(Pseudo , Email, password, DateInscription) VALUES ('ChefCulinaire','chefculinaire@gmail.con', 'test1','01/12/2020');
INSERT INTO UserF(Pseudo , Email, password, DateInscription) VALUES ('LeCordonBleu','lecordonbleu@yahoo.fr','test2','03/12/2020');
INSERT INTO UserF(Pseudo , Email, password, DateInscription) VALUES ('Traiteur','traiteur@gmail.con', 'test3','04/12/2020');
INSERT INTO UserF(Pseudo , Email, password, DateInscription) VALUES ('Meticuleux','meticuleux@gmail.con', 'test4','12-12-2020');

INSERT INTO IngredientF(NameIngredientF) VALUES ('Oeuf');
INSERT INTO IngredientF(NameIngredientF) VALUES ('Farine');
INSERT INTO IngredientF(NameIngredientF) VALUES ('Beurre');
INSERT INTO IngredientF(NameIngredientF) VALUES ('Sucre');
INSERT INTO IngredientF(NameIngredientF) VALUES ('poudre de Cacao');
INSERT INTO IngredientF(NameIngredientF) VALUES ('Levure');
INSERT INTO IngredientF(NameIngredientF) VALUES ('Arome');

INSERT INTO ImagesF(UrlImagesF) VALUES ('C:\SGBD5ImagesF\cake.jpg');
INSERT INTO ImagesF(UrlImagesF) VALUES ('C:\SGBD5ImagesF\omelette.jpg');


IdRecipeF NUMBER(10) NOT NULL,
    Title VARCHAR2(45) NOT NULL,
    Category VARCHAR2(45) NOT NULL,
    TimeCooking NUMBER(10) NOT NULL,
    TimePreparation NUMBER(10) NOT NULL,
    TotalTime NUMBER(10) NOT NULL,
    Cost VARCHAR2(45) NOT NULL,
    IdUserF NUMBER(10) NOT NULL,
    idImagesF NUMBER(10),
    PRIMARY KEY (IdRecipeF),
    CONSTRAINT fk_RecipeF_UserF
        FOREIGN KEY (idUserF)
        REFERENCES UserF(IdUserF),
    CONSTRAINT fk_RecipeF_Image
        FOREIGN KEY (idImagesF)
        REFERENCES ImagesF(IdImagesF)

INSERT INTO RecipeF(Title, Category, TimeCooking,TimePreparation,TotalTime,Cost,IdUserF,idImagesF) VALUES ('Cake nature', 'Dessert', '30', '15', '45', 'Abordable', 5,1);
INSERT INTO RecipeF(Title, Category, TimeCooking,TimePreparation,TotalTime,Cost,IdUserF) VALUES ('Cake nature', 'Dessert', '30', '15', '45', 'Abordable', 6);
INSERT INTO RecipeF(Title, Category, TimeCooking,TimePreparation,TotalTime,Cost,IdUserF) VALUES ('Cake yahourt', 'Dessert', '30', '15', '45', 'Abordable', 7);
INSERT INTO RecipeF(Title, Category, TimeCooking,TimePreparation,TotalTime,Cost,IdUserF,idImagesF) VALUES ('omelette', 'Dessert', '5', '3', '8', 'Abordable', 8, 2);

INSERT INTO CommentF(Messages,DateTimeCommentF, IdRecipeF,IdUserF) VALUES ('Merci pour la superbe RecipeF j ai reussit des le premier essai il est delicieux j ai adoree', '14-12-2020', 5,7);
INSERT INTO CommentF(Messages,DateTimeCommentF, IdRecipeF,IdUserF) VALUES ('delicieux et facile … faire. merci … toi chefculinaire', '14-12-2020', 5,7);
INSERT INTO CommentF(Messages,DateTimeCommentF, IdRecipeF,IdUserF) VALUES ('chefculinaire j adore tes fabuleuse RecipeFs', '14-12-2020', 7,8);
INSERT INTO CommentF(Messages,DateTimeCommentF, IdRecipeF,IdUserF) VALUES ('Merci pour la superbe omelette RecipeF j ai reussit des le premier essai il est delicieux j ai adoree', '14-12-2020', 8,5);
INSERT INTO CommentF(Messages,DateTimeCommentF, IdRecipeF,IdUserF) VALUES ('omelette delicieux et facile faire surtout rapide', '14-12-2020', 5,7);
INSERT INTO CommentF(Messages,DateTimeCommentF, IdRecipeF,IdUserF) VALUES ('omelette superbe j adore tes fabuleuse RecipeFs', '14-12-2020', 5,8);



INSERT INTO StepF(NumberStepF, DescriptionStepF, idRecipeF) VALUES (1,'faire fondre du beurre', 5);
INSERT INTO StepF(NumberStepF, DescriptionStepF, idRecipeF) VALUES (2,'casser les omelette dans un saladier, adder une pinser de sel et du sucre', 5);
INSERT INTO StepF(NumberStepF, DescriptionStepF, idRecipeF) VALUES (3,'radder du beurre fondu reffroidi', 5);
INSERT INTO StepF(NumberStepF, DescriptionStepF, idRecipeF) VALUES (4,'mellanger energiquement avec un bateur pendant 2 minutes', 5);
INSERT INTO StepF(NumberStepF, DescriptionStepF, idRecipeF) VALUES (5,'tamisser la farine decu et melanger energiquement jusqua optention d une pate homogene', 5);
INSERT INTO StepF(NumberStepF, DescriptionStepF, idRecipeF) VALUES (6,'diviser la pate en 2 et adder la poudre de cacao dans une partie et melanger delicatement', 5);
INSERT INTO StepF(NumberStepF, DescriptionStepF, idRecipeF) VALUES (7,'verser dans un moule a cake la parti sans cacao ensuite la partie avec cacao et placer dans le four a 130 decre', 5);
INSERT INTO StepF(NumberStepF, DescriptionStepF, idRecipeF) VALUES (8,'sortir du four apès 30 minutes', 5);
INSERT INTO StepF(NumberStepF, DescriptionStepF, idRecipeF) VALUES (1,'emincer oignon, pecil et aille, tomate et poivrons', 8);
INSERT INTO StepF(NumberStepF, DescriptionStepF, idRecipeF) VALUES (2,'casser les oeufs dans un saladier, adder les condument emincer et une pincer de sel', 8);
INSERT INTO StepF(NumberStepF, DescriptionStepF, idRecipeF) VALUES (3,'mettre la poelle sur le four et laisser chauffer', 8);
INSERT INTO StepF(NumberStepF, DescriptionStepF, idRecipeF) VALUES (4,'radder de l huile dans la poelle', 8);
INSERT INTO StepF(NumberStepF, DescriptionStepF, idRecipeF) VALUES (5,'melanger les oeufs et les conduments durant 30 secondes', 8);
INSERT INTO StepF(NumberStepF, DescriptionStepF, idRecipeF) VALUES (6,'verser les omelette dans la poelle et mettre un feu dou', 8);
INSERT INTO StepF(NumberStepF, DescriptionStepF, idRecipeF) VALUES (6,'apres une minute retourner les omelette afin de faire cuire le dessus. apres 1 autre minute server dans un plat. avec pour complement pain, excelent pour les tartines', 8);


INSERT INTO IngredientFRecipeF(Quantity,Measure,idRecipeF, idIngredientF) VALUES (4,null,5,1);
INSERT INTO IngredientFRecipeF(Quantity,Measure ,idRecipeF, idIngredientF) VALUES (0,'300g',5,3);
INSERT INTO IngredientFRecipeF(Quantity,Measure ,idRecipeF, idIngredientF) VALUES (0,'250g',5,2);
INSERT INTO IngredientFRecipeF(Quantity,Measure ,idRecipeF, idIngredientF) VALUES (0,'200g',5,4);
INSERT INTO IngredientFRecipeF(Quantity,Measure ,idRecipeF, idIngredientF) VALUES (1,'sachet de 8g',5, 6);
INSERT INTO IngredientFRecipeF(Quantity,Measure ,idRecipeF, idIngredientF) VALUES (2,'sachet de 30g', 5, 5);

-----------------------------------//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--------------------
----------------------------pour consulter la table UserF de facon ordonner à adapter pour les autres.---------------------------
Declare
TYPE T_REC_UserF IS RECORD (
OUT_id UserF.IdUserF%TYPE,
OUT_Pseudo UserF.Pseudo%TYPE,
OUT_Email UserF.Email%TYPE,
OUT_password UserF.password%TYPE,
OUT_DateInscription UserF.DateInscription%TYPE);
TYPE TAB_T_REC_UserF IS TABLE OF T_REC_UserF index by binary_integer ;
t_rec TAB_T_REC_UserF ;
i UserF.IdUserF%TYPE := 0;
BEGIN
 for cc in (SELECT IdUserF,Pseudo,Email,password,DateInscription FROM UserF) LOOP
i := i+1;
t_rec(i).OUT_id := cc.IdUserF;
t_rec(i).OUT_Pseudo := cc.Pseudo;
t_rec(i).OUT_Email := cc.Email;
t_rec(i).OUT_password := cc.password;
t_rec(i).OUT_DateInscription := cc.DateInscription;
END LOOP;
for i IN t_rec.first..t_rec.last loop
    DBMS_OUTPUT.PUT_LINE('IdUserF: '||t_rec(i).OUT_id||'  pseudo: '||t_rec(i).OUT_Pseudo||'  email: '||t_rec(i).OUT_Email||'  password: '||t_rec(i).OUT_password||'  DateInscription:  '||t_rec(i).OUT_DateInscription) ;
   END LOOP;
END;
-----------------------------------//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--------------------

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
