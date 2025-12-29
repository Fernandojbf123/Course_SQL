-- 1. ¿Qué géneros son más prevalentes en la base de datos NetflixDB? 
-- Genera una lista de los distintos géneros y la cantidad de series por cada uno.
-- Esta consulta SQL nos permite ver cuántas series hay en cada género dentro de la base de datos NetflixDB. 
-- Agrupando las series por su género y contándolas, podemos identificar cuáles géneros son más prevalentes.
SELECT genero, count(genero) as cuenta FROM series group by genero order by cuenta desc;


-- 2. ¿Cuáles son las tres series con mayor rating IMDB y cuántos episodios tienen? 
-- Considera usar un JOIN para combinar la información de las tablas de series y episodios.
-- Con esta consulta, identificamos las tres series con el mayor rating IMDB 
-- en la base de datos y contamos cuántos episodios tiene cada una de ellas, combinando información de las tablas Series y Episodios.
SELECT s.titulo as title_of_series, avg(e.rating_imdb) as mean_rating, count(s.serie_id) as number_of_episodes
from episodios as e 
join series as s 
on s.serie_id = e.serie_id
group by e.serie_id 
order by mean_rating desc limit 3;
-- Las 3 mejores series son Arcane, Game of Thrones, y Peaky Blinders con ratings de 9.22, 9.16 y 9.04 respectivamente.

-- 3. ¿Cuál es la duración total de todos los episodios para la serie "Stranger Things"? 
-- Este análisis te permitirá entender el compromiso temporal necesario para ver una serie completa.
select sum(e.duracion) as sum_duration from series as s 
join episodios as e
on s.serie_id = e.serie_id
where s.titulo="Stranger Things";

-- La suma de la duración de los episodios de "Stranger Things" es de 1227 minutos
