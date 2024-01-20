CREATE TABLE Donateur (
  DonateurID INTEGER PRIMARY KEY NOT NULL,
  Nom VARCHAR NOT NULL,
  Prenom VARCHAR NOT NULL,
  Adresse,
  NumeroDeTelephone VARCHAR,
  AdresseEmail VARCHAR
);

CREATE TABLE Don (
  DonID INTEGER PRIMARY KEY NOT NULL,
  Montant DECIMAL,
  DateDuDon DATETIME,
  TypeDeDon VARCHAR,
  DonateurID INTEGER REFERENCES Donateur(DonateurID),
  CampagneID INTEGER REFERENCES Campagne(CampagneID),
  ProduitID INTEGER REFERENCES Produit(ProduitID)
);

CREATE TABLE Campagne (
  CampagneID INTEGER PRIMARY KEY NOT NULL,
  NomDeLaCampagne VARCHAR,
  DateDeDebut DATETIME,
  DateDeFin DATETIME
);

CREATE TABLE Produit (
  ProduitID INTEGER PRIMARY KEY NOT NULL,
  NomDuProduit VARCHAR,
  Categorie VARCHAR
);

CREATE TABLE Stock (
  StockID INTEGER PRIMARY KEY NOT NULL,
  QuantiteEnStock INTEGER,
  ProduitID INTEGER REFERENCES Produit(ProduitID),
  SuccursaleID INTEGER REFERENCES Succursale(SuccursaleID)
);

CREATE TABLE Beneficiaire (
  BeneficiaireID INTEGER PRIMARY KEY NOT NULL,
  Nom VARCHAR,
  Prenom VARCHAR,
  Adresse VARCHAR,
  NumeroDeTelephone VARCHAR
);

CREATE TABLE Distribution (
  DistributionID INTEGER PRIMARY KEY NOT NULL,
  DateDeDistribution DATETIME,
  BeneficiaireID INTEGER REFERENCES Beneficiaire(BeneficiaireID),
  SuccursaleID INTEGER REFERENCES Succursale(SuccursaleID)
);

CREATE TABLE Succursale (
  SuccursaleID INTEGER PRIMARY KEY NOT NULL,
  NomDeLaSuccursale VARCHAR,
  Adresse VARCHAR
);

CREATE TABLE ArticleDonEnNature (
  ArticleID INTEGER PRIMARY KEY NOT NULL,
  NomDeLArticle VARCHAR,
  Description VARCHAR,
  ValeurEstimee DECIMAL,
  DonID INTEGER REFERENCES Don(DonID)
);

CREATE TABLE EmployeVolontaire (
  EmployeID INTEGER PRIMARY KEY NOT NULL,
  Nom VARCHAR,
  Prenom VARCHAR,
  Fonction VARCHAR,
  Adresse VARCHAR,
  NumeroDeTelephone VARCHAR,
  StockID INTEGER REFERENCES Stock(StockID)
);

CREATE TABLE Distribuer (
  IdDistribuer INTEGER PRIMARY KEY NOT NULL,
  StockID INTEGER REFERENCES Stock(StockID),
  DistributionID INTEGER REFERENCES Distribution(DistributionID)
);

CREATE TABLE StatutDuBeneficiaire (
  StatutID INTEGER PRIMARY KEY NOT NULL,
  Libelle VARCHAR
);

CREATE TABLE BeneficiaireStatut (
  BeneficiaireID INTEGER REFERENCES Beneficiaire(BeneficiaireID),
  StatutID INTEGER REFERENCES StatutDuBeneficiaire(StatutID),
  DateDeDebut DATETIME
);


CREATE TABLE OperationFinanciere (
  OperationID INTEGER PRIMARY KEY NOT NULL,
  Montant DECIMAL,
  TypeDOperation VARCHAR,
  Date DATETIME,
  DonateurID INTEGER REFERENCES Donateur(DonateurID),
  CampagneID INTEGER REFERENCES Campagne(CampagneID)
);


