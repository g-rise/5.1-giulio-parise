CREATE DATABASE IF NOT EXISTS optica;

USE optica;

CREATE TABLE IF NOT EXISTS proveïdors (
  proveïdor_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(45) NOT NULL,
  adreça VARCHAR(100) NOT NULL,
  ciutat VARCHAR(30) NOT NULL,
  codi_postal VARCHAR(10) NOT NULL,
  pais VARCHAR(30) NOT NULL,
  telefòn VARCHAR(30) NOT NULL,
  fax VARCHAR(30) NULL,
  nif VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS marques (
  marca_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(45) NOT NULL,
  proveïdor_id INT NOT NULL,
  FOREIGN KEY (proveïdor_id) REFERENCES proveïdors (proveïdor_id)
);

CREATE TABLE IF NOT EXISTS ulleres (
  ulleres_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  marca_id INT NOT NULL,
  muntura VARCHAR(20) NOT NULL,
  color_muntura VARCHAR(20) NOT NULL,
  graduacio_vidre_dx INT NOT NULL,
  graduacio_vidre_sx INT NOT NULL,
  color_vidres VARCHAR(20) NOT NULL,
  preu DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (marca_id) REFERENCES marques (marca_id)
);

CREATE TABLE IF NOT EXISTS empleats (
  empleat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS clients (
  client_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(60) NOT NULL,
  adreça VARCHAR(100) NOT NULL,
  ciutat VARCHAR(30) NOT NULL,
  codi_postal VARCHAR(10) NOT NULL,
  pais VARCHAR(30) NOT NULL,
  telefòn VARCHAR(30) NOT NULL,
  email VARCHAR(30) NOT NULL,
  data_registre DATE NOT NULL,
  recomanacio INT NULL,
  FOREIGN KEY (recomanacio) REFERENCES clients (client_id)
);

CREATE TABLE IF NOT EXISTS vendes (
  venda_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ulleres_id INT NOT NULL,
  client_id INT NOT NULL,
  empleat_id INT NOT NULL,
  data_venda DATETIME NOT NULL,
  FOREIGN KEY (ulleres_id) REFERENCES ulleres (ulleres_id),
  FOREIGN KEY (client_id) REFERENCES clients (client_id),
  FOREIGN KEY (empleat_id) REFERENCES empleats (empleat_id)
);




  

  

  
  