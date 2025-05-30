create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
) default charset=utf8;

alter table cursos
add column idCurso int first;

describe cursos;
alter table cursos
add primary key (idCurso);

create table if not exists teste(
id int,
nome varchar(20),
idade int
);

insert into teste values
(1, 'Pedro', 22),
(2, 'Maricota', 23),
(3, 'João', 24);

select * from teste;

drop table if exists teste;

alter table gafanhotos
change prof profissao varchar(20);

alter table gafanhotos
drop codigo;

select * from gafanhotos;
select * from cursos;

insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algortimos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Cuso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2016'),
('9', 'Cozinha Árabe', 'Aprenda a fazer kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar Polêmica e ganhar instritos', '5', '2', '2018');

select * from cursos;

update cursos
set nome = 'HTML5' where idCurso = '1';

select * from cursos;

update cursos
set nome = 'PHP', ano = '2015' where idCurso = '4';
select * from cursos;

update cursos
set nome = 'Java', carga = '40', ano = '2015' where idCurso = '5' limit 1;
select * from cursos;

delete from cursos
where idCurso = '8';

delete from cursos
where ano = '2018' limit 2;

truncate cursos;
insert into cursos values
('1', 'HTML5', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algortimos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PHP', 'Cuso de PHP para iniciantes', '40', '20', '2015'),
('5', 'Java', 'Introdução à Linguagem Java', '10', '29', '2015'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016');

describe cursos;
describe gafanhotos;
select * from cursos;
select * from gafanhotos;

delete from gafanhotos where id = 2;

select * from cursos order by nome desc;

select ano, nome, carga from cursos order by ano, nome;

select nome, carga from cursos where ano = '2016' order by nome;

select * from cursos where ano <= 2015 order by ano, nome;

select * from cursos where ano < 2015 order by ano, nome;

select * from cursos where ano > 2016 order by ano, nome;

select * from cursos where ano >= 2016 order by ano, nome;

select * from cursos where ano != 2016 order by ano, nome; # != ou <>

select nome, ano from cursos where ano between 2014 and 2016 order by ano desc, nome;

select nome, descricao, ano from cursos where ano in (2014, 2016) order by ano; #seleciona apenas os de 2014 e 2016

select * from cursos where carga >35 and totaulas <30;

select * from cursos where carga >35 or totaulas <30;

select * from cursos where nome like 'P%'; # cursos que começam com P

select * from cursos where nome like '%A'; # cursos que terminam com A

select * from cursos where nome like '%A%'; # cursos que possui a letra A em qualquer lugar

select * from cursos where nome not like '%P%'; # não tem a letra P em lugar nenhum

select * from cursos where nome like 'PH%P_'; # todos os cursos que comece com ph, termine com P, seguido de alguma coisa

UPDATE `cadastro`.`cursos` SET `nome` = 'Java' WHERE (`idcurso` = '5');

select * from gafanhotos where nome like '%Silva%';

select distinct nacionalidade from gafanhotos order by nacionalidade; # seleciona apenas os países uma vez




