CREATE SCHEMA DESAFIO;

USE DESAFIO;

CREATE TABLE Jogadores(
ID_Jogador INT NOT NULL AUTO_INCREMENT,
NickName VARCHAR(20) NOT NULL,
Nivel INT NOT NULL,
Pontos INT NOT NULL,
PRIMARY KEY (ID_Jogador)
);

CREATE TABLE Partidas (
ID_Partida INT NOT NULL AUTO_INCREMENT,
ID_Jogador INT NOT NULL,
Data DATE NOT NULL,
Pontuacao INT NOT NULL,
PRIMARY KEY(ID_Partida),
FOREIGN KEY (ID_Jogador) REFERENCES Jogadores(ID_Jogador)
);

INSERT INTO Jogadores(NickName,Nivel,Pontos) VALUES
('misterM',5, 1500),
('rambo', 7, 2200),
('joao123', 3, 900),
('tioshaka', 6, 1800),
('detinho',4, 1200),
('calosmagnum',8, 2500),
('cavalodetroia', 7,2100),
('20matar70correr', 9, 3000),
('armando', 5, 1700),
('jamessaladafruta', 6,1900);

INSERT INTO Partidas (ID_Jogador, Data,Pontuacao) VALUES
(1, '2024-02-10',200),
(2, '2024-02-12', 300),
(3,'2024-02-13', 150),
(4, '2024-02-14', 250),
(5, '2024-02-15',180),
(6, '2024-02-16', 400),
(7, '2024-02-17', 320),
(8, '2024-02-18', 500),
(9, '2024-02-19', 280),
(10,'2024-02-20', 330);

SELECT SUM(Pontos) AS Total_Pontos FROM Jogadores;

SELECT AVG(Pontuacao) AS Media_Pontuacao FROM Partidas;

SELECT MAX(Pontuacao) AS Maior_Pontuacao FROM Partidas;

SELECT Nivel, SUM(Pontos) AS Total_Por_Nivel 
FROM Jogadores
GROUP BY Nivel;

SELECT ID_Jogador,AVG(Pontuacao) AS Media_Por_Jogador 
FROM Partidas
GROUP BY ID_Jogador;
