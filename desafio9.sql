select 
	count(*) as 'quantidade_musicas_no_historico'
from SpotifyClone.historico_reproducoes
where usuario_id = 3;