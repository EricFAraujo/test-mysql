SELECT
    c.nome AS cliente_nome,
    c.sobrenome AS cliente_sobrenome,
    casa.cor AS cor_casa,
    b.nome AS nome_bairro,
    carro.modelo AS modelo_carro
FROM cliente AS c
INNER JOIN casa ON c.id_cliente = casa.fk_cliente
INNER JOIN bairro AS b ON casa.fk_bairro = b.id_bairro
INNER JOIN carro ON c.id_cliente = carro.fk_cliente;
