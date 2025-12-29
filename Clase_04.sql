SELECT * FROM series
INNER JOIN actuaciones
on series.serie_id = actuaciones.serie_id;

SELECT s.titulo as "titulo de la serie", e.titulo as "titulo del episodio"
FROM series as s
LEFT JOIN episodios as e
ON s.serie_id = e.serie_id
ORDER BY s.titulo;

-- No se recomienda mucho usar RIGHT JOIN
SELECT s.titulo as "titulo de la serie", e.titulo as "titulo del episodio"
FROM series as s
RIGHT JOIN episodios as e
ON e.serie_id = s.serie_id
ORDER BY s.titulo;



SELECT * FROM series WHERE genero = "Ciencia ficción"
UNION ALL
SELECT * FROM series WHERE genero = "Drama"
UNION ALL
SELECT * FROM series WHERE genero = "Ciencia ficción";


SELECT * FROM series WHERE genero = "Ciencia ficción"
UNION
SELECT * FROM series WHERE genero = "Drama"
UNION
SELECT * FROM series WHERE genero = "Ciencia ficción";

-- Este código es equivalente
SELECT * FROM series WHERE genero = "Ciencia ficción" OR genero = "Drama";
