
-- Llista de compres totals dels clients
SELECT clients.nom,
  COUNT(vendes.venda_id) AS compres_totals
FROM clients
  LEFT JOIN vendes ON clients.client_id = vendes.client_id
GROUP BY clients.client_id, clients.nom
ORDER BY compres_totals DESC;


-- Llista de vendes totals dels empleats durant un perìode determinat
SELECT empleats.empleat_id, empleats.nom,
COUNT(vendes.venda_id) AS vendes_totals
FROM empleats
INNER JOIN vendes ON empleats.empleat_id = vendes.empleat_id
WHERE vendes.data_venda
BETWEEN '2024-04-14 00:00:00' AND '2024-04-21 00:00:00'
GROUP BY empleats.empleat_id, empleats.nom
ORDER BY vendes_totals DESC;


-- Llista de ulleres suministrades per cada proveïdor
SELECT proveïdors.nom,
COUNT(vendes.venda_id) AS ulleres_fornides
FROM proveïdors
INNER JOIN marques ON proveïdors.proveïdor_id = marques.proveïdor_id
INNER JOIN ulleres ON ulleres.marca_id = marques.marca_id
INNER JOIN vendes ON vendes.ulleres_id = ulleres.ulleres_id
GROUP BY proveïdors.proveïdor_id, proveïdors.nom
ORDER BY ulleres_fornides DESC;

