CREATE DATABASE Mag;

USE Mag;

CREATE TABLE Client(
   N_Client COUNTER,
   PrenomClient VARCHAR(50),
   NomClient VARCHAR(50),
   PRIMARY KEY(N_Client)
);

CREATE TABLE Commande(
   N_Commande COUNTER,
   DateCommande VARCHAR(50),
   MontantCommande VARCHAR(50),
   N_Client INT NOT NULL,
   PRIMARY KEY(N_Commande),
   FOREIGN KEY(N_Client) REFERENCES Client(N_Client)
);

CREATE TABLE Article(
   N_Article COUNTER,
   DesignationArticle VARCHAR(50),
   PUArticle VARCHAR(50),
   PRIMARY KEY(N_Article)
);

CREATE TABLE SeComposeDe(
   N_Commande INT,
   N_Article INT,
   Qte VARCHAR(50),
   TautTva VARCHAR(50),
   PRIMARY KEY(N_Commande, N_Article),
   FOREIGN KEY(N_Commande) REFERENCES Commande(N_Commande),
   FOREIGN KEY(N_Article) REFERENCES Article(N_Article)
);
