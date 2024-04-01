CREATE TABLE usuario(
  id SERIAL PRIMARY KEY,
  cpf VARCHAR(11) NOT NULL,
  nome VARCHAR(20) NOT NULL,
  sobrenome VARCHAR(25) NOT NULL,
  sexo TEXT NOT NULL,
  data_nascimento DATE NOT NULL
)

CREATE TABLE companhia_aerea(
  ID SERIAL PRIMARY KEY,
  cnpj VARCHAR(14) NOT NULL,
  nome TEXT NOT NULL
)

CREATE TABLE passagem(
  ID SERIAL PRIMARY KEY,
  fk_id_companhia_aerea INT NOT NULL,
  aerop_origem TEXT NOT NULL,
  aerop_destino TEXT NOT NULL,
  valor FLOAT NOT NULL,
  data_do_voo DATE NOT NULL,
  CONSTRAINT fk_companhia_aerea FOREIGN KEY (fk_id_companhia_aerea) REFERENCES companhia_aerea(id)
)

CREATE TABLE compra(
  ID SERIAL PRIMARY KEY,
  fk_id_usuario INT NOT NULL,
  fk_id_passagem INT NOT NULL,
  quantidade INT NOT NULL,
  data_da_compra DATE NOT NULL,
  CONSTRAINT fk_usuario FOREIGN KEY (fk_id_usuario) REFERENCES usuario(id),
  CONSTRAINT fk_passagem FOREIGN KEY (fk_id_passagem) REFERENCES passagem(id)
)

INSERT INTO usuario(cpf, nome, sobrenome, sexo, data_nascimento) VALUES
	(00100100101, 'Judite', 'Silva', 'Feminino', '1975-02-18'),
  (00200200202, 'Jose', 'Santos', 'Masculino', '1985-12-01'),
  (00300300303, 'Astrogildo', 'Santana', 'Masculino', '1982-05-12'); 
    
INSERT INTO companhia_aerea(cnpj, nome) VALUES
	(00100101000101,'Azul Linhas Aéreas'),
  (00200202000202,'Gol Linhas Aéreas Inteligentes'),
  (00300303000303,'LATAM Airlines Chile');
    
INSERT into passagem(fk_id_companhia_aerea, aerop_origem, aerop_destino, valor, data_do_voo) VALUES
	(1, 'Aerop. Recife - PE', 'Aerop. Mossoro - RN', 300.00, '2023-07-13'),
  (2,'Aerop. Guarulhos - SP','Aerop. Fortaleza - CE', 450.00,'2023-05-12'),
  (3,'Aerop. Congonhas - SP','Aerop. Galeao - RJ',225.12,'2023-02-10');
    
INSERT INTO compra(fk_id_usuario, fk_id_passagem, quantidade, data_da_compra) VALUES
	(1,1,5,'2022-11-28'),
  (2,2,2,'2023-02-11'),
  (3,3,1,'2023-01-27');