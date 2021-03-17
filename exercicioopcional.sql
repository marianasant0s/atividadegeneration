create database db_minha_casa_mais_bonita;
use db_minha_casa_mais_bonita;

create table tb_categoria
(
	id bigint auto_increment,
	tipo varchar (255) not null,
    ativo boolean not null,
    primary key (id)
);

insert into tb_categoria (tipo, ativo) values ("vidracaria", 1);
insert into tb_categoria (tipo, ativo) values ("Marcenaria", 2);
insert into tb_categoria (tipo, ativo) values ("Estofado", 3);
insert into tb_categoria (tipo, ativo) values ("Decoracao", 4);
insert into tb_categoria (tipo, ativo) values ("Variados", 5);

select * from tb_categoria;

create table tb_produto
(
	id bigint auto_increment,
	nome varchar (255) not null,
    preco double not null,
    setor varchar (255) not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, preco, setor,categoria_id) values ("Sofá", 3000, 1, 3);
insert into tb_produto (nome, preco, setor,categoria_id) values ("Sofá cama", 4000, 1, 3);
insert into tb_produto (nome, preco, setor,categoria_id) values ("Cama queen", 2500, 1, 3);
insert into tb_produto (nome, preco, setor,categoria_id) values ("espelho", 57, 2, 1);
insert into tb_produto (nome, preco, setor,categoria_id) values ("Pia de banheiro", 1000 , 3, 5);
insert into tb_produto (nome, preco, setor,categoria_id) values ("Armario de cozinha", 3000, 4, 2);
insert into tb_produto (nome, preco, setor,categoria_id) values ("Puf", 5000, 5, 4);
insert into tb_produto (nome, preco, setor,categoria_id) values ("Mesa", 1000, 4, 2);

select * from tb_produto;

create table tb_usuario
(
	id bigint auto_increment,
    nome varchar (255) not null,
    idade int not null,
    email varchar (255) not null,
    telefone varchar (255) not null,
    primary key (id)
);

insert into tb_usuario (nome, idade, email, telefone) values ("Janaina", 30, "jana@gmail.com", "(11)90877-6543");
insert into tb_usuario (nome, idade, email, telefone) values ("Julia", 20, "jujuba@gmail.com", "(11)90457-5683");
insert into tb_usuario (nome, idade, email, telefone) values ("Maria Clara", 27, "Maria@gmail.com", "(11)98447-6943");
insert into tb_usuario (nome, idade, email, telefone) values ("Claudio", 40, "claudiao@gmail.com", "(11)90527-7569");
insert into tb_usuario (nome, idade, email, telefone) values ("Yury", 30, "Yurimartins@gmail.com", "(11)97380-6393");

select * from tb_usuario;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like '%b%';
select * from tb_usuario where nome like '%c%';

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id;

select  avg(preco) from tb_produtos;


