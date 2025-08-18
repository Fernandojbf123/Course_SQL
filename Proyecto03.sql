-- Pregunta 1
-- ¿Quien es el actor o actriz que ha participado en la mayor cantidad de series?
SELECT actor_id, COUNT(actor_id) FROM actuaciones GROUP BY actor_id ORDER BY count(actor_id) DESC LIMIT 1;
SELECT * FROM actores WHERE actor_id = "18"
-- Pregunta 2
-- ¿Cual es la serie con mejor rating promedio segun imdb?


-- Pregunta 3
-- ¿Cual es nombre el episodio con la duración más larga y cuantos capítulos tiene?
