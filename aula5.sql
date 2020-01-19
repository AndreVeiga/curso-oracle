create table compradores
(
    id number primary key,
    nome varchar2(30) not null,
    endereco varchar2(30) not null,
    telefone varchar2(30) not null
);

create sequence id_compradores_seq;

insert into compradores (id, nome, endereco, telefone)
values (id_compradores_seq.nextval, 'Jose Silva', 'Rua Jose da Silva', '55 123456789');

insert into compradores (id, nome, endereco, telefone)
values (id_compradores_seq.nextval, 'Joao Machado', 'Rua Joao do Machado', '55 123456789');


alter table compras add (id_comprador number);

update compras set id_comprador = 1 where id <= 20;
update compras set id_comprador = 2 where id is null;


select obs, nome, valor from compras,compradores where compras.id_comprador = compradores.id; 
select obs, valor, nome from compras join compradores on compras.id_comprador = compradores.id;

alter table compras add foreign key (id_comprador) references compradores (id);