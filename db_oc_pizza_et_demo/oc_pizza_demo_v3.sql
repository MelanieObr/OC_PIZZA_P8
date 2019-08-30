-- OC PIZZA DEMO
-- Melanie Obringer 04.08.2019

BEGIN TRANSACTION;

-- TABLE ACHETEUR

INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (1, 'OC PIZZA', 'Responsable Groupe', 'F', 'OCPIZZA', '0612345678');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (2, 'OC PIZZA', 'Paul', 'H', 'OCPIZZA', '0612345678');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (3, 'OC PIZZA', 'Eric', 'H', 'OCPIZZA', '0612345678');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (4, 'OC PIZZA', 'Dan', 'H', 'OCPIZZA', '0612345678');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (5, 'OC PIZZA', 'Caroline', 'F', 'OCPIZZA', '0612345678');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (6, 'OC PIZZA', 'Leo', 'H', 'OCPIZZA', '0612345678');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (7, 'OC PIZZA', 'Sam', 'H', 'OCPIZZA', '0612345678');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (8, 'OC PIZZA', 'Sarah', 'F', 'OCPIZZA', '0612345678');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (9, 'OC PIZZA', 'Steve', 'H', 'OCPIZZA', '0612345678');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (10, 'OC PIZZA', 'Marc', 'H', 'OCPIZZA', '0612345678');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (11, 'OC PIZZA', 'Celine', 'F', 'OCPIZZA', '0612345678');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (12, 'OC PIZZA', 'Tom', 'H', 'OCPIZZA', '0612345678');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (13, 'OC PIZZA', 'Tony', 'H', 'OCPIZZA', '0612345678');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (14, 'OC PIZZA', 'Luc', 'H', 'OCPIZZA', '0612345678');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (15, 'OC PIZZA', 'Lea', 'F', 'OCPIZZA', '0612345678');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (16, 'OC PIZZA', 'Lucas', 'H', 'OCPIZZA', '0612345678');

SELECT setval('public.acheteur_id_seq', 16, true);

-- TABLE ADRESSE

INSERT INTO Adresse (id, numero, voie, nom_rue, ville, code_postal, pays, commentaire, point_de_vente_proche) VALUES (1, '1', 'Grand', 'Rue', 'Strasbourg', '67000', 'France', NULL, 1);
INSERT INTO Adresse (id, numero, voie, nom_rue, ville, code_postal, pays, commentaire, point_de_vente_proche) VALUES (2, '34', 'Place', 'Broglie', 'Strasbourg', '67000', 'France', NULL, 2);
INSERT INTO Adresse (id, numero, voie, nom_rue, ville, code_postal, pays, commentaire, point_de_vente_proche) VALUES (3, '46', 'Place', 'de la Cathédrale', 'Strasbourg', '67000', 'France', NULL, 3);
INSERT INTO Adresse (id, numero, voie, nom_rue, ville, code_postal, pays, commentaire, point_de_vente_proche) VALUES (4, '3', 'Place', 'de la Gare', 'Strasbourg', '67000', 'France', NULL, 4);
INSERT INTO Adresse (id, numero, voie, nom_rue, ville, code_postal, pays, commentaire, point_de_vente_proche) VALUES (5, '23', 'rue', 'de Lausanne', 'Strasbourg', '67000', 'France', NULL, 5);

SELECT setval('public.adresse_id_seq', 5, true);


-- TABLE POINT DE VENTE

INSERT INTO PointDeVente (id, nom_pizzeria, adresse_id) VALUES (1, 'Grand Rue', 1);
INSERT INTO PointDeVente (id, nom_pizzeria, adresse_id) VALUES (2, 'Broglie', 2);
INSERT INTO PointDeVente (id, nom_pizzeria, adresse_id) VALUES (3, 'Cathedrale', 3);
INSERT INTO PointDeVente (id, nom_pizzeria, adresse_id) VALUES (4, 'Gare', 4);
INSERT INTO PointDeVente (id, nom_pizzeria, adresse_id) VALUES (5, 'Etoile', 5);

SELECT setval('public.pointdevente_id_seq', 5, true);


-- TABLE FONCTION

INSERT INTO Fonction (id, libelle)  VALUES (1, 'Responsable Groupe');
INSERT INTO Fonction (id, libelle)  VALUES (2, 'Manager');
INSERT INTO Fonction (id, libelle)  VALUES (3, 'Pizzaiolo');
INSERT INTO Fonction (id, libelle)  VALUES (4, 'Livreur');

SELECT setval('public.fonction_id_seq', 4, true);

-- TABLE EMPLOYE

INSERT INTO Employe (acheteur_id, point_de_vente_id, nom, fonction_id) VALUES (1, 1, 'Responsable Groupe', 1);
INSERT INTO Employe (acheteur_id, point_de_vente_id, nom, fonction_id) VALUES (2, 1, 'Paul', 2);
INSERT INTO Employe (acheteur_id, point_de_vente_id, nom, fonction_id) VALUES (3, 1, 'Eric', 3);
INSERT INTO Employe (acheteur_id, point_de_vente_id, nom, fonction_id) VALUES (4, 1, 'Dan', 4);
INSERT INTO Employe (acheteur_id, point_de_vente_id, nom, fonction_id) VALUES (5, 2, 'Caroline', 2);
INSERT INTO Employe (acheteur_id, point_de_vente_id, nom, fonction_id) VALUES (6, 2, 'Leo', 3);
INSERT INTO Employe (acheteur_id, point_de_vente_id, nom, fonction_id) VALUES (7, 2, 'Sam', 4);
INSERT INTO Employe (acheteur_id, point_de_vente_id, nom, fonction_id) VALUES (8, 3, 'Sarah', 2);
INSERT INTO Employe (acheteur_id, point_de_vente_id, nom, fonction_id) VALUES (9, 3, 'Steve', 3);
INSERT INTO Employe (acheteur_id, point_de_vente_id, nom, fonction_id) VALUES (10, 3, 'Marc', 4);
INSERT INTO Employe (acheteur_id, point_de_vente_id, nom, fonction_id) VALUES (11, 4, 'Celine', 2);
INSERT INTO Employe (acheteur_id, point_de_vente_id, nom, fonction_id) VALUES (12, 4, 'Tom', 3);
INSERT INTO Employe (acheteur_id, point_de_vente_id, nom, fonction_id) VALUES (13, 4, 'Tony', 4);
INSERT INTO Employe (acheteur_id, point_de_vente_id, nom, fonction_id) VALUES (14, 5, 'Luc', 2);
INSERT INTO Employe (acheteur_id, point_de_vente_id, nom, fonction_id) VALUES (15, 5, 'Lea', 3);
INSERT INTO Employe (acheteur_id, point_de_vente_id, nom, fonction_id) VALUES (16, 5, 'Lucas', 4);



-- TABLE ARTICLE

INSERT INTO Article (id, libelle, taille) VALUES (1, 'Marguerite', 1);
INSERT INTO Article (id, libelle, taille) VALUES (2, 'Reine', 1);
INSERT INTO Article (id, libelle, taille) VALUES (3, 'Quatre Saisons', 1);
INSERT INTO Article (id, libelle, taille) VALUES (4, 'Carnivore', 1);
INSERT INTO Article (id, libelle, taille) VALUES (5, 'Oceane', 1);
INSERT INTO Article (id, libelle, taille) VALUES (6, 'Parme', 1);
INSERT INTO Article (id, libelle, taille) VALUES (7, 'Marguerite', 2);
INSERT INTO Article (id, libelle, taille) VALUES (8, 'Reine', 2);
INSERT INTO Article (id, libelle, taille) VALUES (9, 'Quatre Saisons', 2);
INSERT INTO Article (id, libelle, taille) VALUES (10, 'Carnivore', 2);
INSERT INTO Article (id, libelle, taille) VALUES (11, 'Oceane', 2);
INSERT INTO Article (id, libelle, taille) VALUES (12, 'Parme', 2);

SELECT setval('public.article_id_seq', 12, true);


-- TABLE INGREDIENT

INSERT INTO Ingredient (id, nom_ingredient, prix_ttc) VALUES (1, 'Pâte', 2.40);
INSERT INTO Ingredient (id, nom_ingredient, prix_ttc) VALUES (2, 'Sauce tomate', 1.00);
INSERT INTO Ingredient (id, nom_ingredient, prix_ttc) VALUES (3, 'Mozzarella', 2.00);
INSERT INTO Ingredient (id, nom_ingredient, prix_ttc) VALUES (4, 'Emmental', 2.00);
INSERT INTO Ingredient (id, nom_ingredient, prix_ttc) VALUES (5, 'Jambon', 2.00);
INSERT INTO Ingredient (id, nom_ingredient, prix_ttc) VALUES (6, 'Poulet', 1.50);
INSERT INTO Ingredient (id, nom_ingredient, prix_ttc) VALUES (7, 'Boeuf', 1.50);
INSERT INTO Ingredient (id, nom_ingredient, prix_ttc) VALUES (8, 'Champignons', 1.00);
INSERT INTO Ingredient (id, nom_ingredient, prix_ttc) VALUES (9, 'Oignons', 1.00);
INSERT INTO Ingredient (id, nom_ingredient, prix_ttc) VALUES (10, 'Poivrons', 1.00);
INSERT INTO Ingredient (id, nom_ingredient, prix_ttc) VALUES (11, 'Thon', 2.00);
INSERT INTO Ingredient (id, nom_ingredient, prix_ttc) VALUES (12, 'Jambon de Parme', 2.50);

SELECT setval('public.ingredient_id_seq', 12, true);


-- TABLE ARTICLE INGREDIENT
INSERT INTO ArticleIngredient (article_id, ingredient_id, dose) VALUES (1, 1, 1), (1, 2, 1), (1, 3, 1), (1, 4, 1);
INSERT INTO ArticleIngredient (article_id, ingredient_id, dose) VALUES (2, 1, 1), (2, 2, 1), (2, 3, 1), (2, 5, 1), (2, 8, 1);
INSERT INTO ArticleIngredient (article_id, ingredient_id, dose) VALUES (3, 1, 1), (3, 2, 1), (3, 3, 1), (3, 8, 1), (3, 9, 1), (3, 10, 1);
INSERT INTO ArticleIngredient (article_id, ingredient_id, dose) VALUES (4, 1, 1), (4, 2, 1), (4, 3, 1), (4, 5, 1), (4, 6, 1), (4, 7, 1);
INSERT INTO ArticleIngredient (article_id, ingredient_id, dose) VALUES (5, 1, 1), (5, 2, 1), (5, 3, 1), (5, 9, 1), (5,11,1);
INSERT INTO ArticleIngredient (article_id, ingredient_id, dose) VALUES (6, 1, 1), (6, 2, 1), (6, 3, 1), (6, 8, 1), (6, 12, 1);
INSERT INTO ArticleIngredient (article_id, ingredient_id, dose) VALUES (7, 1, 2), (7, 2, 2), (7, 3, 2), (7, 4, 2);
INSERT INTO ArticleIngredient (article_id, ingredient_id, dose) VALUES (8, 1, 2), (8, 2, 2), (8, 3, 2), (8, 5, 2), (8, 8, 2);
INSERT INTO ArticleIngredient (article_id, ingredient_id, dose) VALUES (9, 1, 2), (9, 2, 2), (9, 3, 2), (9, 8, 2), (9, 9, 2), (9, 10, 2);
INSERT INTO ArticleIngredient (article_id, ingredient_id, dose) VALUES (10, 1, 2), (10, 2, 2), (10, 3, 2), (10, 5, 2), (10, 6, 2), (10, 7, 2);
INSERT INTO ArticleIngredient (article_id, ingredient_id, dose) VALUES (11, 1, 2), (11, 2, 2), (11, 3, 2), (11, 9, 2), (11,12,2);
INSERT INTO ArticleIngredient (article_id, ingredient_id, dose) VALUES (12, 1, 2), (12, 2, 2), (12, 3, 2), (12, 8, 2), (12, 12, 2);


-- TABLE STOCK
INSERT INTO Stock (point_de_vente_id, ingredient_id, quantite_dose) VALUES (1, 1, 300), (1, 2, 250), (1, 3, 100), (1, 4, 220), (1, 5, 120), (1, 6, 140);
INSERT INTO Stock (point_de_vente_id, ingredient_id, quantite_dose) VALUES (1, 7, 160), (1, 8, 110), (1, 9, 100), (1, 10, 300), (1, 11, 100), (1,12, 100);
INSERT INTO Stock (point_de_vente_id, ingredient_id, quantite_dose) VALUES (2, 1, 300), (2, 2, 250), (2, 3, 100), (2, 4, 220), (2, 5, 120), (2, 6, 140);
INSERT INTO Stock (point_de_vente_id, ingredient_id, quantite_dose) VALUES (2, 7, 160), (2, 8, 110), (2, 9, 100), (2, 10, 300), (2, 11, 100), (2,12, 100);
INSERT INTO Stock (point_de_vente_id, ingredient_id, quantite_dose) VALUES (3, 1, 300), (3, 2, 250), (3, 3, 100), (3, 4, 220), (3, 5, 120), (3, 6, 140);
INSERT INTO Stock (point_de_vente_id, ingredient_id, quantite_dose) VALUES (3, 7, 160), (3, 8, 110), (3, 9, 100), (3, 10, 300), (3, 11, 100), (3,12, 100);
INSERT INTO Stock (point_de_vente_id, ingredient_id, quantite_dose) VALUES (4, 1, 300), (4, 2, 250), (4, 3, 100), (4, 4, 220), (4, 5, 120), (4, 6, 140);
INSERT INTO Stock (point_de_vente_id, ingredient_id, quantite_dose) VALUES (4, 7, 160), (4, 8, 110), (4, 9, 100), (4, 10, 300), (4, 11, 100), (4,12, 100);
INSERT INTO Stock (point_de_vente_id, ingredient_id, quantite_dose) VALUES (5, 1, 300), (5, 2, 250), (5, 3, 100), (5, 4, 220), (5, 5, 120), (5, 6, 140);
INSERT INTO Stock (point_de_vente_id, ingredient_id, quantite_dose) VALUES (5, 7, 160), (5, 8, 110), (5, 9, 100), (5, 10, 300), (5, 11, 100), (5,12, 100);


-- VALUES OC CUSTOMERS

-- TABLE ACHETEUR
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (17, 'Mickael', 'Chaumont', 'H', 'C6L2ty45', '0644389807');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (18, 'Celine', 'Klein', 'F', '34RFTo78', '0632564598');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (19, 'Julien', 'Blois', 'H', 'TGT98tu3', '0643567890');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (20, 'Antoine', 'Gaspard', 'H', 'FR342Opm', '0688950345');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (21, 'Sophie', 'Scheid', 'F', 'RtZaE43t', '0689845602');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (22, 'Helene', 'Jung', 'F', 'R3EZt5ol', '0645342955');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (23, 'Emilie', 'Petit', 'F', 'TGl875DS', '0677656869');
INSERT INTO Acheteur (id, prenom, nom, genre, mot_de_passe, numero_telephone) VALUES (24, 'Yann', 'Dupont', 'H', 'TGF45kj6', '0699565758');

SELECT setval('public.acheteur_id_seq', 24, true);

-- TABLE CLIENT WEB
INSERT INTO ClientWeb (acheteur_id, email, anniversaire) VALUES (17, 'mchaumont@gmail.com', '1990-05-21');
INSERT INTO ClientWeb (acheteur_id, email, anniversaire) VALUES (18, 'celine.klein3@outlook.fr', NULL);
INSERT INTO ClientWeb (acheteur_id, email, anniversaire) VALUES (19, 'julien.blois@gmail.com', '1984-06-12');
INSERT INTO ClientWeb (acheteur_id, email, anniversaire) VALUES (20, 'a.gaspard@gmail.com', NULL);
INSERT INTO ClientWeb (acheteur_id, email, anniversaire) VALUES (21, 'sophie.Scheid@gmail.com', '1977-11-30');
INSERT INTO ClientWeb (acheteur_id, email, anniversaire) VALUES (22, 'helenejung22@gmail.com', '1985-03-09');
INSERT INTO ClientWeb (acheteur_id, email, anniversaire) VALUES (23, 'e.petit@orange.fr', '1993-01-05');
INSERT INTO ClientWeb (acheteur_id, email, anniversaire) VALUES (24, 'yann.dupont67@free.fr', '1970-09-19');
           

-- TABLE ADRESSE
INSERT INTO Adresse (id, numero, voie, nom_rue, ville, code_postal, pays, commentaire, point_de_vente_proche) VALUES (6, '2', 'rue','des Orfèvres', 'Strasbourg', '67000', 'France', '5e étage droite', 3);
INSERT INTO Adresse (id, numero, voie, nom_rue, ville, code_postal, pays, commentaire, point_de_vente_proche) VALUES (7, '13', 'rue','des Francs Bourgeois', 'Strasbourg', '67000', 'France', 'digicode 45A34A 1er étage appartement 4', 1);
INSERT INTO Adresse (id, numero, voie, nom_rue, ville, code_postal, pays, commentaire, point_de_vente_proche) VALUES (8, '17', 'rue', 'de la Course', 'Strasbourg', '67000', 'France','RDC sonner chez Simonin', 4);
INSERT INTO Adresse (id, numero, voie, nom_rue, ville, code_postal, pays, commentaire, point_de_vente_proche) VALUES (9, '56', 'rue', 'de Lausanne', 'Strasbourg', '67000', 'France', NULL, 5);
INSERT INTO Adresse (id, numero, voie, nom_rue, ville, code_postal, pays, commentaire, point_de_vente_proche) VALUES (10, '38' ,'rue', 'Saint Florent', 'Strasbourg', '67200', 'France', NULL, 4);
INSERT INTO Adresse (id, numero, voie, nom_rue, ville, code_postal, pays, commentaire, point_de_vente_proche) VALUES (11, '14', 'rue', 'de la Nuée Bleue', 'Strasbourg', '67000', 'France', '2e étage appartement 3', 2);
INSERT INTO Adresse (id, numero, voie, nom_rue, ville, code_postal, pays, commentaire, point_de_vente_proche) VALUES (12, '28', 'Place', 'Kléber', 'Strasbourg', '67000', 'France', NULL, 2);
INSERT INTO Adresse (id, numero, voie, nom_rue, ville, code_postal, pays, commentaire, point_de_vente_proche) VALUES (13, '9', 'rue', 'Sainte Barbe', 'Strasbourg', '67000', 'France', NULL, 1);

SELECT setval('public.adresse_id_seq', 13, true);


-- TABLE STATUT
INSERT INTO Statut (id, libelle) VALUES (1, 'en attente');
INSERT INTO Statut (id, libelle) VALUES (2, 'en préparation');
INSERT INTO Statut (id, libelle) VALUES (3, 'terminée');
INSERT INTO Statut (id, libelle) VALUES (4, 'livrée');

SELECT setval('public.statut_id_seq', 4, true);


-- TABLE MODE PAIEMENT
INSERT INTO ModePaiement (id, libelle) VALUES (1, 'CB en ligne');
INSERT INTO ModePaiement (id, libelle) VALUES (2, 'CB à la livraison');
INSERT INTO ModePaiement (id, libelle) VALUES (3, 'Espèces à la livraison');
INSERT INTO ModePaiement (id, libelle) VALUES (4, 'CB en boutique');
INSERT INTO ModePaiement (id, libelle) VALUES (5, 'Espèces en boutique');

SELECT setval('public.modepaiement_id_seq', 5, true);

           
-- TABLE COMMANDE CLIENT
INSERT INTO CommandeClient (numero, acheteur_id, date_commande, heure_commande, mode_paiement_id, commande_payee, token_banque, statut_id, commande_livree, point_de_vente_id, adresse_id) VALUES (1, 17,'2019-08-01', '11:50:00', 1, true, 'XYZ6yij54P', 3, true, 3, 6);
INSERT INTO CommandeClient (numero, acheteur_id, date_commande, heure_commande, mode_paiement_id, commande_payee, token_banque, statut_id, commande_livree, point_de_vente_id, adresse_id) VALUES (2, 18, '2019-08-01', '11:51:05', 2, false, NULL, 3, true, 1, 7);
INSERT INTO CommandeClient (numero, acheteur_id, date_commande, heure_commande, mode_paiement_id, commande_payee, token_banque, statut_id, commande_livree, point_de_vente_id, adresse_id) VALUES (3, 19, '2019-08-01', '12:00:29', 1, true, 'XBZ0ypj549', 3, true, 4, 8);
INSERT INTO CommandeClient (numero, acheteur_id, date_commande, heure_commande, mode_paiement_id, commande_payee, token_banque, statut_id, commande_livree, point_de_vente_id, adresse_id) VALUES (4, 20, '2019-08-01', '12:00:55', 4, false, NULL, 3, false, 5, 9);
INSERT INTO CommandeClient (numero, acheteur_id, date_commande, heure_commande, mode_paiement_id, commande_payee, token_banque, statut_id, commande_livree, point_de_vente_id, adresse_id) VALUES (5, 21, '2019-08-01', '12:01:00', 1, true, 'XP8YPij53T', 2, true, 4, 10);
INSERT INTO CommandeClient (numero, acheteur_id, date_commande, heure_commande, mode_paiement_id, commande_payee, token_banque, statut_id, commande_livree, point_de_vente_id, adresse_id) VALUES (6, 22, '2019-08-01', '12:01:12', 1, true, 'CYZ6f4j5Of', 2, true, 2, 11);
INSERT INTO CommandeClient (numero, acheteur_id, date_commande, heure_commande, mode_paiement_id, commande_payee, token_banque, statut_id, commande_livree, point_de_vente_id, adresse_id) VALUES (7, 23, '2019-08-01', '12:01:40', 1, true, 'XYZ6yij54P', 2, true, 2, 12);
INSERT INTO CommandeClient (numero, acheteur_id, date_commande, heure_commande, mode_paiement_id, commande_payee, token_banque, statut_id, commande_livree, point_de_vente_id, adresse_id) VALUES (8, 24, '2019-08-01', '12:02:00', 1, true, 'XYZ6yij54P', 2, true, 1, 13);
INSERT INTO CommandeClient (numero, acheteur_id, date_commande, heure_commande, mode_paiement_id, commande_payee, token_banque, statut_id, commande_livree, point_de_vente_id, adresse_id) VALUES (9, 2, '2019-08-01', '12:02:21', 4, true, NULL, 4, false, 1, 1);
INSERT INTO CommandeClient (numero, acheteur_id, date_commande, heure_commande, mode_paiement_id, commande_payee, token_banque, statut_id, commande_livree, point_de_vente_id, adresse_id) VALUES (10, 5, '2019-08-01', '12:02:38', 4, true,  NULL, 4, false, 2, 2);
INSERT INTO CommandeClient (numero, acheteur_id, date_commande, heure_commande, mode_paiement_id, commande_payee, token_banque, statut_id, commande_livree, point_de_vente_id, adresse_id) VALUES (11, 14, '2019-08-01', '12:02:59', 4, true,  NULL, 4, false, 5, 5);
INSERT INTO CommandeClient (numero, acheteur_id, date_commande, heure_commande, mode_paiement_id, commande_payee, token_banque, statut_id, commande_livree, point_de_vente_id, adresse_id) VALUES (12, 11, '2019-08-01', '12:03:25', 4, true,  NULL, 4, false, 4, 4);
INSERT INTO CommandeClient (numero, acheteur_id, date_commande, heure_commande, mode_paiement_id, commande_payee, token_banque, statut_id, commande_livree, point_de_vente_id, adresse_id) VALUES (13, 8, '2019-08-01', '12:03:39', 4, true,  NULL, 4, false, 3, 3);
INSERT INTO CommandeClient (numero, acheteur_id, date_commande, heure_commande, mode_paiement_id, commande_payee, token_banque, statut_id, commande_livree, point_de_vente_id, adresse_id) VALUES (14, 5, '2019-08-01', '12:04:06', 4, true,  NULL, 4, false, 2, 2);
INSERT INTO CommandeClient (numero, acheteur_id, date_commande, heure_commande, mode_paiement_id, commande_payee, token_banque, statut_id, commande_livree, point_de_vente_id, adresse_id) VALUES (15, 8, '2019-08-01', '12:04:20', 5, true,  NULL,4, false, 4, 4);

SELECT setval('public.commandeclient_numero_seq', 15, true);


-- TABLE LIGNE COMMANDE

INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (1, 12, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (2, 4, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (2, 11, 1);         
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (3, 5, 1);         
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (3, 1, 2);      
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (3, 6, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (3, 8, 1);           
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (4, 4, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (4, 2, 1);           
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (5, 2, 2);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (6, 4, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (6, 6, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (7, 7, 2);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (7, 8, 2);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (8, 6, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (8, 3, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (9, 11, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (10, 6, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (10, 8, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (10, 2, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (11, 9, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (11, 4, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (12, 12, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (13, 3, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (13, 5, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (14, 6, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (14, 10, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (15, 2, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (15, 4, 1);
INSERT INTO LigneCommande (numero_commande_id, article_id, quantite) VALUES (15, 9, 1);

COMMIT;

