USE sqlpopuL;
SELECT m.nomeModelo, COUNT(*) AS qtdVeiculos
FROM VEICULO v
JOIN MODELO m ON v.idModelo = m.id
GROUP BY m.nomeModelo
ORDER BY qtdVeiculos DESC;

SELECT *
FROM PROPRIETARIO
WHERE nome LIKE '%Silva%';

SELECT i.*, v.*
FROM INFRACAO i
JOIN VEICULO v ON i.veiculoPlaca = v.placa
WHERE i.dataInfracao BETWEEN '2025-02-01' AND '2025-02-10';

SELECT v.*
FROM VEICULO v
JOIN PROPRIETARIO p ON v.cpfProprietario = p.cpf
WHERE p.cpf = '12345678901';