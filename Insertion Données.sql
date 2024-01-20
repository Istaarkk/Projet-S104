-- Ajouter des valeurs à la table Donateur
INSERT INTO Donateur (Nom, Prenom, Adresse, NumeroDeTelephone, AdresseEmail) VALUES
('Smith', 'John', '123 Main Street', '555-1234', 'john.smith@email.com'),
('Doe', 'Jane', '456 Oak Avenue', '555-5678', 'jane.doe@email.com'),
('Johnson', 'Mike', '789 Elm Lane', '555-9012', 'mike.johnson@email.com'),
('Brown', 'Emily', '321 Pine Road', '555-3456', 'emily.brown@email.com'),
('Williams', 'David', '654 Birch Street', '555-7890', 'david.williams@email.com'),
('Davis', 'Olivia', '987 Cedar Court', '555-4321', 'olivia.davis@email.com');

-- Ajouter des valeurs à la table Don
INSERT INTO Don (Montant, DateDuDon, TypeDeDon, DonateurID, CampagneID, ProduitID) VALUES
(100.00, '2024-01-01', 'En espèces', 1, 1, 1),
(50.00, '2024-02-15', 'En nature', 2, 2, 2),
(200.00, '2024-03-30', 'En espèces', 3, 1, 3),
(75.00, '2024-04-12', 'En nature', 4, 2, 1),
(150.00, '2024-05-20', 'En espèces', 5, 1, 2),
(120.00, '2024-06-05', 'En nature', 6, 2, 3);

-- Ajouter des valeurs à la table Campagne
INSERT INTO Campagne (NomDeLaCampagne, DateDeDebut, DateDeFin) VALUES
('Campagne de Noël', '2024-01-01', '2024-01-31'),
('Campagne d été', '2024-06-01', '2024-08-31');

-- Ajouter des valeurs à la table Produit
INSERT INTO Produit (NomDuProduit, Categorie) VALUES
('Céréales', 'Alimentation'),
('Vêtements', 'Vêtements'),
('Jouets', 'Jouets'),
('Produit 1', 'Catégorie 1'),
('Produit 2', 'Catégorie 2'),
('Produit 3', 'Catégorie 3');

-- Ajouter des valeurs à la table Stock
INSERT INTO Stock (QuantiteEnStock, ProduitID, SuccursaleID) VALUES
(100, 1, 1),
(50, 2, 2),
(200, 3, 1),
(75, 1, 2),
(150, 2, 1),
(120, 3, 2);

-- Ajouter des valeurs à la table Beneficiaire
INSERT INTO Beneficiaire (Nom, Prenom, Adresse, NumeroDeTelephone) VALUES
('Martin', 'Sophie', '10 Apple Street', '555-1111'),
('Mavrick', 'Luc', '20 Banana Avenue', '555-2222'),
('Dupont', 'Marie', '30 Cherry Lane', '555-3333'),
('Durand', 'Pierre', '40 Date Road', '555-4444'),
('Leclerc', 'Isabelle', '50 Elder Court', '555-5555'),
('Girard', 'Michel', '60 Fig Street', '555-6666');

-- Ajouter des valeurs à la table Distribution
INSERT INTO Distribution (DateDeDistribution, BeneficiaireID, SuccursaleID) VALUES
('2024-01-15', 1, 1),
('2024-02-28', 2, 2),
('2024-03-15', 3, 1),
('2024-04-30', 4, 2),
('2024-05-10', 5, 1),
('2024-06-20', 6, 2);

-- Ajouter des valeurs à la table Succursale
INSERT INTO Succursale (NomDeLaSuccursale, Adresse) VALUES
('Succursale A', '123 Main Street'),
('Succursale B', '456 Oak Avenue');

-- Ajouter des valeurs à la table ArticleDonEnNature
INSERT INTO ArticleDonEnNature (NomDeLArticle, Description, ValeurEstimee, DonID) VALUES
('Article 1', 'Description 1', 30.00, 1),
('Article 2', 'Description 2', 20.00, 2),
('Article 3', 'Description 3', 50.00, 3),
('Article 4', 'Description 4', 25.00, 4),
('Article 5', 'Description 5', 40.00, 5),
('Article 6', 'Description 6', 35.00, 6);

-- Ajouter des valeurs à la table EmployeVolontaire
INSERT INTO EmployeVolontaire (Nom, Prenom, Fonction, Adresse, NumeroDeTelephone, StockID) VALUES
('Dupuis', 'Paul', 'Volontaire', '70 Grape Lane', '555-7777', 1),
('Lavoie', 'Claire', 'Volontaire', '80 Honey Road', '555-8888', 2),
('Bouchard', 'Robert', 'Volontaire', '90 Ice Court', '555-9999', 3),
('Gagnon', 'Isabelle', 'Volontaire', '100 Jack Street', '555-0000', 4),
('Tremblay', 'Sylvain', 'Volontaire', '110 Kiwi Avenue', '555-1122', 5),
('Bergeron', 'Nathalie', 'Volontaire', '120 Lemon Lane', '555-3344', 6);

-- Ajouter des valeurs à la table Distribuer
INSERT INTO Distribuer (StockID, DistributionID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- Ajouter des valeurs à la table StatutDuBeneficiaire
INSERT INTO StatutDuBeneficiaire (Libelle) VALUES
('Actif'),
('Inactif'),
('En attente');

-- Ajouter des valeurs à la table BeneficiaireStatut
INSERT INTO BeneficiaireStatut (BeneficiaireID, StatutID, DateDeDebut) VALUES
(1, 1, '2024-01-15'),
(2, 2, '2024-02-28'),
(3, 3, '2024-03-15'),
(4, 1, '2024-04-30'),
(5, 2, '2024-05-10'),
(6, 3, '2024-06-20');



-- Ajouter des valeurs à la table OperationFinanciere
INSERT INTO OperationFinanciere (Montant, TypeDOperation, Date, DonateurID, CampagneID) VALUES
(50.00, 'Dépense', '2024-01-05', 1, 1),
(100.00, 'Revenu', '2024-02-20', 2, 2),
(75.00, 'Dépense', '2024-03-25', 3, 1),
(120.00, 'Revenu', '2024-04-10', 4, 2),
(200.00, 'Dépense', '2024-05-15', 5, 1),
(150.00, 'Revenu', '2024-06-30', 6, 2);
 