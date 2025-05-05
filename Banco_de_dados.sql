create table Clientes (
  Rg integer  primary key,
  Nome varchar(50) not null,
  email varchar(50) not null,
  telefone char(20) not null,
  endereço varchar(100) not null
);

create table Pedido (
  ID_Pedido integer primary key,
  Data_pedido timestamp without time zone not null ,
  Status varchar(50) not null
);

create table Entrega (
  ID_entrega integer primary key,
  Data_entrega timestamp without time zone not null ,
  Status_entrega varchar(50) not null
);

create table Itens_pedido (
  ID_item integer primary key,
  Quantidade char(100) not null
);

create table produtos (
  ID_produto integer primary key,
  Nome_produto varchar(30) not null,
  preço money not null,
  quantidade_estoque integer not null
);

create table fornecedor (
  id_fornecedor integer primary key,
  nome varchar(50) not null,
  telefone char(20) not null,
  endereço varchar(30) not null
);

create table estoque (
  ID_estoque integer primary key,
  Quantidade_estoque integer not null,
  localização varchar(30) not null
  );

  create table transportadora(
    ID_transportadora integer primary key,
    nome varchar(50) not null,
    telefone char(20) not null,
    tipo_transporte varchar(30) not null
  );
