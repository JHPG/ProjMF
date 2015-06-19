
-- Nome: banco1
-- User: root
-- Pass: 1234


--Drop table Paciente

CREATE TABLE Paciente(
   IDPaciente integer not null GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),   
   nome VARCHAR(50),     
   CPF VARCHAR(50),
   CPF_resp VARCHAR(50),
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
   complemento VARCHAR(450),
  PRIMARY KEY(IDPaciente)
);



--Drop table Instituicao
CREATE TABLE Instituicao (
IDInstituicao INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) , 
Nome VARCHAR (100) NOT NULL, 
Razao_Social VARCHAR (100) NOT NULL, 
CNPJ VARCHAR (14) NOT NULL, 
Infos_Complementares VARCHAR (500), 
PRIMARY KEY(IDInstituicao));





CREATE TABLE Diagnostico (
  IDDiagnostico INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  IDPaciente INTEGER NOT NULL,
  Diagnostico_Inicial VARCHAR (300) NOT NULL,
  Vulnerabilidades VARCHAR (200) NOT NULL,
  Objetivos VARCHAR (200) NOT NULL,
  Resultados VARCHAR (300) NOT NULL,
  PRIMARY KEY(IDDiagnostico),
  FOREIGN KEY(IDPaciente) REFERENCES Paciente(IDPaciente));



--selects
Select * from Instituicao;
Select * from Paciente;
select * from diagnostico;

--inserts

insert into Instituicao (nome, razao_social, CNPJ, infos_complementares) Values('ONG Teto','ONG TETO RIO DAS VELHAS','4234324','sem informacao complementar');
insert into Instituicao (nome, razao_social, CNPJ, infos_complementares) Values('Clinica Reviver','CLINICA REVIVER CORPO E MENTE LTDA','9258924','sem informacao complementar');
insert into Instituicao (nome, razao_social, CNPJ, infos_complementares) Values('Centro Paulo Silva',' CENTRO DE ED TEC PAUL0 SILVA','2261124','sem informacao complementar');

insert into paciente (nome, CPF, CPF_resp, RG, Estado_civil, Nome_mae, Nome_pai, Cor_pele, Data_nascimento, UF_origem, Logradouro, Numero, Complemento) 
Values('Jose Lima','43130360852','2423423','568953256','solteiro','Laura Lima','Marcos Lima','negro','28/03/10','sp','Rua Rio Branco','502','sem compl');
insert into paciente (nome, CPF, CPF_resp, RG, Estado_civil, Nome_mae, Nome_pai, Cor_pele, Data_nascimento, UF_origem, Logradouro, Numero, Complemento) 
Values('Maria Duarte','321123456','2423423','242349152','divorciada','Maria Bonita','Joao Duarte','branca','28/03/10','sp','Rua Lames','83','sem compl');
insert into paciente (nome, CPF, CPF_resp, RG, Estado_civil, Nome_mae, Nome_pai, Cor_pele, Data_nascimento, UF_origem, Logradouro, Numero, Complemento) 
Values('Pedro Souza','123123123','2423423','2423490','viuvo','Silvia Souza','Rodrigo Souza','branca','28/03/10','sp','Rua da Balsa','100','sem compl');

insert into diagnostico(IDPaciente, Diagnostico_Inicial, Vulnerabilidades, Objetivos, Resultados) 
Values(1,'ta bem','drogas','sair das drogas','esta usando menos');
insert into diagnostico(IDPaciente, Diagnostico_Inicial, Vulnerabilidades, Objetivos, Resultados) 
Values(1,'ta bem','drogas','sair das drogas','esta usando menos');
insert into diagnostico(IDPaciente, Diagnostico_Inicial, Vulnerabilidades, Objetivos, Resultados) 
Values(1,'ta bem','drogas','sair das drogas','esta usando menos');


