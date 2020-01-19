/*
 * Após instalado e configurado, no terminal digite 
 * sqlplus.
 * Pedirá usuário e senha.
 */

 /*
  * Oracle não aceita true e false (booleanos)
  */

 create table compras
 (
     id number primary key,
     valor number,
     obs varchar2(30),
     data date,
     recebido char check(recebido in (0,1))
 );

 create sequence id_seq;

 insert into compras (id, valor, data, obs, recebido)
 values (id_seq.nextval, 100, '12-MAY-2007', 'Compra de Maio', '1');

 select * from compras;

 select valor, data from compras;
 select valor * 3, data from compras;
 select valor * 3 as Triplo, data from compras;

 insert into compras (id, valor, data, obs, recebido)
 values (id_seq.nextval, 250, '21-MAY-2007', 'Mais uma compra de Maio', '0');

 select * from compras;

 select * from compras where valor > 100;

 select * from compras where valor < 120;

 select * from compras where valor < 120 and recebido = '1';

 select * from compras where valor < 120 or recebido = '1';

/*
 * Para filtrar com like
 * '%Parametro' = termina coom
 * 'Parametro%' = começa com
 * '%Parametro%' = contém a
 */
 select * from compras where obs like '%Compra%';