CREATE DATABASE pfa;

use pfa;

SET NAMES utf8mb4;

CREATE TABLE modules (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(140) NOT NULL
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO modules (name, description)
VALUES ("Docker", "Módulo 1");

INSERT INTO modules (name, description)
VALUES ("Comunicação", "Módulo 2");

INSERT INTO modules (name, description)
VALUES ("RabbitMQ", "Módulo 3");

INSERT INTO modules (name, description)
VALUES ("Apache Kafka", "Módulo 4");

INSERT INTO modules (name, description)
VALUES ("Autenticação e Keycloak", "Módulo 5");

INSERT INTO modules (name, description)
VALUES ("Arquitetura Hexagonal", "Módulo 6");