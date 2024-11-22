-- DROP e criação da tabela Usuario
DROP TABLE IF EXISTS Usuarios;
CREATE TABLE Usuarios (
    UsuarioId NUMERIC NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Senha VARCHAR(100) NOT NULL,
    CEP CHAR(8) NOT NULL,
    CONSTRAINT Usuario_PK PRIMARY KEY (UsuarioId)
);

--CRUD
 
--Create
INSERT INTO Usuarios (UsuarioId, Nome, Email, Senha, CEP) VALUES (1, 'João Silva', 'joao.silva@example.com', 'senha123', '12345678');
INSERT INTO Usuarios (UsuarioId, Nome, Email, Senha, CEP) VALUES (2, 'Maria Oliveira', 'maria.oliveira@example.com', 'senha234', '87654321');
INSERT INTO Usuarios (UsuarioId, Nome, Email, Senha, CEP) VALUES (3, 'Carlos Pereira', 'carlos.pereira@example.com', 'senha345', '11223344');
INSERT INTO Usuarios (UsuarioId, Nome, Email, Senha, CEP) VALUES (4, 'Ana Souza', 'ana.souza@example.com', 'senha456', '44332211');
INSERT INTO Usuarios (UsuarioId, Nome, Email, Senha, CEP) VALUES (5, 'Lucia Almeida', 'lucia.almeida@example.com', 'senha567', '55667788');

--Read
SELECT * FROM Usuarios;
 
--Read pelo id
SELECT * FROM Usuarios WHERE UsuarioId = 1;
SELECT * FROM Usuarios WHERE UsuarioId = 2;
SELECT * FROM Usuarios WHERE UsuarioId = 3;
SELECT * FROM Usuarios WHERE UsuarioId = 4;
SELECT * FROM Usuarios WHERE UsuarioId = 5;
 
--Read pelo nome
SELECT * FROM Usuarios WHERE Nome = 'João Silva';
 
--Update no nome do usuário
UPDATE Usuarios
SET Nome = 'João Santos Atualizado'
WHERE UsuarioId = 1;
 
UPDATE Usuarios
SET Nome = 'Maria Oliveira Atualizado'
WHERE UsuarioId = 2;
 
UPDATE Usuarios
SET Nome = 'Carlos Pereira Atualizado'
WHERE UsuarioId = 3;
 
UPDATE Usuarios
SET Nome = 'Ana Souza Atualizado'
WHERE UsuarioId = 4;

UPDATE Usuarios
SET Nome = 'Lucia Almeida Atualizado'
WHERE UsuarioId = 5;
 
--Update do email
UPDATE Usuarios
SET Email = 'joao.santos@atualizado.com'
WHERE UsuarioId = 1;
 
--Delete pelo id
DELETE FROM Usuarios WHERE UsuarioId = 1;
DELETE FROM Usuarios WHERE UsuarioId = 2;
DELETE FROM Usuarios WHERE UsuarioId = 3;
DELETE FROM Usuarios WHERE UsuarioId = 4;
DELETE FROM Usuarios WHERE UsuarioId = 5;

--Delete pelo email
DELETE FROM Usuarios 
WHERE Email = 'joao.santos@atualizado.com';
 
-- DROP e criação da tabela Eletrodomésticos
DROP TABLE IF EXISTS Eletrodomesticos;
CREATE TABLE Eletrodomesticos (
    EletrodomesticosId NUMERIC NOT NULL,
    Nome_Aparelho VARCHAR(200) NOT NULL,
    Valor_Consumo_Watts NUMERIC NOT NULL,
    Categoria VARCHAR(100),
    Modelo VARCHAR(100),
    CONSTRAINT Eletrodomesticos_PK PRIMARY KEY (EletrodomesticosId)
);

--CRUD
 
--Create
INSERT INTO Eletrodomesticos (EletrodomesticosId, Nome_Aparelho, Valor_Consumo_Watts, Categoria, Modelo) VALUES (1, 'Geladeira', 500, 'Cozinha', 'Brastemp');
INSERT INTO Eletrodomesticos (EletrodomesticosId, Nome_Aparelho, Valor_Consumo_Watts, Categoria, Modelo) VALUES (2, 'Microondas', 800, 'Cozinha', 'Electrolux');
INSERT INTO Eletrodomesticos (EletrodomesticosId, Nome_Aparelho, Valor_Consumo_Watts, Categoria, Modelo) VALUES (3, 'Televisão', 150, 'Sala', 'Samsung');
INSERT INTO Eletrodomesticos (EletrodomesticosId, Nome_Aparelho, Valor_Consumo_Watts, Categoria, Modelo) VALUES (4, 'Ar Condicionado', 1200, 'Quarto', 'LG');
INSERT INTO Eletrodomesticos (EletrodomesticosId, Nome_Aparelho, Valor_Consumo_Watts, Categoria, Modelo) VALUES (5, 'Máquina de Lavar', 1000, 'Lavanderia', 'Consul');

--Read
SELECT * FROM Eletrodomesticos;
 
--Read pelo id 
SELECT * FROM Eletrodomesticos WHERE EletrodomesticosId = 1;
SELECT * FROM Eletrodomesticos WHERE EletrodomesticosId = 2;
SELECT * FROM Eletrodomesticos WHERE EletrodomesticosId = 3;
SELECT * FROM Eletrodomesticos WHERE EletrodomesticosId = 4;
SELECT * FROM Eletrodomesticos WHERE EletrodomesticosId = 5;
 
--Read pelo nome do aparelho
SELECT * FROM Eletrodomesticos WHERE Nome_Aparelho = 'Geladeira';

--Update do nome do aparelho
UPDATE Eletrodomesticos
SET Nome_Aparelho = 'Geladeira Inverter'
WHERE EletrodomesticosId = 1;
 
UPDATE Eletrodomesticos
SET Nome_Aparelho = 'Microondas Inverter'
WHERE EletrodomesticosId = 2;
 
UPDATE Eletrodomesticos
SET Nome_Aparelho = 'Televisão Inverter'
WHERE EletrodomesticosId = 3;
 
UPDATE Eletrodomesticos
SET Nome_Aparelho = 'Ar Condicionado Inverter'
WHERE EletrodomesticosId = 4;
 
UPDATE Eletrodomesticos
SET Nome_Aparelho = 'Máquina de LavarInverter'
WHERE EletrodomesticosId = 5;
 
--Update do valor do consumo
UPDATE Eletrodomesticos
SET Valor_Consumo_Watts = 400
WHERE EletrodomesticosId = 2;

--Delete pelo id
DELETE FROM Eletrodomesticos WHERE EletrodomesticosId = 1;
DELETE FROM Eletrodomesticos WHERE EletrodomesticosId = 2;
DELETE FROM Eletrodomesticos WHERE EletrodomesticosId = 3;
DELETE FROM Eletrodomesticos WHERE EletrodomesticosId = 4;
DELETE FROM Eletrodomesticos WHERE EletrodomesticosId = 5;
 
--Delete pelo modelo
DELETE FROM Eletrodomesticos 
WHERE Modelo = 'Brastemp';

-- DROP e criação da tabela Consumo
DROP TABLE IF EXISTS Consumos;
CREATE TABLE Consumos (
    ConsumoId NUMERIC NOT NULL,
    Data_Consumo DATE NOT NULL,
    Hora_Consumo NUMERIC NOT NULL,
    Quantidade_Watts NUMERIC NOT NULL,
    CONSTRAINT Consumo_PK PRIMARY KEY (ConsumoId)
);

--CRUD
 
--Create
INSERT INTO Consumos (ConsumoId, Data_Consumo, Hora_Consumo, Quantidade_Watts) VALUES (1, '2024-11-01', 12, 100);
INSERT INTO Consumos (ConsumoId, Data_Consumo, Hora_Consumo, Quantidade_Watts) VALUES (2, '2024-11-02', 15, 200);
INSERT INTO Consumos (ConsumoId, Data_Consumo, Hora_Consumo, Quantidade_Watts) VALUES (3, '2024-11-03', 18, 300);
INSERT INTO Consumos (ConsumoId, Data_Consumo, Hora_Consumo, Quantidade_Watts) VALUES (4, '2024-11-04', 20, 400);
INSERT INTO Consumos (ConsumoId, Data_Consumo, Hora_Consumo, Quantidade_Watts) VALUES (5, '2024-11-05', 22, 500);

--Read
SELECT * FROM Consumos;

--Read pelo id
SELECT * FROM Consumos WHERE ConsumoId = 1;
SELECT * FROM Consumos WHERE ConsumoId = 2;
SELECT * FROM Consumos WHERE ConsumoId = 3;
SELECT * FROM Consumos WHERE ConsumoId = 4;
SELECT * FROM Consumos WHERE ConsumoId = 5;

--Read pela data
SELECT * FROM Consumos WHERE Data_Consumo = '2024-11-05';

--Update na quantidade de watts
UPDATE Consumos
SET Quantidade_Watts = 230
WHERE ConsumoId = 1;
 
UPDATE Consumos
SET Quantidade_Watts = 345
WHERE ConsumoId = 2;
 
UPDATE Consumos
SET Quantidade_Watts = 100
WHERE ConsumoId = 3;
 
UPDATE Consumos
SET Quantidade_Watts = 550
WHERE ConsumoId = 4;
 
UPDATE Consumos
SET Quantidade_Watts = 690
WHERE ConsumoId = 5;

-- Update na data do consumo
UPDATE Consumos
SET Data_Consumo = '2024-11-04'
WHERE ConsumoId = 5;

--Delete pelo ID
DELETE FROM Consumos WHERE ConsumoId = 1;
DELETE FROM Consumos WHERE ConsumoId = 2;
DELETE FROM Consumos WHERE ConsumoId = 3;
DELETE FROM Consumos WHERE ConsumoId = 4;
DELETE FROM Consumos WHERE ConsumoId = 5; 

--Delete pela data
DELETE FROM Consumos 
WHERE Data_Consumo = '2024-11-01';
