-- Inserindo dados na tabela PROPRIETARIO
INSERT INTO PROPRIETARIO (cpf, nome, sexo, idade, dataNascimento, endereco, bairro, cidade, estado, telefone) VALUES
('12345678901', 'João Silva', 'Masculino', 35, '1988-05-15', 'Rua A, 123', 'Centro', 'São Paulo', 'SP', '11987654321'),
('23456789012', 'Maria Oliveira', 'Feminino', 28, '1995-02-20', 'Rua B, 456', 'Jardim', 'Rio de Janeiro', 'RJ', '21987654321'),
('34567890123', 'Carlos Santos', 'Masculino', 42, '1981-12-30', 'Rua C, 789', 'Bairro Alto', 'Belo Horizonte', 'MG', '31987654321'),
('45678901234', 'Ana Costa', 'Feminino', 30, '1993-08-10', 'Rua D, 135', 'Lagoa', 'Florianópolis', 'SC', '48987654321'),
('56789012345', 'Fernanda Lima', 'Feminino', 26, '1996-11-22', 'Rua E, 246', 'Centro', 'Curitiba', 'PR', '41987654321');

-- Inserindo dados na tabela CATEGORIA
INSERT INTO CATEGORIA (id, nomeCategoria) VALUES
('01', 'AUTOMÓVEL'),
('02', 'MOTOCICLETA'),
('03', 'CAMINHÃO '),
('04', 'ÔNIBUS'),
('05', 'SUV');

-- Inserindo dados na tabela MODELO
INSERT INTO MODELO (id, nomeModelo) VALUES
('01', 'GOL MI'),            
('02', 'CIVIC EX'),        
('03', 'HONDA CB 500'),      
('04', 'YAMAHA XTZ 250'),    
('05', 'VOLKSWAGEN CONSTELLATION'); 

-- Inserindo dados na tabela VEICULO
INSERT INTO VEICULO (placa, chassi, corPredominante, anoFabricacao, cpfProprietario, idCategoria, idModelo) VALUES
('ABC1A23', '9BWZZZ377VT004250', 'Preto', 2020, '12345678901', '01', '01'),
('ABC1A25', '9C6A3A4E6C1B4E140', 'Vermelho', 2022, '23456789012', '02', '03'),  
('ABC1A26', '9C6A3A4E6C1B4E141', 'Azul', 2022, '34567890123', '02', '04'), 
('ABC1A27', '9BG88889G02024405', 'Verde', 2020, '45678901234', '03', '05'),  
('ABC1A28', '9BWZZZ377VT004252', 'Cinza', 2021, '56789012345', '01', '01'),  
('ABC1A29', '9C6A3A4E6C1B4E142', 'Branco', 2022, '56789012345', '02', '02'),  
('ABC1A30', '9C6A3A4E6C1B4E143', 'Preto', 2020, '56789012345', '03', '03'),  
('ABC1A31', '9C6A3A4E6C1B4E144', 'Amarelo', 2021, '12345678901', '04', '04'),  
('ABC1A32', '9BG88889G02024406', 'Roxo', 2022, '23456789012', '05', '05');  

-- Inserindo dados na tabela LOCALIZACAO
INSERT INTO LOCALIZACAO (latitude, longitude, velocidadePermitida) VALUES
(40.712776, -74.005974, 50),
(34.052235, -118.243683, 60),
(51.507351, -0.127758, 40),
(48.856613, 2.352222, 70),
(35.689487, 139.691711, 50);

-- Inserindo dados na tabela AGENTE
INSERT INTO AGENTE (matricula, tempoServico, nome, dataContratacao) VALUES
(101, 5, 'Agente A', '2018-03-10'),
(102, 8, 'Agente B', '2016-07-15'),
(103, 3, 'Agente C', '2020-05-20'),
(104, 7, 'Agente D', '2019-01-30'),
(105, 2, 'Agente E', '2021-09-10');

-- Inserindo dados na tabela TIPO_INFRACAO
INSERT INTO TIPO_INFRACAO (descricao, id, valorMulta) VALUES
('AVANÇO DE SINAL VERMELHO', 1, 290.00),
('PARADA SOBRE A FAIXA DE PEDESTRES', 2, 150.00),
('EXCESSO DE VELOCIDADE', 3, 500.00),
('DIRIGIR SEM CNH', 4, 750.00),
('USAR CELULAR AO VOLANTE', 5, 200.00);

INSERT INTO INFRACAO (idInfracao, dataInfracao, hora, localLatitude, localLongitude, agenteMatricula, idTipoInfracao, veiculoPlaca) VALUES
(1, '2025-02-01', '10:30:00', 40.712776, -74.005974, 101, 1, 'ABC1A23'),  -- Avanço de sinal vermelho
(2, '2025-02-02', '11:00:00', 34.052235, -118.243683, 102, 2, 'ABC1A25'),  -- Parada sobre a faixa de pedestres
(3, '2025-02-03', '12:15:00', 51.507351, -0.127758, 103, 3, 'ABC1A26'),  -- Excesso de velocidade
(4, '2025-02-04', '13:45:00', 48.856613, 2.352222, 104, 4, 'ABC1A27'),  -- Dirigir sem CNH
(5, '2025-02-05', '14:30:00', 35.689487, 139.691711, 105, 5, 'ABC1A28'),  -- Usar celular ao volante
(6, '2025-02-06', '09:00:00', 40.712776, -74.005974, 101, 1, 'ABC1A29'),  -- Avanço de sinal vermelho
(7, '2025-02-07', '08:15:00', 34.052235, -118.243683, 102, 2, 'ABC1A30'),  -- Parada sobre a faixa de pedestres
(8, '2025-02-08', '15:30:00', 51.507351, -0.127758, 103, 3, 'ABC1A31'),  -- Excesso de velocidade
(9, '2025-02-09', '17:00:00', 48.856613, 2.352222, 104, 4, 'ABC1A32'),  -- Dirigir sem CNH
(10, '2025-02-10', '16:45:00', 35.689487, 139.691711, 105, 5, 'ABC1A23');  -- Usar celular ao volante
