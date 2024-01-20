-- Requête 1: Sélectionner tous les dons
SELECT * FROM Don;

-- Requête 2: Sélectionner tous les dons avec les détails du donateur
SELECT Don.*, Donateur.Nom, Donateur.Prenom
FROM Don
INNER JOIN Donateur ON Don.DonateurID = Donateur.DonateurID;

-- Requête 3: Sélectionner tous les bénéficiaires
SELECT * FROM Beneficiaire;

-- Requête 4: Sélectionner tous les employés volontaires
SELECT * FROM EmployeVolontaire;

-- Requête 5: Sélectionner tous les dons en nature avec les détails des articles
SELECT Don.*, ArticleDonEnNature.NomDeLArticle, ArticleDonEnNature.Description
FROM Don
INNER JOIN ArticleDonEnNature ON Don.DonID = ArticleDonEnNature.DonID
WHERE Don.TypeDeDon = 'En nature';

-- Requête 6: Sélectionner toutes les distributions avec les détails des bénéficiaires
SELECT Distribution.*, Beneficiaire.Nom, Beneficiaire.Prenom
FROM Distribution
INNER JOIN Beneficiaire ON Distribution.BeneficiaireID = Beneficiaire.BeneficiaireID;

-- Requête 7: Sélectionner tous les dons associés à une campagne spécifique
SELECT * FROM Don WHERE CampagneID = 1;

-- Requête 8: Sélectionner tous les employés volontaires associés à un stock spécifique
SELECT EmployeVolontaire.*
FROM EmployeVolontaire
INNER JOIN Stock ON EmployeVolontaire.StockID = Stock.StockID
WHERE Stock.ProduitID = 1;

-- Requête 9: Sélectionner tous les dons effectués pendant une période spécifique
SELECT * FROM Don WHERE DateDuDon BETWEEN '2024-01-01' AND '2024-03-01';

-- Requête 10: Sélectionner tous les dons effectués par un donateur spécifique
SELECT * FROM Don WHERE DonateurID = 1;

-- Requête 11: Sélectionner tous les stocks avec les détails des produits
SELECT Stock.*, Produit.NomDuProduit
FROM Stock
INNER JOIN Produit ON Stock.ProduitID = Produit.ProduitID;

-- Requête 12: Sélectionner tous les bénéficiaires avec leurs statuts actuels
SELECT Beneficiaire.*, StatutDuBeneficiaire.Libelle
FROM Beneficiaire
INNER JOIN BeneficiaireStatut ON Beneficiaire.BeneficiaireID = BeneficiaireStatut.BeneficiaireID
INNER JOIN StatutDuBeneficiaire ON BeneficiaireStatut.StatutID = StatutDuBeneficiaire.StatutID
WHERE BeneficiaireStatut.DateDeDebut <= CURRENT_DATE;

-- Requête 13: Sélectionner tous les dons effectués par un donateur spécifique avec le détail de la campagne associée
SELECT Don.*, Campagne.NomDeLaCampagne
FROM Don
INNER JOIN Campagne ON Don.CampagneID = Campagne.CampagneID
WHERE Don.DonateurID = 1;

-- Requête 14: Sélectionner tous les bénéficiaires avec le nombre total de distributions qu'ils ont reçues
SELECT Beneficiaire.*, COUNT(Distribution.DistributionID) AS NombreDeDistributions
FROM Beneficiaire
LEFT JOIN Distribution ON Beneficiaire.BeneficiaireID = Distribution.BeneficiaireID
GROUP BY Beneficiaire.BeneficiaireID;

-- Requête 15: Sélectionner tous les dons effectués par un donateur spécifique avec le total des montants
SELECT Donateur.Nom, Donateur.Prenom, SUM(Don.Montant) AS TotalDesDons
FROM Don
INNER JOIN Donateur ON Don.DonateurID = Donateur.DonateurID
WHERE Don.DonateurID = 1
GROUP BY Donateur.DonateurID;

-- Requête 16: Sélectionner tous les employés volontaires qui gèrent un stock spécifique
SELECT EmployeVolontaire.*
FROM EmployeVolontaire
INNER JOIN gere ON EmployeVolontaire.StockID = gere.StockID
WHERE gere.StockID = 1;

-- Requête 17: Sélectionner tous les produits qui sont actuellement en stock
SELECT Produit.*
FROM Produit
INNER JOIN Stock ON Produit.ProduitID = Stock.ProduitID
WHERE Stock.QuantiteEnStock > 0;

-- Requête 18: Sélectionner toutes les opérations financières liées à une campagne spécifique
SELECT OperationFinanciere.*
FROM OperationFinanciere
WHERE OperationFinanciere.CampagneID = 1;

-- Requête 19: Sélectionner les bénéficiaires avec leur statut actuel et la succursale associée à leur dernière distribution
SELECT Beneficiaire.*, StatutDuBeneficiaire.Libelle, Succursale.NomDeLaSuccursale
FROM Beneficiaire
INNER JOIN BeneficiaireStatut ON Beneficiaire.BeneficiaireID = BeneficiaireStatut.BeneficiaireID
INNER JOIN StatutDuBeneficiaire ON BeneficiaireStatut.StatutID = StatutDuBeneficiaire.StatutID
LEFT JOIN Distribution ON Beneficiaire.BeneficiaireID = Distribution.BeneficiaireID
LEFT JOIN Succursale ON Distribution.SuccursaleID = Succursale.SuccursaleID
WHERE BeneficiaireStatut.DateDeDebut <= CURRENT_DATE
ORDER BY Distribution.DateDeDistribution DESC
LIMIT 1;

-- Requête 20:Sélectionne le type de don, le montant total des dons, le nom et le prénom du donateur
SELECT Don.TypeDeDon,SUM(Don.Montant) AS MontantTotal, Donateur.Nom,  Donateur.Prenom 
FROM Don  
JOIN Donateur ON Don.DonateurID = Donateur.DonateurID 
GROUP BY Don.TypeDeDon, Donateur.Nom, Donateur.Prenom;  

