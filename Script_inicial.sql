#DROP DATABASE if EXISTS Recursos_Humanos;

CREATE DATABASE Recursos_Humanos;
USE Recursos_Humanos;

CREATE TABLE Departamentos (
  id INT,
  nome VARCHAR(50),
  orcamento DECIMAL(8,2),
  PRIMARY KEY (id)
);

CREATE TABLE Empregados (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  morada VARCHAR(150),
  codigo_postal VARCHAR(8),
  nif VARCHAR(12),
  numero_seg_social VARCHAR(15),
  salario DECIMAL(6,2),
  departamento_id INT,
  FOREIGN KEY (departamento_id) REFERENCES Departamentos(id)
);

CREATE TABLE Dependentes (
  numero_seg_social VARCHAR(15),
  nome VARCHAR(100),
  data_nascimento DATE,
  empregado_id INT,
  PRIMARY KEY (numero_seg_social, empregado_id),
  FOREIGN KEY (empregado_id) REFERENCES Empregados(id)
);

INSERT INTO Departamentos (id, nome, orcamento) 
VALUES  (1, "Recursos Humanos", 50000.00), (2, "Tecnologia da Informação", 100000.00);

insert Into Departamentos(id, nome, orcamento)
Values (2, "Financeiro", 100000);
