drop table if exists clientes cascade;
drop table if exists pedido cascade;
drop table if exists entrega cascade;
drop table if exists itens_pedido cascade;
drop table if exists produtos cascade;
drop table if exists fornecedor cascade;
drop table if exists estoque cascade;
drop table if exists transportadora cascade;

create table Clientes (
  rg serial  primary key,
  Nome varchar(50) not null,
  email varchar(50) not null,
  telefone char(20) not null,
  endereço varchar(100) not null
);

create table Pedido (
  id_pedido integer primary key,
  Data_pedido timestamp without time zone not null ,
  status varchar(50) not null,
  rg int ,
  foreign key (rg) references clientes (rg)
);

create table transportadora (
  id_transportadora integer primary key,
  nome varchar(50) not null,
  telefone char(20) not null,
  tipo_transporte varchar(30) not null
  );

create table Entrega (
  ID_entrega integer primary key,
  Data_entrega timestamp without time zone not null ,
  Status_entrega varchar(50) not null,
  id_transportadora int,
  foreign key (id_transportadora) references transportadora(id_transportadora)
);

create table Itens_pedido (
  ID_item integer primary key,
  Quantidade char(100) not null,
  id_pedido int,
  foreign key (id_pedido) references pedido(id_pedido)
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

create table produtos (
  id_produto integer primary key,
  Nome_produto varchar(100) not null,
  preço money not null,
  quantidade_estoque integer not null,
  id_fornecedor int,
  id_estoque int,
  id_item int, 
  foreign key (id_fornecedor) references fornecedor(id_fornecedor),
  foreign key (id_estoque) references estoque(id_estoque),
  foreign key (id_item) references itens_pedido(id_item)
);





  
