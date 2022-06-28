select 
	a.artista as 'artista',
    b.album as 'album'
from SpotifyClone.artistas as a
inner join SpotifyClone.albums as b
on a.artista_id = b.artista_id
where a.artista = "Walter Phoenix";