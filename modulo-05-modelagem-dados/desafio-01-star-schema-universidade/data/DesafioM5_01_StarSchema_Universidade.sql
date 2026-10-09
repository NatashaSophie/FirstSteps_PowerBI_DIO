CREATE TABLE `D_Professor` (
  `sk_professor` int PRIMARY KEY AUTO_INCREMENT,
  `id_professor` int UNIQUE NOT NULL
);
CREATE TABLE `D_Departamento` (
  `sk_departamento` int PRIMARY KEY AUTO_INCREMENT,
  `id_departamento` int UNIQUE NOT NULL,
  `nome` varchar(45),
  `campus` varchar(45),
  `id_professor_coordenador` int
);
CREATE TABLE `D_Disciplina` (
  `sk_disciplina` int PRIMARY KEY AUTO_INCREMENT,
  `id_disciplina` int UNIQUE NOT NULL
);
CREATE TABLE `D_Curso` (
  `sk_curso` int PRIMARY KEY AUTO_INCREMENT,
  `id_curso` int UNIQUE NOT NULL
);
CREATE TABLE `D_Data` (
  `sk_data` int PRIMARY KEY AUTO_INCREMENT,
  `data_completa` date UNIQUE NOT NULL,
  `dia` int NOT NULL,
  `mes` int NOT NULL,
  `nome_mes` varchar(20),
  `trimestre` int NOT NULL,
  `ano` int NOT NULL,
  `semestre` int NOT NULL
);
CREATE TABLE `F_Professor_Disciplina_Curso` (
  `sk_fato` int PRIMARY KEY AUTO_INCREMENT,
  `sk_professor` int NOT NULL,
  `sk_departamento` int NOT NULL,
  `sk_disciplina` int NOT NULL,
  `sk_curso` int NOT NULL,
  `sk_data` int NOT NULL,
  `quantidade_vinculos` int NOT NULL DEFAULT 1
);
ALTER TABLE `D_Professor` COMMENT = 'Dimensao Professor. sk_professor e a chave artificial; id_professor e a chave natural do modelo relacional.';
ALTER TABLE `D_Departamento` COMMENT = 'Dimensao Departamento. Preserva o identificador original do professor coordenador como atributo, sem criar relacionamento direto com D_Professor.';
ALTER TABLE `D_Disciplina` COMMENT = 'Dimensao Disciplina. Preserva o identificador original da disciplina. O relacionamento com o professor sera representado na tabela fato.';
ALTER TABLE `D_Curso` COMMENT = 'Dimensao Curso. Preserva o identificador original do curso. A associacao com o departamento sera representada na tabela fato.';
ALTER TABLE `D_Data` COMMENT = 'Dimensao temporal hipotetica. Representa a data de inicio da oferta da disciplina. Acrescentada para atender ao desafio de modelagem dimensional.';
ALTER TABLE `F_Professor_Disciplina_Curso` COMMENT = 'Tabela fato com granularidade professor-disciplina-curso-oferta academica. O departamento corresponde ao vinculo do professor. A data representa o inicio hipotetico da oferta. Cada registro contabiliza um vinculo.';
ALTER TABLE `F_Professor_Disciplina_Curso` ADD FOREIGN KEY (`sk_professor`) REFERENCES `D_Professor` (`sk_professor`);
ALTER TABLE `F_Professor_Disciplina_Curso` ADD FOREIGN KEY (`sk_departamento`) REFERENCES `D_Departamento` (`sk_departamento`);
ALTER TABLE `F_Professor_Disciplina_Curso` ADD FOREIGN KEY (`sk_disciplina`) REFERENCES `D_Disciplina` (`sk_disciplina`);
ALTER TABLE `F_Professor_Disciplina_Curso` ADD FOREIGN KEY (`sk_curso`) REFERENCES `D_Curso` (`sk_curso`);
ALTER TABLE `F_Professor_Disciplina_Curso` ADD FOREIGN KEY (`sk_data`) REFERENCES `D_Data` (`sk_data`);
