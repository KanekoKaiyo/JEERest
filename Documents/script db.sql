------------ Création des tables ----------
CREATE TABLE Utilisateur(
    IdUtilisateur NUMBER(10)NOT NULL,
    Pseudo VARCHAR2(45) NOT NULL,
    Email VARCHAR2(100) NOT NULL,
    DateInscriptionDATE NOT NULL,
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
CREATE SEQUENCE Utilisateur_seq START WITH 1;

CREATE OR REPLACE TRIGGER Utilisateur_id
BEFORE INSERT ON Utilisateur
FOR EACH ROW 
DECLARE
BEGIN
    
END;
/
----------- Script population des tables --------------