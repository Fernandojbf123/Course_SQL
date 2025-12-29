-- Pregunta 1
-- ¿Quien es el actor o actriz que ha participado en la mayor cantidad de series?
SELECT actor_id, COUNT(actor_id) FROM actuaciones GROUP BY actor_id ORDER BY count(actor_id) DESC LIMIT 1;
SELECT * FROM actores WHERE actor_id = 18;
-- Gina Carano fue la actriz que partició en la mayor cantidad de series. Tuvo 2 participaciones.

-- Pregunta 2
-- ¿Cual es la serie con mejor rating promedio segun imdb?
SELECT serie_id, AVG(rating_imdb) FROM episodios GROUP BY serie_id ORDER BY AVG(rating_imdb) DESC LIMIT 2;
SELECT * FROM series WHERE serie_id = 8;
-- La serie con mejor rating promedio de acuerdo con imdb es Arcane.
-- PREGUNTA ESPECIAL: ¿QUIENES ACTUARON EN ESA SERIE?
SELECT * FROM actuaciones WHERE serie_id = 8;
SELECT * FROM actores WHERE actor_id = 18 or actor_id = 8 or actor_id = 22;
-- En Arcane actuaron Hailee Steinfeld, Gina Carano y Ella Purnell

-- Pregunta 3
-- ¿Cual es nombre el episodio con la duración más larga y cuantos capítulos tiene?
SELECT * FROM episodios ORDER BY duracion DESC Limit 1;
SELECT * FROM series WHERE serie_id = 10;
SELECT serie_id, COUNT(episodio_id) FROM episodios GROUP BY serie_id

-- El episodio con duración más larga es de la serie Sherlock. El episodio se titulaba "The Sign of Three" y tuvo una duración de 93 minutos.
-- Esta serie tuvo un total de 11 episodios

 