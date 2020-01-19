select sum(valor) as Valor_Total from compras;

select count(valor) from compras;

/* Esses dois select's encontram a média das compras */
select (sum(valor) / count(valor)) as Media from compras; -- 330
select avg(valor) as Media from compras; -- 330

/* Agrupando por recebido */
select recebido, sum(valor) from compras group by recebidos;

/* Agrupando pelo ano com uma função do Oracle 
 * e ordenando
 */
 select extract(year, data) as ANO, sum(valor) as TOTAL from 
 compras group by extract(year, data)
 order by ANO;