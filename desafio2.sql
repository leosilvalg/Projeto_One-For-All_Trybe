select count(*) AS "cancoes",
 (select count(*) from SpotifyClone.artistas) AS "artistas",
 (select count(*) from SpotifyClone.albums) AS "albuns"
from SpotifyClone.cancoes;