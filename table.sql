create database all_majors_v3;
use all_majors_v3;
create table patente (
	id int(8) not null auto_increment,
    nome varchar(50) not null,
	patente enum(
    'Prata 1', 
    'Prata 2', 
    'Prata 3', 
    'Prata 4', 
    'Prata de Elite', 
    'Prata de Elite Mestre',
    'Ouro 1',
    'Ouro 2',
    'Ouro 3',
	'Ouro 4',
    'Mestre Guardiao 1',
    'Mestre Guardiao 2',
    'Mestre Guardiao Elite',
    'Distinto Mestre Guardiao',
    'Aguia Lendaria',
    'Aguia Lendaria Mestre',
    'Mestre Supremo de Primeira Classe',
    'Global Elite'
    ),
    idade int(2) not null,
    sexo enum('M', 'F'),
    primary key (id)
);