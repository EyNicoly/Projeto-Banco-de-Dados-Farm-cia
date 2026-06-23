INSERT INTO Fornecedor VALUES
(1,'Distribuidora Saude Ltda','12345678000190','Distribuidora Saude','4433221100'),
(2,'Farmaceutica Parana','98765432000155','Farma Parana','4499887766'),
(3,'MedSupply Brasil','45678912000133','MedSupply','4433557799'),
(4,'Produtos Vida','78945612000188','Vida Produtos','4499776655'),
(5,'BioMedic','15975348000177','BioMedic','4433669988'),
(6,'Nova Farma','75395148000122','Nova Farma','4499553311'),
(7,'Saude Total','85296374000199','Saude Total','4433445566'),
(8,'MedicMais','95175384000166','MedicMais','4499221188'),
(9,'Central Farmas','35715926000144','Central Farmas','4433112244'),
(10,'FarmaCenter','65498732000188','FarmaCenter','4499001122');


INSERT INTO Produto VALUES
(1,'Dipirona 500mg','Neo Quimica',5.00,10.00,'L001','Medicamento'),
(2,'Paracetamol 750mg','EMS',6.00,12.00,'L002','Medicamento'),
(3,'Vitamina C','Cimed',8.00,18.00,'L003','Suplemento'),
(4,'Alcool Gel','Asseptgel',7.00,15.00,'L004','Higiene'),
(5,'Protetor Solar','Nivea',20.00,35.00,'L005','Cosmetico'),
(6,'Soro Fisiologico','Eurofarma',4.00,9.00,'L006','Medicamento'),
(7,'Curativo','Cremer',3.00,7.00,'L007','Material'),
(8,'Ibuprofeno','Medley',9.00,17.00,'L008','Medicamento'),
(9,'Shampoo','Dove',12.00,25.00,'L009','Higiene'),
(10,'Pomada','Bayer',11.00,22.00,'L010','Medicamento');


INSERT INTO Fornece VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);


INSERT INTO Movimentacao_Estoque VALUES
(1,'Entrada','Compra fornecedor','Reposicao estoque','Fornecedor','2026-06-01 10:00:00',100,'L001',1,1,1,1),
(2,'Saida','Venda produto','Venda cliente','Cliente','2026-06-02 11:30:00',90,'L001',2,1,2,1),
(3,'Entrada','Compra fornecedor','Reposicao estoque','Fornecedor','2026-06-03 09:00:00',150,'L002',3,2,1,1),
(4,'Saida','Venda produto','Venda cliente','Cliente','2026-06-04 15:00:00',130,'L002',4,2,3,1),
(5,'Entrada','Compra fornecedor','Reposicao estoque','Fornecedor','2026-06-05 13:00:00',80,'L003',5,3,1,1),
(6,'Saida','Venda produto','Venda cliente','Cliente','2026-06-06 16:00:00',70,'L003',6,3,4,1),
(7,'Entrada','Compra fornecedor','Reposicao estoque','Fornecedor','2026-06-07 08:30:00',200,'L004',7,4,1,1),
(8,'Saida','Venda produto','Venda cliente','Cliente','2026-06-08 14:20:00',180,'L004',8,4,5,1),
(9,'Entrada','Compra fornecedor','Reposicao estoque','Fornecedor','2026-06-09 12:00:00',60,'L005',9,5,1,1),
(10,'Saida','Venda produto','Venda cliente','Cliente','2026-06-10 17:00:00',50,'L005',10,5,6,1);
