/* Continuação */

select * from compras where valor > 200 and valor <= 700;

/*
 * Comando between é inclusivo, logo valor >= 200 e valor <=700
 */
select * from compras where valor between 200 and 700;

select * from compras where data between '12-JAN-2010' and '30-JAN-2011';

update compras set valor = 300 where id = 1;


update compras set valor = 500, obs = 'Novo valor por causa do dolar'
where id = 1;

update compras set valor = 250 
where data not between '12-JAN-2000' and '12-JAN-2012';

update compras set obs = 'Datas festivas' where
data in ('12-OCT-2010','12-JUN-2010', '25-DEC-2010');


delete from compras where id = 1;
delete from tabela where (condições);