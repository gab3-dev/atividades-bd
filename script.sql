drop database if exists revisao;

create database revisao;

use revisao;

create table Clientes(
  IDCliente int not null auto_increment primary key,
  NomeCliente varchar(50) not null,
  CPFCliente varchar(14) not null
);

create table Vendas(
  IDVenda int not null auto_increment primary key,
  DataVenda date not null,
  IDCliente int not null,
  foreign key (IDCliente) references Clientes(IDCliente)
);

create table Produtos(
  IDProduto int not null auto_increment primary key,
  NomeProduto varchar(50) not null,
  PrecoUnitario double not null
);

create table ItensVendidos(
  IDVenda int not null,
  IDProduto int not null,
  QtdeVendida int not null,
  foreign key (IDVenda) references Vendas(IDVenda),
  foreign key (IDProduto) references Produtos(IDProduto)
);
