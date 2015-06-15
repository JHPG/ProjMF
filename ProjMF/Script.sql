-- Nome: banco1
-- User: root
-- Pass: 1234

Drop Table Paciente

CREATE TABLE Paciente(
	idPaciente integer not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),   
	nome VARCHAR(50),     
	CPF VARCHAR(50),
	RG VARCHAR(450),
	genero VARCHAR(450),  
	estado_civil VARCHAR(450),
	nome_mae VARCHAR(450),    
	nome_pai VARCHAR(450),
	cor_pele VARCHAR(450),
	data_nascimento VARCHAR(450),
	UF_origem VARCHAR(450),
	logradouro VARCHAR(450),
	numero VARCHAR(450),
	complemento VARCHAR(450)

);

select * from Paciente

-- Script de abaixo esta de acordo com o projeto de BD II
-- Alterar tipos date e outros para VARCHAR
-- Adicionar auto increment INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) 

--DROPS
DROP TABLE Historico ;
DROP TABLE Perfil_Acesso ;
DROP TABLE Instituicao ;
DROP TABLE Endereco ;
DROP TABLE Informacoes_Instituicao ;
DROP TABLE Departamento ;
DROP TABLE Responsavel ;
DROP TABLE Funcionario ;
DROP TABLE Paciente ;
DROP TABLE Informacoes_Paciente ;
DROP TABLE Instituicao_has_Paciente ;
DROP TABLE Log_de_Acesso ;
DROP TABLE Funcionario_Paciente ;
DROP TABLE Log_Registro_Instituicaos ;
DROP TABLE Atualiza_Departamento ;

--CREATES

CREATE TABLE Instituicao (
  ID_Instituicao INTEGER NOT NULL ,
  Nome VARCHAR (100) NOT NULL,
  Razao_Social VARCHAR (100) NOT NULL,
  CNPJ VARCHAR (14) NOT NULL,
  Infos_Complementares VARCHAR (500),
PRIMARY KEY(ID_Instituicao));

CREATE TABLE Informacoes_Instituicao (
  ID_Informacoes_ONG INTEGER NOT NULL ,
  ID_Instituicao INTEGER NOT NULL,
  Especialidade VARCHAR (100) NOT NULL,
  Resumo_Ativ_ONG VARCHAR (500) NOT NULL,
  Limite_Vagas_ONG INTEGER  NOT NULL,
  Vagas_Disponiveis_ONG INTEGER NOT NULL,
  Vagas_Ocupadas_ONG INTEGER NOT NULL,
  PRIMARY KEY(ID_Informacoes_ONG),
  FOREIGN KEY(ID_Instituicao) REFERENCES Instituicao(ID_Instituicao));
  

CREATE TABLE Paciente (
  ID_Paciente INTEGER NOT NULL ,
  Nome_do_Paciente VARCHAR (100) NOT NULL ,
  RG VARCHAR (10) NOT NULL,
  Dt_Nasc DATE NOT NULL,
  Estado_Civil VARCHAR (15) NOT NULL,
  Cor_Pele VARCHAR (20) NOT NULL,
  Genero VARCHAR (1) NOT NULL,
  Nome_Mae VARCHAR (100) NOT NULL, 
  Nome_Pai VARCHAR (100), 
  UF_Origem VARCHAR (2) NOT NULL,
  Naturalidade VARCHAR (50) NOT NULL,
  Infos_Complementares VARCHAR (500),
  Dt_Entrada_Rede DATE NOT NULL,
  Responsavel_Atendimento VARCHAR (100) NOT NULL,
  Possui_Moradia_Bool INTEGER NOT NULL,
  PRIMARY KEY(ID_Paciente));


CREATE TABLE Historico (
  ID_Historico INTEGER NOT NULL ,
  ID_Paciente INTEGER NOT NULL,
  Dt_Atual DATE NOT NULL,
  Evolucao VARCHAR (500),
  Observacao VARCHAR (500),
  Conclusao VARCHAR (500),
  Tratamento_Ativo_bool INTEGER,
  PRIMARY KEY(ID_Historico),
  FOREIGN KEY(ID_Paciente) REFERENCES Paciente(ID_Paciente));


CREATE TABLE Informacoes_Paciente (
  ID_Informacoes_Paciente INTEGER NOT NULL ,
  ID_Paciente INTEGER NOT NULL,
  Diagnostico_Inicial VARCHAR (300) NOT NULL,
  Vulnerabilidades VARCHAR (200) NOT NULL,
  Objetivos VARCHAR (200) NOT NULL,
  Resultados VARCHAR (300) NOT NULL,
  PRIMARY KEY(ID_Informacoes_Paciente),
  FOREIGN KEY(ID_Paciente) REFERENCES Paciente(ID_Paciente));


CREATE TABLE Funcionario (
  ID_Funcionario INTEGER NOT NULL ,
  ID_Instituicao INTEGER NOT NULL,
  Nome_Func VARCHAR (100) NOT NULL,
  Cargo_Func VARCHAR (100) NOT NULL,
  Departamento_Func VARCHAR (500) NOT NULL,
  PRIMARY KEY(ID_Funcionario),
  FOREIGN KEY (ID_Instituicao) REFERENCES Instituicao(ID_Instituicao));


CREATE TABLE Perfil_Acesso (
  ID_Perfil_Acesso INTEGER NOT NULL,
  ID_Funcionario INTEGER NOT NULL,
  Nivel_Acesso INTEGER NOT NULL,
  Bloqueio_bool INTEGER NOT NULL,
  PRIMARY KEY(ID_Perfil_Acesso),
  FOREIGN KEY(ID_Funcionario) REFERENCES Funcionario(ID_Funcionario));


CREATE TABLE Responsavel (
  ID_Responsavel INTEGER NOT NULL ,
  ID_Paciente INTEGER NOT NULL,
  Nome VARCHAR (100) NOT NULL,
  Telefone VARCHAR (15) NOT NULL,
  PRIMARY KEY(ID_Responsavel),
  FOREIGN KEY(ID_Paciente) REFERENCES Paciente(ID_Paciente));


CREATE TABLE Endereco (
  ID_Endereco INTEGER NOT NULL,
  ID_Instituicao INTEGER NOT NULL,
  ID_Responsavel INTEGER NOT NULL,
  ID_Paciente INTEGER NOT NULL,
  Logradouro VARCHAR (100) NOT NULL,
  Numero VARCHAR (5) NOT NULL,
  Complemento VARCHAR (100) NOT NULL,
  CEP VARCHAR (9) NOT NULL,
  UF VARCHAR (2) NOT NULL,
  PRIMARY KEY(ID_Endereco),
  FOREIGN KEY(ID_Instituicao) REFERENCES Instituicao(ID_Instituicao),
  FOREIGN KEY(ID_Responsavel) REFERENCES Responsavel(ID_Responsavel),
  FOREIGN KEY(ID_Paciente) REFERENCES Paciente(ID_Paciente));


CREATE TABLE Departamento (
  ID_Departamento INTEGER NOT NULL ,
  ID_Instituicao INTEGER NOT NULL,
  ID_Funcionario INTEGER NOT NULL,
  Nome_Dep VARCHAR (100) NOT NULL,
  Desc_Dep VARCHAR (500),
  Quantidade_Funcionarios INTEGER NOT NULL,                    -- COLOCAR NO MER
  PRIMARY KEY(ID_Departamento),
  FOREIGN KEY(ID_Instituicao) REFERENCES Instituicao(ID_Instituicao),
  FOREIGN KEY(ID_Funcionario) REFERENCES Funcionario(ID_Funcionario));


CREATE TABLE Instituicao_has_Paciente (
  ID_Instituicao INTEGER NOT NULL ,
  ID_Paciente INTEGER NOT NULL,
  PRIMARY KEY(ID_Instituicao, ID_Paciente),
  FOREIGN KEY(ID_Instituicao) REFERENCES Instituicao(ID_Instituicao),
  FOREIGN KEY(ID_Paciente) REFERENCES Paciente(ID_Paciente));
  

CREATE TABLE Log_de_Acesso (
  ID_Funcionario INTEGER NOT NULL ,
  Data_Acesso DATE NOT NULL,
  Nivel_Acesso INTEGER,
  Bloq_Desbloq VARCHAR (12),
  PRIMARY KEY (ID_Funcionario, Data_Acesso, Nivel_Acesso, Bloq_Desbloq));


CREATE TABLE Funcionario_Paciente (
  ID_Paciente INTEGER NOT NULL ,
  Data_Entrada DATE NOT NULL,
  Func_Registrador VARCHAR (100) NOT NULL,
  PRIMARY KEY (ID_Paciente, Data_Entrada, Func_Registrador));


CREATE TABLE Log_Registro_Instituicaos (
  ID_Instituicao INTEGER NOT NULL ,
  Data_Entrada DATE NOT NULL,
  Data_Exclusao DATE,
  PRIMARY KEY (ID_Instituicao, Data_Entrada, Data_Exclusao));
  
  
CREATE TABLE Atualiza_Departamento (
  ID_Paciente INTEGER NOT NULL ,
  Data_Atualizacao DATE NOT NULL,
  Dep_Antigo VARCHAR (100) NOT NULL,
  Dep_Novo VARCHAR (100) NOT NULL,
  Funcionario_Responsavel VARCHAR (100) NOT NULL,
  PRIMARY KEY (ID_Paciente, Data_Atualizacao, Dep_Antigo, Dep_Novo, Funcionario_Responsavel));

--INSERTS

INSERT INTO Instituicao (ID_Instituicao, Nome, Razao_Social, CNPJ, Infos_Complementares)
VALUES (1, 'Instituicao Número Um', 'Instituicao Um ONG.org', '363288840155', 'Exemplo de informações complementares, número um.');
INSERT INTO Instituicao (ID_Instituicao, Nome, Razao_Social, CNPJ, Infos_Complementares)
VALUES (2, 'Instituicao Número Dois', 'Instituicao Dois ONG.org', '887973390101', 'Exemplo de informações complementares, número dois.');
INSERT INTO Instituicao (ID_Instituicao, Nome, Razao_Social, CNPJ, Infos_Complementares)
VALUES (3, 'Instituicao Número Três', 'Instituicao Três ONG.org', '975095250199', 'Exemplo de informações complementares, número três.');
INSERT INTO Instituicao (ID_Instituicao, Nome, Razao_Social, CNPJ, Infos_Complementares)
VALUES (4, 'Instituicao Número Quatro', 'Instituicao Quatro ONG.org', '855206810171', 'Exemplo de informações complementares, número quatro.');
INSERT INTO Instituicao (ID_Instituicao, Nome, Razao_Social, CNPJ, Infos_Complementares)
VALUES (5, 'Instituicao Número Cinco', 'Instituicao Cinco ONG.org', '313294570178', 'Exemplo de informações complementares, número cinco.');


INSERT INTO Informacoes_Instituicao (ID_Informacoes_ONG, ID_Instituicao, Especialidade, Resumo_Ativ_ONG, Limite_Vagas_ONG, Vagas_Disponiveis_ONG, Vagas_Ocupadas_ONG)
VALUES (1, 1, 'Especialidade Um e Seis', 'Exemplo de resumo de atividades, um.', 1000, 100, 900);
INSERT INTO Informacoes_Instituicao (ID_Informacoes_ONG, ID_Instituicao, Especialidade, Resumo_Ativ_ONG, Limite_Vagas_ONG, Vagas_Disponiveis_ONG, Vagas_Ocupadas_ONG)
VALUES (2, 2, 'Especialidade Dois e Sete', 'Exemplo de resumo de atividades, dois.', 2000, 200, 1800);
INSERT INTO Informacoes_Instituicao (ID_Informacoes_ONG, ID_Instituicao, Especialidade, Resumo_Ativ_ONG, Limite_Vagas_ONG, Vagas_Disponiveis_ONG, Vagas_Ocupadas_ONG)
VALUES (3, 3, 'Especialidade Três e Oito', 'Exemplo de resumo de atividades, três.', 500, 50, 450);
INSERT INTO Informacoes_Instituicao (ID_Informacoes_ONG, ID_Instituicao, Especialidade, Resumo_Ativ_ONG, Limite_Vagas_ONG, Vagas_Disponiveis_ONG, Vagas_Ocupadas_ONG)
VALUES (4, 4, 'Especialidade Quatro e Nove', 'Exemplo de resumo de atividades, quatro.', 3500, 2800, 700);
INSERT INTO Informacoes_Instituicao (ID_Informacoes_ONG, ID_Instituicao, Especialidade, Resumo_Ativ_ONG, Limite_Vagas_ONG, Vagas_Disponiveis_ONG, Vagas_Ocupadas_ONG)
VALUES (5, 5, 'Especialidade Cinco e Dez', 'Exemplo de resumo de atividades, cinco.', 2700, 100, 2600);



INSERT INTO Paciente (ID_Paciente, Nome_do_Paciente, RG, Dt_Nasc, Estado_Civil, Cor_Pele, Genero,
Nome_Mae, Nome_Pai, UF_Origem, Naturalidade, Infos_Complementares, Dt_Entrada_Rede, Responsavel_Atendimento, Possui_Moradia_Bool)
VALUES (1, 'Indivíduo Um', '47111', '01/01/1981', 'Solteiro', 'Branco', 'M', 'Mãe do Primeiro IndivCURRENTíduo', 'Pai do Indivíduo Um',
       'SP', 'Brasileiro', 'Exemplo de informações complementares, número um.', CURRENT_DATE  , 'Responsável do Indivíduo Um', 0);
INSERT INTO Paciente (ID_Paciente, Nome_do_Paciente, RG, Dt_Nasc, Estado_Civil, Cor_Pele, Genero,
Nome_Mae, Nome_Pai, UF_Origem, Naturalidade, Infos_Complementares, Dt_Entrada_Rede, Responsavel_Atendimento, Possui_Moradia_Bool)
VALUES (2, 'Indivíduo Dois', '47210', '01/01/1982', 'Divorciado', 'Negro', 'F', 'Mãe do Segundo Indivíduo', 'Pai do Indivíduo Dois',
       'RJ', 'Brasileiro', 'Exemplo de informações complementares, número dois.', CURRENT_DATE  , 'Responsável do Indivíduo Dois', 1);
INSERT INTO Paciente (ID_Paciente, Nome_do_Paciente, RG, Dt_Nasc, Estado_Civil, Cor_Pele, Genero,
Nome_Mae, UF_Origem, Naturalidade, Infos_Complementares, Dt_Entrada_Rede, Responsavel_Atendimento, Possui_Moradia_Bool)
VALUES (3, 'Indivíduo Três', '47311', '01/01/1983', 'Viúvo', 'Branco', 'F', 'Mãe do Terceiro Indivíduo',
       'SC', 'Brasileiro', 'Exemplo de informações complementares, número três.', CURRENT_DATE  , 'Responsável do Indivíduo Três', 0);
INSERT INTO Paciente (ID_Paciente, Nome_do_Paciente, RG, Dt_Nasc, Estado_Civil, Cor_Pele, Genero,
Nome_Mae, Nome_Pai, UF_Origem, Naturalidade, Infos_Complementares, Dt_Entrada_Rede, Responsavel_Atendimento, Possui_Moradia_Bool)
VALUES (4, 'Indivíduo Quatro', '47410', '01/01/1984', 'Solteiro', 'Mulato', 'F', 'Mãe do Quarto Indivíduo', 'Pai do Indivíduo Quatro',
       'MG', 'Brasileiro', 'Exemplo de informações complementares, número quatro.', CURRENT_DATE  , 'Responsável do Indivíduo Quatro', 1);
INSERT INTO Paciente (ID_Paciente, Nome_do_Paciente, RG, Dt_Nasc, Estado_Civil, Cor_Pele, Genero,
Nome_Mae, UF_Origem, Naturalidade, Infos_Complementares, Dt_Entrada_Rede, Responsavel_Atendimento, Possui_Moradia_Bool)
VALUES (5, 'Indivíduo Cinco', '47511', '01/01/1985', 'Divorciado', 'Negro', 'M', 'Mãe do Quinto Indivíduo',
       'BA', 'Brasileiro', 'Exemplo de informações complementares, número cinco.', CURRENT_DATE  , 'Responsável do Indivíduo Cinco', 0);


INSERT INTO Historico (ID_Historico, ID_Paciente, Dt_Atual, Evolucao, Observacao, Conclusao, Tratamento_Ativo_bool)
VALUES (1, 1, CURRENT_DATE  , 'Exemplo de Evolução Número Um', 'Exemplo de Observação Número Um', 'Exemplo de Conclusão Número Um', 1);
INSERT INTO Historico (ID_Historico, ID_Paciente, Dt_Atual, Evolucao, Observacao, Conclusao, Tratamento_Ativo_bool)
VALUES (2, 2, CURRENT_DATE  , 'Exemplo de Evolução Número Dois', 'Exemplo de Observação Número Dois', 'Exemplo de Conclusão Número Dois', 0);
INSERT INTO Historico (ID_Historico, ID_Paciente, Dt_Atual, Evolucao, Observacao, Conclusao, Tratamento_Ativo_bool)
VALUES (3, 3, CURRENT_DATE  , 'Exemplo de Evolução Número Três', 'Exemplo de Observação Número Três', 'Exemplo de Conclusão Número Três', 1);
INSERT INTO Historico (ID_Historico, ID_Paciente, Dt_Atual, Evolucao, Observacao, Conclusao, Tratamento_Ativo_bool)
VALUES (4, 4, CURRENT_DATE  , 'Exemplo de Evolução Número Quatro', 'Exemplo de Observação Número Quatro', 'Exemplo de Conclusão Número Quatro', 1);
INSERT INTO Historico (ID_Historico, ID_Paciente, Dt_Atual, Evolucao, Observacao, Conclusao, Tratamento_Ativo_bool)
VALUES (5, 5, CURRENT_DATE  , 'Exemplo de Evolução Número Cinco', 'Exemplo de Observação Número Cinco', 'Exemplo de Conclusão Número Cinco', 0);


INSERT INTO Informacoes_Paciente (ID_Informacoes_Paciente, ID_Paciente, Diagnostico_Inicial, Vulnerabilidades, Objetivos, Resultados)
VALUES (1, 1, 'Exemplo de diagnóstico inicial, número um.', 'Exemplo de vulnerabilidades, número um.',
        'Objetivo do indivíduo, um.', 'Resultados do indivíduo, um.');
INSERT INTO Informacoes_Paciente (ID_Informacoes_Paciente, ID_Paciente, Diagnostico_Inicial, Vulnerabilidades, Objetivos, Resultados)
VALUES (2, 2, 'Exemplo de diagnóstico inicial, número dois.', 'Exemplo de vulnerabilidades, número dois.',
        'Objetivo do indivíduo, dois.', 'Resultados do indivíduo, dois.');
INSERT INTO Informacoes_Paciente (ID_Informacoes_Paciente, ID_Paciente, Diagnostico_Inicial, Vulnerabilidades, Objetivos, Resultados)
VALUES (3, 3, 'Exemplo de diagnóstico inicial, número três.', 'Exemplo de vulnerabilidades, número três.',
        'Objetivo do indivíduo, três.', 'Resultados do indivíduo, três.');
INSERT INTO Informacoes_Paciente (ID_Informacoes_Paciente, ID_Paciente, Diagnostico_Inicial, Vulnerabilidades, Objetivos, Resultados)
VALUES (4, 4, 'Exemplo de diagnóstico inicial, número quatro.', 'Exemplo de vulnerabilidades, número quatro.',
        'Objetivo do indivíduo, quatro.', 'Resultados do indivíduo, quatro.');
INSERT INTO Informacoes_Paciente (ID_Informacoes_Paciente, ID_Paciente, Diagnostico_Inicial, Vulnerabilidades, Objetivos, Resultados)
VALUES (5, 5, 'Exemplo de diagnóstico inicial, número cinco.', 'Exemplo de vulnerabilidades, número cinco.',
        'Objetivo do indivíduo, cinco.', 'Resultados do indivíduo, cinco.');
        

INSERT INTO Funcionario (ID_Funcionario, ID_Instituicao, Nome_Func, Cargo_Func, Departamento_Func)
VALUES (1, 1, 'Funcionário Um', 'Cargo Um', 'Departamento Cinco');
INSERT INTO Funcionario (ID_Funcionario, ID_Instituicao, Nome_Func, Cargo_Func, Departamento_Func)
VALUES (2, 2, 'Funcionário Dois', 'Cargo Dois', 'Departamento Quatro');
INSERT INTO Funcionario (ID_Funcionario, ID_Instituicao, Nome_Func, Cargo_Func, Departamento_Func)
VALUES (3, 3, 'Funcionário Três', 'Cargo Três', 'Departamento Três');
INSERT INTO Funcionario (ID_Funcionario, ID_Instituicao, Nome_Func, Cargo_Func, Departamento_Func)
VALUES (4, 4, 'Funcionário Quatro', 'Cargo Quatro', 'Departamento Dois');
INSERT INTO Funcionario (ID_Funcionario, ID_Instituicao, Nome_Func, Cargo_Func, Departamento_Func)
VALUES (5, 5, 'Funcionário Cinco', 'Cargo Cinco', 'Departamento Um');


INSERT INTO Perfil_Acesso (ID_Perfil_Acesso, ID_Funcionario, Nivel_Acesso, Bloqueio_bool)
VALUES (1, 1, 1, 0);
INSERT INTO Perfil_Acesso (ID_Perfil_Acesso, ID_Funcionario, Nivel_Acesso, Bloqueio_bool)
VALUES (2, 2, 3, 0);
INSERT INTO Perfil_Acesso (ID_Perfil_Acesso, ID_Funcionario, Nivel_Acesso, Bloqueio_bool)
VALUES (3, 3, 2, 1);
INSERT INTO Perfil_Acesso (ID_Perfil_Acesso, ID_Funcionario, Nivel_Acesso, Bloqueio_bool)
VALUES (4, 4, 2, 0);
INSERT INTO Perfil_Acesso (ID_Perfil_Acesso, ID_Funcionario, Nivel_Acesso, Bloqueio_bool)
VALUES (5, 5, 3, 1);


INSERT INTO Responsavel (ID_Responsavel, ID_Paciente, Nome, Telefone)
VALUES (1, 1, 'Responsável Um', '(11) 99111-1111');
INSERT INTO Responsavel (ID_Responsavel, ID_Paciente, Nome, Telefone)
VALUES (2, 2, 'Responsável Dois', '(12) 99222-2222');
INSERT INTO Responsavel (ID_Responsavel, ID_Paciente, Nome, Telefone)
VALUES (3, 3, 'Responsável Três', '(13) 99333-3333');
INSERT INTO Responsavel (ID_Responsavel, ID_Paciente, Nome, Telefone)
VALUES (4, 4, 'Responsável Quatro', '(14) 99444-4444');
INSERT INTO Responsavel (ID_Responsavel, ID_Paciente, Nome, Telefone)
VALUES (5, 5, 'Responsável Cinco', '(15) 99555-5555');


INSERT INTO Endereco (ID_Endereco, ID_Instituicao, ID_Responsavel, ID_Paciente, Logradouro, Numero, Complemento, CEP, UF)
VALUES (1, 1, 1, 1, 'Rua Um', '111', 'Apartamento 11, Bloco A', '06816-904', 'SP');
INSERT INTO Endereco (ID_Endereco, ID_Instituicao, ID_Responsavel, ID_Paciente, Logradouro, Numero, Complemento, CEP, UF)
VALUES (2, 2, 2, 2, 'Rua Dois', '222', 'Apartamento 22, Bloco B', '89026-267', 'SC');
INSERT INTO Endereco (ID_Endereco, ID_Instituicao, ID_Responsavel, ID_Paciente, Logradouro, Numero, Complemento, CEP, UF)
VALUES (3, 3, 3, 3, 'Rua Três', '333', 'Apartamento 33, Bloco C', '794-630', 'MS');
INSERT INTO Endereco (ID_Endereco, ID_Instituicao, ID_Responsavel, ID_Paciente, Logradouro, Numero, Complemento, CEP, UF)
VALUES (4, 4, 4, 4, 'Rua Quatro', '444', 'Apartamento 44, Bloco D', '74715-640', 'GO');
INSERT INTO Endereco (ID_Endereco, ID_Instituicao, ID_Responsavel, ID_Paciente, Logradouro, Numero, Complemento, CEP, UF)
VALUES (5, 5, 5, 5, 'Rua Cinco', '555', 'Apartamento 55, Bloco E', '21360-770', 'RJ');


INSERT INTO Departamento (ID_Departamento, ID_Instituicao, ID_Funcionario, Nome_Dep, Desc_Dep, Quantidade_Funcionarios)
VALUES (1, 1, 1, 'Departamento Um', 'Exemplo de descrição de departamento, número um.', 20);
INSERT INTO Departamento (ID_Departamento, ID_Instituicao, ID_Funcionario, Nome_Dep, Desc_Dep, Quantidade_Funcionarios)
VALUES (2, 2, 2, 'Departamento Dois', 'Exemplo de descrição de departamento, número dois.', 30);
INSERT INTO Departamento (ID_Departamento, ID_Instituicao, ID_Funcionario, Nome_Dep, Desc_Dep, Quantidade_Funcionarios)
VALUES (3, 3, 3, 'Departamento Três', 'Exemplo de descrição de departamento, número três.', 50);
INSERT INTO Departamento (ID_Departamento, ID_Instituicao, ID_Funcionario, Nome_Dep, Desc_Dep, Quantidade_Funcionarios)
VALUES (4, 4, 4, 'Departamento Quatro', 'Exemplo de descrição de departamento, número quatro.', 25);
INSERT INTO Departamento (ID_Departamento, ID_Instituicao, ID_Funcionario, Nome_Dep, Desc_Dep, Quantidade_Funcionarios)
VALUES (5, 5, 5, 'Departamento Cinco', 'Exemplo de descrição de departamento, número cinco.', 45);


INSERT INTO Instituicao_has_Paciente (ID_Instituicao, ID_Paciente)
VALUES (1, 1);
INSERT INTO Instituicao_has_Paciente (ID_Instituicao, ID_Paciente)
VALUES (2, 2);
INSERT INTO Instituicao_has_Paciente (ID_Instituicao, ID_Paciente)
VALUES (3, 3);
INSERT INTO Instituicao_has_Paciente (ID_Instituicao, ID_Paciente)
VALUES (4, 4);
INSERT INTO Instituicao_has_Paciente (ID_Instituicao, ID_Paciente)
VALUES (5, 5);


