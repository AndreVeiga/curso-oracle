/*
 * Oracle DB 
 */

 desc compras;

 insert into compras (id,valor, data, obs, recebido) values
 (id_seq.nextval, 500, '03-AUG-2015', null, '0');

 select * from compras where obs is null;
 select * from compras where obs is not null;
 
 delete from compras where obs is null;

 alter table compras modify (obs varchar2(30) not null);

 alter table compras modify (recebido char default '0' check(recebido in (0,1)));

 insert into compras (id, valor, data, obs)
 values (id_seq.nextval, 200, '12-JAN-2020', 'Presente pra familia');

 alter table compras 
 add (form_pag varchar2(10) check(form_pag in ('boleto','cartao','dinheiro')));

 update compras set form_pag = 'dinheiro' where form_pag is null;

 alter table compras rename column form_pag to form_pagto;