select empleats.nom, empleats.cognoms from empleats
WHERE rol = 'Repartidor';


-- Llista quants productes de tipus “Begudes”. s'han venut en una determinada localitat.

-- SELECT cd.quantitat, b.localitat
SELECT SUM(cd.quantitat) AS "Begudes venudes", b.localitat 
FROM comanda_detalls cd
JOIN productes p USING (producte_id)
JOIN categories ca USING (categoria_id)
JOIN comandes c USING (comanda_id)
JOIN entregues en USING (comanda_id)
JOIN empleats em USING (empleat_id)
JOIN botigues b USING (botiga_id)
WHERE ca.nom = "Begudes"
GROUP BY b.localitat
ORDER BY SUM(cd.quantitat) DESC;




-- Llista quantes comandes ha efectuat un determinat empleat/da.
SELECT COUNT(en.entrega_id), em.nom, em.cognoms
FROM entregues en
JOIN empleats em USING (empleat_id)
GROUP BY em.nom, em.cognoms
ORDER BY COUNT(en.entrega_id) DESC, em.cognoms, em.nom;