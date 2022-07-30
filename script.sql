create database if not exists revisao;

use revisao;

create table Clientes(
  IDCliente int not null auto_increment primary key,
  NomeCliente varchar(50) not null,
  CPFCliente int not null
);

