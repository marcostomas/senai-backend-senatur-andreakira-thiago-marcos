CREATE DATABASE Senatur_Manha;

USE Senatur_Manha

CREATE TABLE TipoUsuario(
	ID_TipoUsuario INT IDENTITY PRIMARY KEY NOT NULL,
	Titulo VARCHAR(200) UNIQUE
);

CREATE TABLE Usuarios(
	ID_Usuario INT IDENTITY PRIMARY KEY NOT NULL,
	Email VARCHAR(200) NOT NULL UNIQUE,
	Senha VARCHAR(200) NOT NULL,
	ID_TipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario(ID_TipoUsuario)
);

CREATE TABLE Tabela_Pacotes(
	ID_Pacote INT IDENTITY PRIMARY KEY NOT NULL,
	NomePacote VARCHAR(200) NOT NULL,
	Descricao TEXT,
	DataIda DATE NOT NULL,
	DataVolta DATE NOT NULL,
	Valor REAL NOT NULL,
	Ativo BIT NOT NULL,
	NomeCidade VARCHAR(200) NOT NULL,
);

--DROP TABLE Tabela_Pacotes
