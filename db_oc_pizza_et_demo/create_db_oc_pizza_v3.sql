
CREATE SEQUENCE public.fonction_id_seq;

CREATE TABLE public.Fonction (
                id INTEGER NOT NULL DEFAULT nextval('public.fonction_id_seq'),
                libelle VARCHAR(100) NOT NULL,
                CONSTRAINT fonction_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.fonction_id_seq OWNED BY public.Fonction.id;

CREATE SEQUENCE public.modepaiement_id_seq;

CREATE TABLE public.ModePaiement (
                id INTEGER NOT NULL DEFAULT nextval('public.modepaiement_id_seq'),
                libelle VARCHAR(100) NOT NULL,
                CONSTRAINT modepaiement_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.modepaiement_id_seq OWNED BY public.ModePaiement.id;

CREATE SEQUENCE public.statut_id_seq;

CREATE TABLE public.Statut (
                id INTEGER NOT NULL DEFAULT nextval('public.statut_id_seq'),
                libelle VARCHAR(100) NOT NULL,
                CONSTRAINT statut_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.statut_id_seq OWNED BY public.Statut.id;

CREATE SEQUENCE public.ingredient_id_seq;

CREATE TABLE public.Ingredient (
                id SMALLINT NOT NULL DEFAULT nextval('public.ingredient_id_seq'),
                nom_ingredient VARCHAR(100) NOT NULL,
                prix_ttc NUMERIC(3,2) NOT NULL,
                CONSTRAINT ingredient_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.ingredient_id_seq OWNED BY public.Ingredient.id;

CREATE SEQUENCE public.article_id_seq;

CREATE TABLE public.Article (
                id INTEGER NOT NULL DEFAULT nextval('public.article_id_seq'),
                libelle VARCHAR(100) NOT NULL,
                taille SMALLINT NOT NULL,
                CONSTRAINT article_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.article_id_seq OWNED BY public.Article.id;

CREATE TABLE public.ArticleIngredient (
                article_id INTEGER NOT NULL,
                ingredient_id SMALLINT NOT NULL,
                dose SMALLINT NOT NULL,
                CONSTRAINT articleingredient_pk PRIMARY KEY (article_id, ingredient_id)
);


CREATE SEQUENCE public.adresse_id_seq;

CREATE TABLE public.Adresse (
                id INTEGER NOT NULL DEFAULT nextval('public.adresse_id_seq'),
                numero CHAR(10) NOT NULL,
                voie VARCHAR(50) NOT NULL,
                nom_rue VARCHAR(150) NOT NULL,
                ville VARCHAR(50) NOT NULL,
                code_postal CHAR(5) NOT NULL,
                pays VARCHAR(50) NOT NULL,
                commentaire VARCHAR(300),
                point_de_vente_proche INTEGER NOT NULL,
                CONSTRAINT adresse_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.adresse_id_seq OWNED BY public.Adresse.id;

CREATE SEQUENCE public.pointdevente_id_seq;

CREATE TABLE public.PointDeVente (
                id INTEGER NOT NULL DEFAULT nextval('public.pointdevente_id_seq'),
                nom_pizzeria VARCHAR(100) NOT NULL,
                adresse_id INTEGER NOT NULL,
                CONSTRAINT pointdevente_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.pointdevente_id_seq OWNED BY public.PointDeVente.id;

CREATE TABLE public.Stock (
                point_de_vente_id INTEGER NOT NULL,
                ingredient_id SMALLINT NOT NULL,
                quantite_dose SMALLINT,
                CONSTRAINT stock_pk PRIMARY KEY (point_de_vente_id, ingredient_id)
);


CREATE SEQUENCE public.acheteur_id_seq;

CREATE TABLE public.Acheteur (
                id INTEGER NOT NULL DEFAULT nextval('public.acheteur_id_seq'),
                prenom VARCHAR(50) NOT NULL,
                nom VARCHAR(50) NOT NULL,
                genre CHAR(1) NOT NULL,
                mot_de_passe CHAR(16) NOT NULL,
                numero_telephone CHAR(10) NOT NULL,
                CONSTRAINT acheteur_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.acheteur_id_seq OWNED BY public.Acheteur.id;

CREATE TABLE public.Employe (
                acheteur_id INTEGER NOT NULL,
                nom VARCHAR(100) NOT NULL,
                fonction_id INTEGER NOT NULL,
                point_de_vente_id INTEGER NOT NULL,
                CONSTRAINT employe_pk PRIMARY KEY (acheteur_id)
);


CREATE TABLE public.ClientWeb (
                acheteur_id INTEGER NOT NULL,
                email VARCHAR(50) NOT NULL,
                anniversaire DATE,
                CONSTRAINT clientweb_pk PRIMARY KEY (acheteur_id)
);


CREATE SEQUENCE public.commandeclient_numero_seq;

CREATE TABLE public.CommandeClient (
                numero INTEGER NOT NULL DEFAULT nextval('public.commandeclient_numero_seq'),
                acheteur_id INTEGER NOT NULL,
                date_commande DATE NOT NULL,
                heure_commande TIME NOT NULL,
                mode_paiement_id INTEGER NOT NULL,
                commande_payee BOOLEAN NOT NULL,
                token_banque VARCHAR,
                statut_id INTEGER NOT NULL,
                commande_livree BOOLEAN NOT NULL,
                point_de_vente_id INTEGER NOT NULL,
                adresse_id INTEGER NOT NULL,
                CONSTRAINT commandeclient_pk PRIMARY KEY (numero)
);


ALTER SEQUENCE public.commandeclient_numero_seq OWNED BY public.CommandeClient.numero;

CREATE TABLE public.LigneCommande (
                numero_commande_id INTEGER NOT NULL,
                article_id INTEGER NOT NULL,
                quantite INTEGER NOT NULL,
                CONSTRAINT lignecommande_pk PRIMARY KEY (numero_commande_id, article_id)
);


ALTER TABLE public.Employe ADD CONSTRAINT fonction_employe_fk
FOREIGN KEY (fonction_id)
REFERENCES public.Fonction (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.CommandeClient ADD CONSTRAINT mode_paiement_id
FOREIGN KEY (mode_paiement_id)
REFERENCES public.ModePaiement (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.CommandeClient ADD CONSTRAINT statut_id
FOREIGN KEY (statut_id)
REFERENCES public.Statut (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ArticleIngredient ADD CONSTRAINT ingredient_articleingredient_fk
FOREIGN KEY (ingredient_id)
REFERENCES public.Ingredient (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Stock ADD CONSTRAINT ingredient_stock_fk
FOREIGN KEY (ingredient_id)
REFERENCES public.Ingredient (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ArticleIngredient ADD CONSTRAINT article_articleingredient_fk
FOREIGN KEY (article_id)
REFERENCES public.Article (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.LigneCommande ADD CONSTRAINT article_lignecommande_fk
FOREIGN KEY (article_id)
REFERENCES public.Article (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.CommandeClient ADD CONSTRAINT adresse2_id
FOREIGN KEY (adresse_id)
REFERENCES public.Adresse (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.PointDeVente ADD CONSTRAINT adresse_pointdevente_fk
FOREIGN KEY (adresse_id)
REFERENCES public.Adresse (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.CommandeClient ADD CONSTRAINT point_de_vente2_id
FOREIGN KEY (point_de_vente_id)
REFERENCES public.PointDeVente (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Stock ADD CONSTRAINT point_de_vente3_id
FOREIGN KEY (point_de_vente_id)
REFERENCES public.PointDeVente (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Employe ADD CONSTRAINT pointdevente_employe_fk
FOREIGN KEY (point_de_vente_id)
REFERENCES public.PointDeVente (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.CommandeClient ADD CONSTRAINT acheteur3_id
FOREIGN KEY (acheteur_id)
REFERENCES public.Acheteur (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ClientWeb ADD CONSTRAINT acheteur_clientweb_fk
FOREIGN KEY (acheteur_id)
REFERENCES public.Acheteur (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Employe ADD CONSTRAINT acheteur_employe_fk
FOREIGN KEY (acheteur_id)
REFERENCES public.Acheteur (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.LigneCommande ADD CONSTRAINT numero_commande_id
FOREIGN KEY (numero_commande_id)
REFERENCES public.CommandeClient (numero)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
