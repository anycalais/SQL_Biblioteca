CREATE DATABASE Biblioteca;
USE Biblioteca;

-- Criar tabela de autores
CREATE TABLE autores (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
nacionalidade VARCHAR(100)
);

-- Criar tabela de categorias
CREATE TABLE categorias (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL
);

-- Criar tabela de livros
CREATE TABLE livros (
id INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(255) NOT NULL,
id_autor INT,
id_categoria INT,
ano_publicacao INT,
FOREIGN KEY (id_autor) REFERENCES autores(id),
FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

-- Inserir dados na tabela autores
 INSERT INTO autores (nome, nacionalidade) VALUES
 ('Machado de Assis', 'Brasileiros'),
 ('George Orwell', 'Britânico'),
 ('J.K. Rowling', 'Britanica');
 
 -- Inserir dados na tabela categorias
 INSERT INTO categorias (nome) VALUES
 ('Romance'),
 ('Ficção Cientifica'),
 ('Fantasia');
 

