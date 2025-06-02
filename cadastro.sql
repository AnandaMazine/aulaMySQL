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

select count(*) from cursos;

select count(*) from cursos where carga > 40;

select max(totaulas) from cursos where ano = 2016; #máximo de total de aulas no ano de 2016

select min(totaulas) from cursos where ano = 2016; #mínimo de total de aulas no ano de 2016

select sum(totaulas) from cursos where ano = 2016; #soma total do total de aulas no ano de 2016

select sum(carga) from cursos where ano = 2014; #soma total da carga no ano de 2014

select avg(totaulas) from cursos where ano = '2016';

select avg(peso) from gafanhotos;

select distinct nacionalidade from gafanhotos order by nacionalidade;

#Exercício aula 12
select * from gafanhotos where sexo = 'F';

select * from gafanhotos where nascimento between '2000-01-01' and '2015/12/31' order by nascimento;

select nome from gafanhotos where sexo = 'M' and profissao = 'Programador' order by nome;

select * from gafanhotos where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

select nome, nacionalidade from gafanhotos where sexo = 'M' and nome like '%Silva%' and nacionalidade != 'Brasil' and peso < 100;

select max(altura) from gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';

select avg(peso) from gafanhotos;

select min(peso) from gafanhotos where sexo = 'F' and nacionalidade != 'Brasil' and nascimento
between '1990-01-01' and '2000-12-31';

select count(altura) from gafanhotos where sexo = 'F' and altura >1.90;

------------------------------------------------------------------------------

select distinct carga from cursos order by carga;

select carga from cursos group by carga; # agrupar por

select totaulas, count(*) from cursos group by totaulas order by totaulas; #agrupa e soma os agrupamentos

select carga, count(*) from cursos group by carga;

select carga, totaulas, count(*) from cursos where totaulas = 30 group by carga;

select ano, count(*) from cursos group by ano having count(ano) >=5 order by count(*);

select avg(carga) from cursos;

select carga, count(*) from cursos where ano > 2015
group by carga;

select carga, count(*) from cursos where ano > 2015
group by carga having (select avg(carga) from cursos); # junta o agrupamento de carga tendo como média de carga acima

#Exercício aula 13
select profissao, count(*) from gafanhotos group by profissao order by profissao;

select nascimento, sexo, count(*) from gafanhotos where nascimento > '2005-01-01' group by sexo;

select nacionalidade, count(*) from gafanhotos where nacionalidade != 'Brasil'group by nacionalidade having count(nacionalidade) >=3 order by count(nacionalidade);

select altura, count(*) from gafanhotos where peso > 100 group by altura having altura > (select avg(altura) from gafanhotos);

