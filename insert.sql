

insert into clientes (rg, nome, email, telefone, endereço) 
values
(211416411,'Miguel','miguel@gmail.com','36734746','rua claraboia'),
(943454456,'Marcos Santos','Marcos@gmail.com' , '(11) 98987-5252','Rua Castelo Branco, 10'),
(534656547,'Carlos Silva','carlos@hotmail.com.br','(11) 3251-2587','Avenida Paulista, 1500'),
(577425466,'Maria Souza','maria@outlook.com', '(21) 2507-8963','Rua da Liberdade, 554'),
(466778890,'João Silva','joao@gmail.com','(31) 3571-4285' ,'Rua das Flores, 875'),
(101, 'Ana Souza', 'ana.souza@email.com', '11987654321', 'Rua das Flores, 123'),
(102, 'Bruno Lima', 'bruno.lima@email.com', '11912345678', 'Av. Paulista, 500'),
(103, 'Carla Dias', 'carla.dias@email.com', '21999887766', 'Rua Alegre, 45'),
(104, 'Diego Martins', 'diego.m@email.com', '31988776655', 'Rua Central, 320'),
(105, 'Eliane Rocha', 'eliane.rocha@email.com', '11977445533', 'Av. Brasil, 88'),
(106, 'Felipe Souza', 'felipe.souza@email.com', '21966554433', 'Rua do Sol, 12'),
(107, 'Gabriela Nunes', 'gabriela.nunes@email.com', '11955667788', 'Av. Santos Dumont, 1000');

insert into pedido (id_pedido,data_pedido,status, rg)
values
(1, '2025-05-01 10:00:00', 'Em processamento', 101),
(2, '2025-05-02 11:30:00', 'Enviado', 102),
(3, '2025-05-03 14:45:00', 'Entregue', 103),
(4, '2025-05-04 16:00:00', 'Cancelado', 104),
(5, '2025-05-05 17:15:00', 'Aguardando pagamento', 105),
(6, '2025-05-06 09:20:00', 'Em processamento', 106),
(7, '2025-05-07 12:10:00', 'Enviado', 107),
(8, '2025-05-08 13:30:00', 'Entregue', 943454456),
(9, '2025-05-09 10:50:00', 'Em processamento', 534656547),
(10, '2025-05-10 15:25:00', 'Aguardando pagamento', 577425466),
(11, '2025-05-11 16:45:00', 'Enviado', 466778890),
(12, '2025-05-12 11:00:00', 'Entregue', 211416411),
(13, '2025-05-13 09:30:00', 'Em processamento', 102),
(14, '2025-05-14 14:15:00', 'Enviado', 104),
(15, '2025-05-15 10:05:00', 'Entregue', 106);


INSERT INTO Itens_pedido (id_item, Quantidade, id_pedido)
 VALUES
(1, '2', 1),
(2, '1', 2),
(3, '4', 3),
(4, '1', 4),
(5, '3', 5),
(6, '2', 6),
(7, '5', 7),
(8, '1', 8),
(9, '2', 9),
(10, '1', 10),
(11, '3', 11),
(12, '2', 12),
(13, '1', 13),
(14, '4', 14),
(15, '2', 15);

insert into estoque (id_estoque, quantidade_estoque, localização)
values
(1, 1000, 'Centro-SP'),
(2, 750, 'Barueri-SP'),
(3, 1200, 'Campinas-SP'),
(4, 500, 'Belo Horizonte-MG'),
(5, 900, 'Curitiba-PR');

insert into transportadora(id_transportadora, nome, telefone, tipo_transporte)
values
(1, 'TransLog', '1130304040', 'Rodoviário'),
(2, 'SpeedEntregas', '1140405050', 'Aéreo'),
(3, 'Carga Fácil', '1150506060', 'Rodoviário'),
(4, 'LogExpress', '1160607070', 'Marítimo'),
(5, 'MegaTrans', '1170708080', 'Rodoviário');

iNSERT INTO Entrega (ID_entrega, Data_entrega, Status_entrega, id_transportadora) VALUES
(1, '2025-05-01 10:00:00', 'Em trânsito', 1),
(2, '2025-05-02 11:00:00', 'Entregue', 2),
(3, '2025-05-03 14:30:00', 'Pendente', 3),
(4, '2025-05-04 09:00:00', 'Em trânsito', 4),
(5, '2025-05-05 15:45:00', 'Entregue', 5),
(6, '2025-05-06 08:30:00', 'Pendente', 1),
(7, '2025-05-07 13:15:00', 'Em trânsito', 2),
(8, '2025-05-08 16:20:00', 'Entregue', 3),
(9, '2025-05-09 10:10:00', 'Em trânsito', 4),
(10, '2025-05-10 12:40:00', 'Entregue', 5),
(11, '2025-05-11 09:55:00', 'Pendente', 1),
(12, '2025-05-12 17:00:00', 'Entregue', 2),
(13, '2025-05-13 14:10:00', 'Em trânsito', 3),
(14, '2025-05-14 11:35:00', 'Entregue', 4),
(15, '2025-05-15 13:00:00', 'Pendente', 5); 




insert into fornecedor(id_fornecedor, nome, telefone, endereço)
values
(1, 'Tech Distribuidora', '1133345566', 'Rua Tech, 99'),
(2, 'Max Eletrônicos', '1144456677', 'Av. Central, 45'),
(3, 'Fashion Mix', '1122233344', 'Rua da Moda, 10'),
(4, 'Livros & Cia', '1133366699', 'Av. Leitura, 101'),
(5, 'Top Games', '1166677788', 'Rua Gamer, 22'),
(6, 'EletroPlus', '1177788899', 'Av. Energia, 303');


insert into produtos(id_produto, nome_produto, preço, quantidade_estoque, id_fornecedor, id_estoque, id_item )
values
(1, 'Smartphone Samsung Galaxy S22', 3599.00, 25, 1, 1, 1),
(2, 'Notebook Acer Aspire 5', 4299.00, 10, 1, 2, 2),
(3, 'Camiseta Nike Dri-Fit', 129.90, 50, 3, 3, 3),
(4, 'Livro - O Hobbit', 49.90, 100, 4, 4, 4),
(5, 'Mouse Gamer Logitech G203', 159.00, 30, 2, 5, 5),
(6, 'Impressora HP Deskjet 2774', 399.00, 15, 1, 1, 6),
(7, 'Tênis Adidas Run Falcon', 229.90, 40, 3, 2, 7),
(8, 'Monitor LG 24" Full HD', 849.00, 20, 1, 3, 8),
(9, 'Cafeteira Nespresso Inissia', 349.00, 10, 6, 4, 9),
(10, 'Mochila Dell Pro', 299.00, 25, 1, 5, 10),
(11, 'Echo Dot 4ª geração', 379.00, 35, 2, 1, 11),
(12, 'Ventilador Mondial 40cm', 199.00, 50, 6, 2, 12),
(13, 'Teclado Mecânico Redragon Kumara', 249.00, 20, 2, 3, 13),
(14, 'Relógio Casio Vintage', 299.00, 15, 2, 4, 14),
(15, 'Smartband Xiaomi Mi Band 7', 349.00, 25, 2, 5, 15),
(16, 'Liquidificador Arno Power Mix', 159.90, 40, 6, 1, 1),
(17, 'Câmera GoPro HERO11 Black', 2899.00, 10, 2, 2, 2),
(18, 'Smart TV Samsung 50" 4K UHD', 2299.00, 15, 1, 3, 3),
(19, 'Calça Jeans Masculina Slim', 119.90, 60, 3, 4, 4),
(20, 'Chuteira Adidas Campo Copa', 229.90, 25, 3, 5, 5),
(21, 'Fogão 4 bocas Brastemp Inox', 1899.00, 8, 6, 1, 6),
(22, 'Liquidificador Philips Walita ProBlend', 229.90, 30, 6, 2, 7),
(23, 'Headset Gamer Razer Kraken', 399.90, 18, 2, 3, 8),
(24, 'Poltrona Reclinável Suede Marrom', 899.90, 12, 6, 4, 9),
(25, 'Aquecedor Elétrico Cadence', 249.90, 22, 6, 5, 10),
(26, 'Pneu Aro 15 Michelin Energy XM2+', 499.90, 20, 5, 1, 11),
(27, 'Fralda Pampers Confort Sec XXG c/80', 109.90, 50, 5, 2, 12),
(28, 'Toalha de Banho Buddemeyer', 59.90, 70, 5, 3, 13),
(29, 'Jogo de Panelas Tramontina Antiaderente', 349.90, 16, 6, 4, 14),
(30, 'Maquininha PagSeguro Minizinha', 79.90, 40, 5, 5, 15),
(31, 'Tênis Adidas Ultraboost 22', 699.90, 25, 3, 1, 1),
(32, 'Aspirador Vertical Electrolux 2 em 1', 399.90, 19, 6, 2, 2),
(33, 'Óculos de Sol Ray-Ban Aviador', 589.00, 30, 3, 3, 3),
(34, 'Balança Digital Corporal G-Tech', 149.90, 35, 6, 4, 4),
(35, 'Kit 10 Pares de Meia Cano Médio', 59.90, 90, 3, 5, 5),
(36, 'Cadeira de Escritório Presidente', 899.00, 15, 1, 1, 6),
(37, 'Carregador Turbo USB-C 30W', 89.90, 70, 2, 2, 7),
(38, 'Avental Cozinha Estampado Algodão', 29.90, 80, 5, 3, 8),
(39, 'HD Externo Seagate 2TB', 459.90, 25, 2, 4, 9),
(40, 'Tapete Antiderrapante 1,5x2m', 139.90, 20, 5, 5, 10),
(41, 'Kit Shampoo + Condicionador Elseve', 39.90, 100, 5, 1, 11),
(42, 'Jogo de Copos Vidro 6 peças', 49.90, 60, 5, 2, 12),
(43, 'Carregador Veicular 2 USB', 29.90, 85, 2, 3, 13),
(44, 'Chave de Fenda Tramontina 6mm', 19.90, 120, 6, 4, 14),
(45, 'Cortador de Cabelo Philips Series 3000', 159.90, 30, 6, 5, 15),
(46, 'Kit Panelas Antiaderente Rochedo 5pçs', 299.90, 20, 6, 1, 1),
(47, 'Echo Show 5 2ª Geração', 499.90, 18, 2, 2, 2),
(48, 'Roteador TP-Link Archer C80', 299.90, 22, 2, 3, 3),
(49, 'Impressora Epson Ecotank L3250', 1199.00, 8, 1, 4, 4),
(50, 'Cortina Blackout 2x1,80m', 89.90, 30, 5, 5, 5),
(51, 'Papel A4 Chamex 500 folhas', 29.90, 100, 4, 1, 6),
(52, 'Aparador de Pelos Philips OneBlade', 179.90, 15, 6, 2, 7),
(53, 'Cooler Gamer Azul LED 120mm', 59.90, 50, 2, 3, 8),
(54, 'Cabo HDMI 2.0 2 metros', 29.90, 75, 2, 4, 9),
(55, 'Mochila Escolar Dermiwil Avengers', 119.90, 40, 3, 5, 10),
(56, 'Torneira Elétrica Hydra 4T', 129.90, 20, 6, 1, 11),
(57, 'Jogo de Cama Casal 4 peças', 159.90, 35, 5, 2, 12),
(58, 'Cadeira Gamer ThunderX3', 1299.00, 10, 2, 3, 13),
(59, 'Suporte Articulado TV 32" a 65"', 89.90, 25, 6, 4, 14),
(60, 'Travesseiro NASA Viscoelástico', 79.90, 60, 5, 5, 15);
