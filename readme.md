# Banco Colunar com Cassandra – Operações Básicas

Este README mostra como interagir com o banco orientado a colunas **Apache Cassandra** dentro do container Docker que criamos para o projeto “faculdade”.

---

## Subir o ambiente e entrar no container

Suba o container Cassandra e o container de inicialização que executa os scripts `.cql`:

```bash
docker compose up

docker exec -it cassandra10 cqlsh
```

## Mostrar o banco e as tabelas criadas
```bash
DESCRIBE KEYSPACES;

USE faculdade;

DESCRIBE TABLES;
```

## Insert no banco

```bash
SELECT * FROM alunos;

INSERT INTO alunos (id, nome, idade) VALUES (uuid(), 'Maria', 25);
INSERT INTO alunos (id, nome, idade) VALUES (uuid(), 'Joao', 30);

SELECT * FROM alunos;
```

## Update no banco
```bash
SELECT * FROM alunos;

UPDATE alunos SET idade = 35 WHERE id = 3fa85f64-5717-4562-b3fc-2c963f66afa6;
```

## Delete no banco
```bash
SELECT * FROM alunos;


SELECT * FROM alunos;

DELETE FROM alunos WHERE id = 3fa85f64-5717-4562-b3fc-2c963f66afa6;
SELECT * FROM alunos;
```

## Sair do banco e desligar o container

```bash
EXIT;

docker compose down
```