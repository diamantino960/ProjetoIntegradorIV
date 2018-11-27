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
cpf varchar(20) not null unique,
endereco varchar(80),
datanascimento varchar(30),
senha varchar(50));


 
drop table venda;
drop table tbcliente;

select * from venda;


insert into venda (precototal, endereco, cidade, cep, celular, formapagamento) 
values (199, 'Av. Joao Peixoto Viegas', 'São Paulo', '04437-000', '96051-8717', 'Cartão Crédito');