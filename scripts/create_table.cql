CREATE KEYSPACE IF NOT EXISTS faculdade
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE faculdade;

CREATE TABLE IF NOT EXISTS alunos (
    id UUID PRIMARY KEY,
    nome TEXT,
    idade INT
);

INSERT INTO alunos (id, nome, idade) VALUES (uuid(), 'Lucas', 22);