
CREATE TABLE Paciente(
   idPaciente integer not null GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),   
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
  PRIMARY KEY(ID_Instituicao));

Select * from paciente;

--drop table Instituicao

CREATE TABLE Instituicao ( 
ID_Instituicao INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) , 
Nome VARCHAR (100) NOT NULL, 
Razao_Social VARCHAR (100) NOT NULL, 
CNPJ VARCHAR (14) NOT NULL, 
Infos_Complementares VARCHAR (500), 
PRIMARY KEY(ID_Instituicao));

Select * from Instituicao;

