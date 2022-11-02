create database montadora_w;

use montadora_w;

create table tipos (
    id int primary key,
    cambio enum('Manual','Automatico') NULL
);

create table cor (
    id int primary key ,
    nome varchar(12)
);

create table modelo (
    id int primary key,
    nome varchar(255),
    ano char(4)
);
/** tabela relacional
* Relaciona a tabela modelo ao tipo do carro
**/
create table modelo_tipos (
    modelo_id int not null,
    tipo_id int not null,
    FOREIGN KEY (modelo_id) REFERENCES modelo(id),
    FOREIGN KEY (tipo_id) REFERENCES tipos(id)
);
/**
* INSERTS
**/
insert into modelo_tipos (modelo_id, tipo_id)
values
    (3,1);

insert into modelo_tipos (modelo_id, tipo_id)
    value (4,2);

insert into modelo_tipos (modelo_id, tipo_id)
values (5,1);

insert into modelo_tipos (modelo_id, tipo_id)
values (2,1);