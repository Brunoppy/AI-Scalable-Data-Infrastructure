-- SQL para Infraestrutura de Dados Escalável com IA

CREATE TABLE usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE transacoes (
    id_transacao SERIAL PRIMARY KEY,
    id_usuario INT REFERENCES usuarios(id_usuario),
    valor DECIMAL(10,2),
    moeda VARCHAR(10),
    data_transacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE armazenamento_nuvem (
    id_arquivo SERIAL PRIMARY KEY,
    id_usuario INT REFERENCES usuarios(id_usuario),
    url_arquivo TEXT,
    provedor VARCHAR(50),
    enviado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
