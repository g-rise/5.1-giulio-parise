CREATE DATABASE IF NOT EXISTS pizzeria; 

USE pizzeria;


-- -------------------------------------------------------- BOTIGUES
CREATE TABLE IF NOT EXISTS botigues (
  botiga_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  adreça VARCHAR(100) NOT NULL,
  codi_postal VARCHAR(10) NOT NULL,
  localitat VARCHAR(30) NOT NULL,
  província VARCHAR(30) NOT NULL
);


-- -------------------------------------------------------- EMPLEATS
CREATE TABLE IF NOT EXISTS empleats (
  empleat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  botiga_id INT NOT NULL,
  nom VARCHAR(30) NOT NULL,
  cognoms VARCHAR(60) NOT NULL,
  nif VARCHAR(20) NOT NULL,
  telèfon VARCHAR(20) NOT NULL,
  rol ENUM('cuiner', 'repartidor') NOT NULL,
  FOREIGN KEY (botiga_id) REFERENCES botigues (botiga_id)
);


-- -------------------------------------------------------- CATEGORIES
CREATE TABLE IF NOT EXISTS categories (
  categoria_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(45) NOT NULL
);


-- -------------------------------------------------------- PRODUCTES
CREATE TABLE IF NOT EXISTS productes (
  producte_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  categoria_id INT NOT NULL,
  nom VARCHAR(60) NOT NULL,
  descripció TINYTEXT NOT NULL,
  imatge VARCHAR(1000) NOT NULL,
  preu DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (categoria_id) REFERENCES categories (categoria_id)
);


-- -------------------------------------------------------- CLIENTS
CREATE TABLE IF NOT EXISTS clients (
  client_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(30) NOT NULL,
  cognoms VARCHAR(45) NOT NULL,
  adreça VARCHAR(100) NOT NULL,
  codi_postal VARCHAR(10) NOT NULL,
  localitat VARCHAR(30) NOT NULL,
  província VARCHAR(30) NOT NULL,
  telèfon VARCHAR(15) NOT NULL
);


-- -------------------------------------------------------- COMANDEDS
CREATE TABLE IF NOT EXISTS comandes (
  comanda_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  client_id INT NOT NULL,
  data_comanda DATETIME NOT NULL,
  tipologia_comanda ENUM('Recollida en botiga', 'Entrega a casa') NOT NULL,
  preu_total DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (client_id) REFERENCES clients (client_id)
);


-- -------------------------------------------------------- COMANDA_DETALLS
CREATE TABLE IF NOT EXISTS comanda_detalls (
  comanda_detall_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  comanda_id INT NOT NULL,
  producte_id INT NOT NULL,
  quantitat INT NOT NULL,
  preu DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (producte_id) REFERENCES productes (producte_id),
  FOREIGN KEY (comanda_id) REFERENCES comandes (comanda_id)
);


-- -------------------------------------------------------- ENTREGUES
CREATE TABLE IF NOT EXISTS entregues (
  entrega_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  comanda_id INT NOT NULL,
  empleat_id INT NOT NULL,
  hora_entrega DATETIME NOT NULL,
  FOREIGN KEY (comanda_id) REFERENCES comandes (comanda_id),
  FOREIGN KEY (empleat_id) REFERENCES empleats (empleat_id)
);



