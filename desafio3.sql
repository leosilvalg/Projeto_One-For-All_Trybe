select a.usuario AS "usuario",
count(b.cancao_id) AS "qtde_musicas_ouvidas",
round(sum(c.duracao) / 60, 2) AS "total_minutos"
from SpotifyClone.usuarios AS a
inner join SpotifyClone.historico_reproducoes AS b
on a.usuario_id = b.usuario_id
inner join SpotifyClone.cancoes as c
on b.cancao_id = c.cancao_id
group by a.usuario