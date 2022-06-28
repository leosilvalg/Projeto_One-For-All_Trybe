select 
	a.cancao as 'nome', 
    count(*) as 'reproducoes'
from SpotifyClone.cancoes as a
inner join SpotifyClone.historico_reproducoes as b
on a.cancao_id = b.cancao_id
inner join SpotifyClone.usuarios as c
on b.usuario_id = c.usuario_id
where c.plano_id = 1 or c.plano_id = 4
group by a.cancao
order by reproducoes desc, nome;