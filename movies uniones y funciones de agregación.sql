select series.title, genres.name from series
left join genres on series.genre_id = genre_id;

select episodes.title, actors.first_name, actors.last_name from actor_episode 
inner join actors on actor_episode.actor_id = actors.id
inner join episodes on actor_episode.episode_id = episodes.id;


select distinct actors.first_name, actors.last_name from actors
inner join actor_movie on actors.id=actor_movie.actor_id
inner join movies on movies.id=actor_movie.movie_id  
where title like '%Guerra de las galaxias%';


select movies.title,  coalesce (genres.name,'No tiene género') from movies
left join genres on movies.genre_id =genres.id;


select title, datediff(end_date,release_date) as Duracion from series;


select first_name from actors
where length(first_name)>6
order by first_name;

select count(*) as 'Total de Episodios' from episodes;

select series.title, count(seasons.title) from series
inner join seasons on seasons.serie_id=series.id
group by series.title;

select genres.name, count(movies.title) from genres
inner join movies on genres.id = movies.genre_id
group by genres.name 
having count(movies.title) >= 3;