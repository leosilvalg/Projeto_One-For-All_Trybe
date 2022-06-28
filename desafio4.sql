select a.usuario AS "usuarios",
	if (
		max(year(b.data_reproducao)) >= '2021-01-01',
			'Usuario ativo',
			'Usuario inativo'
	) as 'condicao_usuario'
from SpotifyClone.usuarios as a
inner join SpotifyClone.historico_reproducoes as b
on a.usuario_id = b.usuario_id
group by a.usuario