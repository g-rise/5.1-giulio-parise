USE optica;

INSERT INTO proveïdors(nom, adreça, ciutat, codi_postal, pais, telefòn, fax, nif)
VALUES
('Occhio Nuovo', 'via Monte Cengio, 37', 'Padova', '35140', 'Italia', '+39.338.334455', null, 'X8736253765GT'),
('Miranta', 'carrer del pop, 93, Àtic 3', 'Barcelona', '08003', 'Espanya', '+34.666.678678', '+34.666.678678','G87654332'),
('Monoculo', 'carrer de la Gran Vista, 1, Local 3', 'Barcelona', '08043', 'Espanya', '+34.611.112233', null,'X8769087J');

INSERT INTO marques(nom, proveïdor_id)
VALUES
('Arnette', 1),
('Boss Orange', 1),
('Dsquared2', 3),
('Emporio Armani', 2),
('Moschino', 1),
('Police', 2);

INSERT INTO clients(nom, adreça, ciutat, codi_postal, pais, telefòn, email, data_registre, recomanacio)
VALUES
('Silvio Berlusconi', 'via General Banfi, 38', 'Milano', '00305', 'Italia', '+39.328.328328', 'silvio.cane@gmail.com', '2024-04-02', null ),
('Jordi Pujol', 'carrer gran Via, 188, 5-4', 'Barcelona', '08005', 'Espanya', '+34.666.727272', 'jordipjl@gmail.com', '2024-04-04', 1 ),
('Pedro Sanchez', 'carrer Madrid, 88, Principal 2', 'Madrid', '01000', 'Espanya', '+34.616.616616', 'pedrito@gmail.com', '2024-04-06', 2 ),
('Ada Colau', 'carrer Corsega, 234, Atic 3', 'Barcelona', '08025', 'Espanya', '+34.611.223344', 'adapodem@gmail.com', '2024-04-09', 1 ),
('Pere Aragones', 'carrer de la Rendició, s/n', 'Mollet del Vallès', '08345', 'Espanya', '+34.656.646646', 'perete@gmail.com', '2024-04-10', 4 ),
('Donald Trump', 'Mona street, 188, 5-4', 'Washington', '11-13-4', 'USA', '+34666727272', 'pato.donald@gmail.com', '2024-04-10', null );

INSERT INTO empleats(nom)
VALUES
('Antoni Gaudí'),
('Josep Puig i Cadafalch'),
('Lluís Domènech i Montaner');

INSERT INTO ulleres(marca_id, muntura, color_muntura, graduacio_vidre_dx, graduacio_vidre_sx, color_vidres, preu)
VALUES
(1, 'flotant', 'gris', +1, -1.5, 'negre', 185.00),
(6, 'pasta', 'blanc', +2, -1, 'blau', 230.00),
(5, 'metàl·lica', 'oro', 0, -0.5, 'transparent', 135.00),
(2, 'pasta', 'negre', +1, -2, 'negre', 98.50),
(3, 'pasta', 'vermell', +2, +1, 'gris', 153.50),
(2, 'metàl·lica', 'gris', 0, 0, 'marró', 119.99),
(3, 'flotant', 'negre', +2, +1, 'negre', 99.00),
(4, 'metàl·lica', 'blanc', 0, +1, 'polaritzat', 245.99),
(3, 'metàl·lica', 'gris', 0.5, 0.5, 'verd', 109.99),
(1, 'pasta', 'verd', 0, 0, 'negre', 299.50),
(1, 'pasta', 'groc', +2, +1, 'blau', 265.50),
(4, 'pasta', 'blanc', 0, 0, 'transparent', 315.50),
(5, 'flotant', 'negre', +1, +3, 'vermell', 189.00),
(2, 'pasta', 'vermell', 0, +1, 'verd', 199.00),
(5, 'flotant', 'negre', +1, 0, 'verd', 219.00),
(3, 'pasta', 'blau', +1, -2, 'negre', 149.99),
(4, 'pasta', 'rosa', +2, +1, 'negre', 169.99),
(6, 'metàl·lica', 'gris', 0, 0, 'transparent', 139.99);

INSERT INTO vendes(ulleres_id, client_id, empleat_id, data_venda)
VALUES
(1, 2, 3, '2024-04-11 13:12:35'),
(2, 5, 1, '2024-04-12 09:27:12'),
(3, 1, 1, '2024-04-12 17:33:42'),
(4, 1, 3, '2024-04-13 16:02:14'),
(5, 6, 2, '2024-04-14 11:18:55'),
(6, 5, 2, '2024-04-14 13:33:24'),
(7, 4, 3, '2024-04-14 19:05:37'),
(8, 2, 2, '2024-04-16 09:45:48'),
(9, 3, 1, '2024-04-16 17:12:57'),
(10, 1, 3, '2024-04-21 12:45:22'),
(11, 5, 3, '2024-04-21 18:12:16'),
(12, 6, 2, '2024-04-22 10:55:05'),
(13, 3, 1, '2024-04-22 12:22:08'),
(14, 4, 1, '2024-04-24 17:44:32'),
(15, 6, 3, '2024-04-25 18:07:21'),
(16, 2, 2, '2024-04-27 11:05:18'),
(17, 1, 3, '2024-04-27 16:47:54'),
(18, 5, 3, '2024-04-28 17:57:37');






