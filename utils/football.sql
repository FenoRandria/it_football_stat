create database footballstat;
\c footballstat;

create table competition(
    id_compet serial not null primary key,
    nom varchar(255),
    corbeil int default 0
);

create table equipe(
    id_equipe serial not null primary key,
    nom varchar(255),
    corbeil int default 0
);

create table joueur(
    id_joueur serial not null primary key,
    nom varchar(255) not null,
    dtn date,
    bonpied int,
    paysdorigine varchar(255),
    corbeil int default 0
);

create table post(
    id_post serial not null primary key,
    nom varchar(255) not null,
    corbeil int default 0
);

create table joueurEquipe (
    id_jeq serial not null primary key,
    id_joueur int not null,
    id_equipe int not null,
    dateEntree date,
    id_post int,
    corbeil int default 0
);

create table match(
    id_match serial not null primary key,
    nom varchar(255) not null,
    dtn date,
    corbeil int default 0
);




select * from etudiant where corbeil != 1;
select * from etudiant where corbeil != 1 and id = ?;
update etudiant set corbeil = 1 where id = ?;