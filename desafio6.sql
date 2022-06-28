select 
round(MIN(valor_plano), 2) as 'faturamento_minimo',
round(MAX(valor_plano), 2) as 'faturamento_maximo',
round(AVG(valor_plano), 2) as 'faturamento_medio',
round(SUM(valor_plano), 2) as 'faturamento_total'
from SpotifyClone.planos as a
inner join SpotifyClone.usuarios as b
on a.plano_id = b.plano_id