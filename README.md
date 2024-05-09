# Estructura de dades MySQL

Modelació de diversos diagrames entitat-relació amb els respectius scripts **.sql** per
- **Crear** les bases de dades.
- **Insertar** elements a dins de les bases de dades.
- Fer les **consultes** pertinents per extreure informació de les bases de dades.

##### IT ACADEMY | NODE JS | SPRINT 5
-------------------------

## NIVELL 1 - ÒPTICA
Informatitzció de la gestió dels clients/es i vendes d'ulleres d'una òptica anomenada “Cul d'Ampolla”.

#### :arrow_right: **create_òptica.sql**

La base de dades serà composta per les següents entitats:
| clients | ulleres | vendes | proveïdors | marques | empleats |
| ------ | ------ | ------ | ------ | ------ | ------ |

amb els atributs pertinents per a la gestió del negoci.


#### :arrow_right: **inserts_òptica.sql**

Creació d'unes quantes entitats i transaccions per poder comprovar el bon funcionament de la base de dades.


#### :arrow_right: **query_òptica.sql**

- Llista el total de compres d’un client/a.
- Llista les diferents ulleres que ha venut un empleat durant un any.
- Llista els diferents proveïdors que han subministrat ulleres venudes amb èxit per l'òptica.

-----------------------------

## NIVELL 1 - PIZZERIA

Disseny d'una base de dades per una web que permeti fer comandes de menjar a domicili en Internet.

#### :arrow_right: **create_pizzeria.sql**

La base de dades serà composta per les següents entitats:
| clients | productes | categories | comandes | comanda_detalls | entregues | empleats | botigues |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |

amb els atributs pertinents per a la gestió del negoci.

#### :arrow_right: **inserts_pizzeria.sql**

Creació d'unes quantes entitats i transaccions per poder comprovar el bon funcionament de la base de dades.


#### :arrow_right: **query_òptica.sql**

- Llista quants productes de tipus “Begudes”. s'han venut en una determinada localitat.
- Llista quantes comandes ha efectuat un determinat empleat/da.

-----------------------------

## NIVELL 2 - YOUTUBE

Creació de un model senzill de com seria la base de dades per a una versió reduïda de YouTube.

Principals taules creades per aquesta base de dades:

| users | subscriptions | channels | videos | playlists | tags | comments | 
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |

#### :arrow_right: **create-youtube.sql**

Archiu de creació de la base de dades.

#### :arrow_right: **inserts-youtube.sql**

Archiu per omplir les taules de la base de dades.

---------------------------------------

## NIVELL 3 - SPOTIFY

Creació de un model senzill de com seria la base de dades necessària per a Spotify.

Principals taules creades per aquesta base de dades:

| users | subscriptions | payments | artists | albums | songs | playlists | favorite_albums | favorite_songs | follows |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |

#### :arrow_right: **create-spotify.sql**

Archiu de creació de la base de dades.

#### :arrow_right: **inserts-spotify.sql**

Archiu per omplir les taules de la base de dades.

---------------------------------------

