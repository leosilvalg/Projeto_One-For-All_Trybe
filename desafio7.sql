select 
a.artista as 'artista',
b.album as 'album',
count(c.artista_id) as 'seguidores'
from SpotifyClone.artistas as a
inner join SpotifyClone.albums as b
on a.artista_id = b.artista_id
inner join SpotifyClone.seguindo_artistas as c
on c.artista_id = b.artista_id
group by a.artista, b.album
order by seguidores desc, artista asc, album asc;