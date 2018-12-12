create database firegames;

use firegames;

create table venda (
idvenda int auto_increment primary key,
precototal double,
datavenda timestamp default current_timestamp,
endereco varchar(100),
cidade varchar(50),
cep varchar (20),
celular varchar (20),
formapagamento varchar(50)
);

create table tbproduto(
id int auto_increment primary key,
nome varchar(50),
preco double,
sku varchar(50) unique not null,
categoria varchar(50),
descricao varchar(300),
diretorio varchar(50));

create table tbcliente(
id int auto_increment primary key,
nome varchar(50),
sobrenome varchar(50),
cpf varchar(20) not null unique,
endereco varchar(80),
cidade varchar(30),
senha varchar(50),
email varchar(50),
cep varchar(15),
celular varchar(15));


 
drop table venda;
drop table tbcliente;
select * from tbcliente;

select * from venda;

insert into tbcliente (nome, sobrenome, cpf, endereco, cidade, senha, cep, email, celular)
values ('Guilherme', 'Feitosa', '48382985874', 'Av. Joao Peixoto Viegas', 'São Paulo', '12acesso', '04437000', 'guimfeitosa@hotmail.com', '960518717');


insert into venda (precototal, endereco, cidade, cep, celular, formapagamento) 
values (199, 'Av. Joao Peixoto Viegas', 'São Paulo', '04437-000', '96051-8717', 'Cartão Crédito');