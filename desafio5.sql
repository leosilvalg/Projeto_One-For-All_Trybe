select a.cancao as 'cancao',
count(b.usuario_id) as 'reproducoes'
from SpotifyClone.cancoes as a
inner join SpotifyClone.historico_reproducoes as b
on a.cancao_id = b.cancao_id
group by a.cancao
order by reproducoes desc, cancao asc
limit 2;