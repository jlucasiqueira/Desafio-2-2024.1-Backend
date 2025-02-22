CREATE TABLE VEICULO (
    placa VARCHAR(8) PRIMARY KEY,  
    chassi VARCHAR(17) NOT NULL, 
    corPredominante VARCHAR(20) NOT NULL, 
    anoFabricacao YEAR NOT NULL,
    cpfProprietario CHAR(11) NOT NULL, 
    idCategoria INT NOT NULL,
    idModelo INT NOT NULL,
    FOREIGN KEY (cpfProprietario) REFERENCES PROPRIETARIO(cpf) ON DELETE CASCADE,
    FOREIGN KEY (idCategoria) REFERENCES CATEGORIA(id) ON DELETE CASCADE,
    FOREIGN KEY (idModelo) REFERENCES MODELO(id) ON DELETE CASCADE
);

CREATE TABLE PROPRIETARIO (
    cpf CHAR(11) PRIMARY KEY,   
    nome VARCHAR(100) NOT NULL, 
    sexo VARCHAR(10) NOT NULL,
    idade INT NOT NULL,
    dataNascimento DATE NOT NULL,
    endereco VARCHAR(150) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado CHAR(2) NOT NULL,  
    telefone VARCHAR(15)
);

CREATE TABLE CATEGORIA(
	id CHAR(6) PRIMARY KEY,
    nomeCategoria VARCHAR(100)
);

CREATE TABLE MODELO(
	id CHAR(2)PRIMARY KEY,
    nomeModelo VARCHAR(100)
);

CREATE TABLE LOCALIZACAO (
    latitude DECIMAL(10, 6),
    longitude DECIMAL(10, 6),
    velocidadePermitida INT,
    PRIMARY KEY (latitude, longitude)  
);

CREATE TABLE AGENTE(
	matricula INT PRIMARY KEY,
    tempoServico INT NOT NULL,
    nome VARCHAR(100) NOT NULL,  
    dataContratacao DATE NOT NULL
);

CREATE TABLE TIPO_INFRACAO(
	descricao VARCHAR(255),
    id INT PRIMARY KEY,
    valorMulta DECIMAL(6,2)
);

CREATE TABLE INFRACAO (
    idInfracao INT PRIMARY KEY,
    dataInfracao DATE,
    hora TIME,
    localLatitude DECIMAL(10,6),
    localLongitude DECIMAL(10,6),
    agenteMatricula INT NOT NULL,
    idTipoInfracao INT NOT NULL,
    veiculoPlaca VARCHAR(8) NOT NULL,
    
    FOREIGN KEY (localLatitude, localLongitude)
        REFERENCES LOCALIZACAO(latitude, longitude) ON DELETE CASCADE,
    FOREIGN KEY (agenteMatricula) 
        REFERENCES AGENTE(matricula) ON DELETE CASCADE,
    FOREIGN KEY (idTipoInfracao) 
        REFERENCES TIPO_INFRACAO(id) ON DELETE CASCADE,
    FOREIGN KEY (veiculoPlaca) 
        REFERENCES VEICULO(placa) ON DELETE CASCADE
);






