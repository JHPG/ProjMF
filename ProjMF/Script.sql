-- Nome: banco1
-- User: root
-- Senha: 1234

drop table Paciente

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


		
		