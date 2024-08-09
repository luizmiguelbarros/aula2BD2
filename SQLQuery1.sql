SELECT Emp_RazaoSocial as Empresa,
	sum(1) as qnt_aberto,
	sum(rec_valor) as Em_aberto,
	sum(case when rec_pagto is not null then rec_valor else 0 end ) as Recebida,
	sum(case when rec_pagto is not null THEN 1 else 0 end) as qtd_recebida

from empresa, receber
where fkempresa = idempresa
group by Emp_RazaoSocial