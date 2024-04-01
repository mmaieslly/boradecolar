SELECT * FROM passagem;

SELECT * FROM usuario WHERE data_nascimento > '1980-01-01';

SELECT * FROM passagem ORDER BY valor;

SELECT compra.id, usuario.nome, compra.data_da_compra 
FROM compra 
JOIN usuario ON compra.fk_id_usuario = usuario.id;
