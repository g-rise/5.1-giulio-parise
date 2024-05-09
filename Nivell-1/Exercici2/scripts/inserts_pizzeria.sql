USE pizzeria;

-- ----------------------------------------------------------------------- BOTIGUES
INSERT INTO botigues(adreça, codi_postal, localitat, província)
VALUES
('carrer Industria, 72', '08025', 'Barcelona', 'Barcelona'),
('ronda Zamenhof 13', '08820', 'Sabadell', 'Barcelona'),
('carrer Encarnació', '08333', 'Vilanova i la Gertrú', 'Barcelona');


-- ----------------------------------------------------------------------- EMPLEATS
INSERT INTO empleats(botiga_id, nom, cognoms, nif, telèfon, rol)
VALUES
(1, 'Marc', 'Grau LLorenç', '88776655T', '+34.666.111222', 'cuiner'),
(1, 'Francesco', 'Bagnaia', 'X7888323S', '+34.654.654765', 'repartidor'),  -- 2
(1, 'Marco', 'Simoncelli', 'X8989898T', '+34.677.787878', 'repartidor'),  -- 3
(2, 'Marco', 'Bezzecchi', 'X7333373B', '+34.672.727272', 'cuiner'),
(2, 'Valentino', 'Rossi', 'X4646466R', '+34.646.464646', 'repartidor'),  -- 5
(3, 'Franco', 'Morbidelli', 'X2233445F', '+34.621.212123', 'cuiner'),
(2, 'Pedro', 'Acosta', '37837845F', '+34.611.112246', 'repartidor');  -- 7


-- ----------------------------------------------------------------------- CATEGORIES
INSERT INTO categories(nom)
VALUES
('Pizze rosse'),
('Pizze bianche'),
('Pizze gourmet'),
('Hamburgueses'),
('Begudes');


-- ----------------------------------------------------------------------- PRODUCTES
INSERT INTO productes(categoria_id, nom, descripció, imatge, preu)
VALUES
(1, 'Marinara', 'Salsa de tomàquet, all, tomaca cherry, oli d\'oliva i alfàbrega', 'url1', 9.20), -- 1
(1, 'Margarita', 'Salsa de tomàquet, alfàbrega i mozzarella', 'url2', 10.20),  -- 2
(2, 'Carbonara', 'Mozzarella, xampinyons, ceba, bacó, alfàbrega i salsa carbonara', 'url3', 13.70), -- 3
(2, 'Carbonara Original amb Espàrrecs', 'Mozzarella, provola, guanciale, pecorino, espàrrecs, alfàbrega ou i pebre', 'url4', 14.70), -- 4
(3, 'Calzone Napolitano', 'Tomàquet, mozzarella, provola, ricotta, alfàbrega, salami napolità i parmesà', 'url5', 14.50),   -- 5
(3, 'Gorgonzola & Pera', 'Mozzarella, gorgonzola, pera i nous', 'url6', 14.70),   -- 6
(3, 'Genovese', 'Pesto, mozzarella, ricotta, tomàquet cherry, alfàbrega, olives i làmines de parmesà', 'url7', 14.25),  -- 7
(3, 'Greca', 'Tomàquet, mozzarella, olives, tomàquet cherry, alfàbrega, formatge de cabra i orenga', 'url8', 13.80),  -- 8
(4, 'Smoky', 'Fumat amb cor de cheddar, enciam, tomàquet, aros de ceba confitada amb bacó i salsa porxo hot. 160 gr de Vedella Sayaguesa', 'url9', 14.00),   -- 9
(4, 'Afrodita', 'Hamburguesa de pollastre 160gr, formatge cheddar maionesa de llima cabdells de Tudela ,tomàquet alvocat i bec de gall', 'url10', 14.00),   -- 10
(4, 'Clàssica', 'Formatge cheddar, enciam, tomàquet maionesa. 160 grams de vedella Sayaguesa', 'url11', 11.50),  -- 11
(5, 'XAREL·LO VERMELL', 'Vi ecològic i orgànic DO Penedès Cannals i Munné', 'url12', 17.25),   -- 12
(5, 'CANALS I MUNNÉ', 'DO Penedès Princeps Noir 6 mesos bóta (Tempranillo, Cabernet Sauvignon, Syrah)', 'url13', 21.95);   -- 13


-- ----------------------------------------------------------------------- CLIENTS
INSERT INTO clients(nom, cognoms, adreça, codi_postal, localitat, província, telèfon)
VALUES
('Marina', 'Guzman Delois', 'carrer Argentona, 37, 5è 2a', '08005', 'Barcelona', 'Barcelona', '+34.636.789789'),
('Carles', 'Prada Bolanya', 'carrer Sotarral, 11, 1r 4a', '08022', 'Barcelona', 'Barcelona', '+34.611.646453'),
('Marcos', 'Fuente Ulldeconars', 'carrer Gran Via, 311, 3r 4a', '08821', 'Sabadell', 'Barcelona', '+34.606.774545'),
('Jordi', 'Giani Arrevoltates', 'carrer Piera, 24, baix', '08800', 'Sabadell', 'Barcelona', '+34.653.171615'),
('Esther', 'Gonzalez Pedraforca', 'carrer Ventall mitjà, 45, Àtic', '08333', 'Vilanova i la Gertrú', 'Barcelona', '+34.666.838284');


-- ----------------------------------------------------------------------- COMANDES
INSERT INTO comandes(client_id, data_comanda, tipologia_comanda, preu_total)
VALUES
(1, '2024-04-27 13:00:18', 'Entrega a casa', 12),
(2, '2024-04-27 13:13:25', 'Entrega a casa', 12),
(3, '2024-04-27 13:15:22', 'Entrega a casa', 12),
(4, '2024-04-27 13:25:57', 'Entrega a casa', 12),
(5, '2024-04-27 13:32:34', 'Entrega a casa', 12);


-- ----------------------------------------------------------------------- COMANDA_DETALLS
INSERT INTO comanda_detalls(comanda_id, producte_id, quantitat, preu)
VALUES
(1, 2, 3, 30.60),  -- 3 Margarita
(1, 13, 1, 21.95),  -- 1 Canals
(2, 12, 3, 51.75),  -- 3 Xarello
(3, 7, 2, 28.50),  -- 2 Genovese
(3, 8, 1, 13.80),  -- 1 Greca
(3, 13, 1, 21.95),  -- 1 Canals
(4, 5, 4, 72.50),   -- 4 Calzone  
(4, 11, 2, 23.00),  -- 2 Clàssica
(4, 13, 2, 43.90),  -- 2 Canals
(5, 3, 1, 13.70), -- 1 Carbonara
(5, 12, 1, 17.25);  -- 1 Xarello


-- ----------------------------------------------------------------------- ENTREGUES
INSERT INTO entregues(comanda_id, empleat_id, hora_entrega)
VALUES
(1, 2, '2024-04-27 13:45:22'),
(2, 2, '2024-04-27 14:00:25'),
(3, 5, '2024-04-27 13:45:22'),
(4, 5, '2024-04-27 13:55:57'),
(5, 7, '2024-04-27 14:05:34');

