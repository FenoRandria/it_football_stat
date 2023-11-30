create database footballstat;
\c footballstat;

create table competition(
    id_compet serial not null primary key,
    nom varchar(255),
    corbeil int default 0
);
-- Compétitions
INSERT INTO competition (nom)
VALUES
  ('Ligue 1'),
  ('La Liga'),
  ('Bundesliga'),
  ('Premier League');

-- ----------------------------------------------------------------------------------------------------------------
-- Compétitions
INSERT INTO competition (nom)
VALUES
  ('Ligue 1'),
  ('La Liga'),
  ('Bundesliga'),
  ('Premier League');

-- ----------------------------------------------------------------------------------------------------------------
-- Compétitions
INSERT INTO competition (nom)
VALUES
  ('Ligue 1'),
  ('La Liga'),
  ('Bundesliga'),
  ('Premier League');

-- ----------------------------------------------------------------------------------------------------------------
create table equipe(
    id_equipe serial not null primary key,
    nom varchar(255),
    corbeil int default 0
);

-- Pour la Ligue 1
INSERT INTO equipe (nom) VALUES
  ('Paris Saint-Germain'),
  ('Olympique de Marseille'),
  ('AS Monaco');

-- Pour La Liga
INSERT INTO equipe (nom) VALUES
  ('Real Madrid'),
  ('Barcelona'),
  ('Atletico Madrid');

-- Pour la Bundesliga
INSERT INTO equipe (nom) VALUES
  ('Bayern Munich'),
  ('Borussia Dortmund'),
  ('RB Leipzig');

-- Pour la Premier League
INSERT INTO equipe (nom) VALUES
  ('Manchester City'),
  ('Manchester United'),
  ('Liverpool FC');

-- ----------------------------------------------------------------------------------------------------------------


-- Pour la Ligue 1
INSERT INTO equipe (nom) VALUES
  ('Paris Saint-Germain'),
  ('Olympique de Marseille'),
  ('AS Monaco');

-- Pour La Liga
INSERT INTO equipe (nom) VALUES
  ('Real Madrid'),
  ('Barcelona'),
  ('Atletico Madrid');

-- Pour la Bundesliga
INSERT INTO equipe (nom) VALUES
  ('Bayern Munich'),
  ('Borussia Dortmund'),
  ('RB Leipzig');

-- Pour la Premier League
INSERT INTO equipe (nom) VALUES
  ('Manchester City'),
  ('Manchester United'),
  ('Liverpool FC');

-- ----------------------------------------------------------------------------------------------------------------


create table joueur(
    id_joueur serial not null primary key,
    nom varchar(255) not null,
    dtn date,
    bonpied int, -- pied gauche 0 et pied droit 1
    bonpied int, -- pied gauche 0 et pied droit 1
    paysdorigine varchar(255),
    corbeil int default 0
);

-- Pour les joueurs du Paris Saint-Germain la Ligue 1
INSERT INTO joueur (nom, dtn, bonpied, paysdorigine)
VALUES
  ('Neymar Jr.', '1992-02-05', 1, 'Brésil'), -- Attaquant
  ('Marquinhos', '1994-05-14', 0, 'Brésil'), -- Défenseur
  ('Kylian Mbappé', '1998-12-20', 1, 'France'), -- Attaquant
  ('Achraf Hakimi', '1998-11-04', 1, 'Maroc'), -- Défenseur

-- Pour les joueurs de l'Olympique de Marseille la Ligue 1
  ('Dimitri Payet', '1987-03-29', 1, 'France'), -- Attaquant
  ('Alvaro Gonzalez', '1990-01-08', 0, 'Espagne'), -- Défenseur
  ('Arkadiusz Milik', '1994-02-28', 1, 'Pologne'), -- Attaquant
  ('Boubacar Kamara', '1999-11-23', 0, 'France'), -- Défenseur

-- Pour les joueurs de l'AS Monaco la Ligue 1
  ('Wissam Ben Yedder', '1990-08-12', 1, 'France'), -- Attaquant
  ('Guillermo Maripan', '1994-05-06', 0, 'Chili'), -- Défenseur
  ('Aleksandr Golovin', '1996-05-30', 1, 'Russie'), -- Milieu de terrain
  ('Caio Henrique', '1998-03-31', 0, 'Brésil'), -- Défenseur

-- Pour les joueurs du Real Madrid la liga
  ('Karim Benzema', '1987-12-19', 1, 'France'), -- Attaquant
  ('Sergio Ramos', '1986-03-30', 0, 'Espagne'), -- Défenseur
  ('Luka Modric', '1985-09-09', 1, 'Croatie'), -- Milieu de terrain
  ('Ferland Mendy', '1995-06-08', 0, 'France'), -- Défenseur

-- Pour les joueurs du FC Barcelona la liga
  ('Lionel Messi', '1987-06-24', 1, 'Argentine'), -- Attaquant
  ('Gerard Piqué', '1987-02-02', 0, 'Espagne'), -- Défenseur
  ('Frenkie de Jong', '1997-05-12', 1, 'Pays-Bas'), -- Milieu de terrain
  ('Jordi Alba', '1989-03-21', 0, 'Espagne'), -- Défenseur

-- Pour les joueurs de l'Atletico de Madrid la liga
  ('João Félix', '1999-11-10', 1, 'Portugal'), -- Attaquant
  ('Stefan Savić', '1991-01-08', 0, 'Monténégro'), -- Défenseur
  ('Koke', '1992-01-08', 1, 'Espagne'), -- Milieu de terrain
  ('Renan Lodi', '1998-04-08', 0, 'Brésil'), -- Défenseur

-- Pour les joueurs du Bayern Munich en Bundesliga
  ('Robert Lewandowski', '1988-08-21', 1, 'Pologne'), -- Attaquant
  ('Joshua Kimmich', '1995-02-08', 1, 'Allemagne'), -- Milieu/Défenseur
  ('Leroy Sané', '1996-01-11', 1, 'Allemagne'), -- Attaquant
  ('Alphonso Davies', '2000-11-02', 1, 'Canada'), -- Défenseur

-- Pour les joueurs du Borussia Dortmund Bundesliga
  ('Erling Haaland', '2000-07-21', 1, 'Norvège'), -- Attaquant
  ('Jadon Sancho', '2000-03-25', 1, 'Angleterre'), -- Milieu de terrain / Attaquant
  ('Mats Hummels', '1988-12-16', 1, 'Allemagne'), -- Défenseur
  ('Achraf Hakimi', '1998-11-04', 1, 'Maroc'), -- Défenseur

-- Pour les joueurs du RB Leipzig Bundesliga
  ('Timo Werner', '1996-03-06', 1, 'Allemagne'), -- Attaquant
  ('Dayot Upamecano', '1998-10-27', 1, 'France'), -- Défenseur
  ('Marcel Sabitzer', '1994-03-17', 0, 'Autriche'), -- Milieu de terrain / Attaquant
  ('Nordi Mukiele', '1998-11-01', 1, 'France'), -- Défenseur

-- Pour les joueurs de Manchester City Premier ligue
  ('Kevin De Bruyne', '1991-06-28', 0, 'Belgique'), -- Milieu de terrain / Attaquant
  ('Ruben Dias', '1997-05-14', 1, 'Portugal'), -- Défenseur
  ('Phil Foden', '2000-05-28', 0, 'Angleterre'), -- Milieu de terrain / Attaquant
  ('João Cancelo', '1994-05-27', 1, 'Portugal'), -- Défenseur

-- Pour les joueurs de Manchester United Premier ligue
  ('Bruno Fernandes', '1994-09-08', 0, 'Portugal'), -- Milieu de terrain / Attaquant
  ('Harry Maguire', '1993-03-05', 1, 'Angleterre'), -- Défenseur
  ('Marcus Rashford', '1997-10-31', 0, 'Angleterre'), -- Attaquant
  ('Aaron Wan-Bissaka', '1997-11-26', 1, 'Angleterre'), -- Défenseur

-- Pour les joueurs de Liverpool Premier ligue
  ('Virgil van Dijk', '1991-07-08', 1, 'Pays-Bas'), -- Défenseur
  ('Mohamed Salah', '1992-06-15', 0, 'Égypte'), -- Attaquant
  ('Andrew Robertson', '1994-03-11', 1, 'Écosse'), -- Défenseur
  ('Sadio Mané', '1992-04-10', 0, 'Sénégal'); -- Attaquant

-- ----------------------------------------------------------------------------------------------------------------

-- Pour les joueurs du Paris Saint-Germain la Ligue 1
INSERT INTO joueur (nom, dtn, bonpied, paysdorigine)
VALUES
  ('Neymar Jr.', '1992-02-05', 1, 'Brésil'), -- Attaquant
  ('Marquinhos', '1994-05-14', 0, 'Brésil'), -- Défenseur
  ('Kylian Mbappé', '1998-12-20', 1, 'France'), -- Attaquant
  ('Achraf Hakimi', '1998-11-04', 1, 'Maroc'), -- Défenseur

-- Pour les joueurs de l'Olympique de Marseille la Ligue 1
  ('Dimitri Payet', '1987-03-29', 1, 'France'), -- Attaquant
  ('Alvaro Gonzalez', '1990-01-08', 0, 'Espagne'), -- Défenseur
  ('Arkadiusz Milik', '1994-02-28', 1, 'Pologne'), -- Attaquant
  ('Boubacar Kamara', '1999-11-23', 0, 'France'), -- Défenseur

-- Pour les joueurs de l'AS Monaco la Ligue 1
  ('Wissam Ben Yedder', '1990-08-12', 1, 'France'), -- Attaquant
  ('Guillermo Maripan', '1994-05-06', 0, 'Chili'), -- Défenseur
  ('Aleksandr Golovin', '1996-05-30', 1, 'Russie'), -- Milieu de terrain
  ('Caio Henrique', '1998-03-31', 0, 'Brésil'), -- Défenseur

-- Pour les joueurs du Real Madrid la liga
  ('Karim Benzema', '1987-12-19', 1, 'France'), -- Attaquant
  ('Sergio Ramos', '1986-03-30', 0, 'Espagne'), -- Défenseur
  ('Luka Modric', '1985-09-09', 1, 'Croatie'), -- Milieu de terrain
  ('Ferland Mendy', '1995-06-08', 0, 'France'), -- Défenseur

-- Pour les joueurs du FC Barcelona la liga
  ('Lionel Messi', '1987-06-24', 1, 'Argentine'), -- Attaquant
  ('Gerard Piqué', '1987-02-02', 0, 'Espagne'), -- Défenseur
  ('Frenkie de Jong', '1997-05-12', 1, 'Pays-Bas'), -- Milieu de terrain
  ('Jordi Alba', '1989-03-21', 0, 'Espagne'), -- Défenseur

-- Pour les joueurs de l'Atletico de Madrid la liga
  ('João Félix', '1999-11-10', 1, 'Portugal'), -- Attaquant
  ('Stefan Savić', '1991-01-08', 0, 'Monténégro'), -- Défenseur
  ('Koke', '1992-01-08', 1, 'Espagne'), -- Milieu de terrain
  ('Renan Lodi', '1998-04-08', 0, 'Brésil'), -- Défenseur

-- Pour les joueurs du Bayern Munich en Bundesliga
  ('Robert Lewandowski', '1988-08-21', 1, 'Pologne'), -- Attaquant
  ('Joshua Kimmich', '1995-02-08', 1, 'Allemagne'), -- Milieu/Défenseur
  ('Leroy Sané', '1996-01-11', 1, 'Allemagne'), -- Attaquant
  ('Alphonso Davies', '2000-11-02', 1, 'Canada'), -- Défenseur

-- Pour les joueurs du Borussia Dortmund Bundesliga
  ('Erling Haaland', '2000-07-21', 1, 'Norvège'), -- Attaquant
  ('Jadon Sancho', '2000-03-25', 1, 'Angleterre'), -- Milieu de terrain / Attaquant
  ('Mats Hummels', '1988-12-16', 1, 'Allemagne'), -- Défenseur
  ('Achraf Hakimi', '1998-11-04', 1, 'Maroc'), -- Défenseur

-- Pour les joueurs du RB Leipzig Bundesliga
  ('Timo Werner', '1996-03-06', 1, 'Allemagne'), -- Attaquant
  ('Dayot Upamecano', '1998-10-27', 1, 'France'), -- Défenseur
  ('Marcel Sabitzer', '1994-03-17', 0, 'Autriche'), -- Milieu de terrain / Attaquant
  ('Nordi Mukiele', '1998-11-01', 1, 'France'), -- Défenseur

-- Pour les joueurs de Manchester City Premier ligue
  ('Kevin De Bruyne', '1991-06-28', 0, 'Belgique'), -- Milieu de terrain / Attaquant
  ('Ruben Dias', '1997-05-14', 1, 'Portugal'), -- Défenseur
  ('Phil Foden', '2000-05-28', 0, 'Angleterre'), -- Milieu de terrain / Attaquant
  ('João Cancelo', '1994-05-27', 1, 'Portugal'), -- Défenseur

-- Pour les joueurs de Manchester United Premier ligue
  ('Bruno Fernandes', '1994-09-08', 0, 'Portugal'), -- Milieu de terrain / Attaquant
  ('Harry Maguire', '1993-03-05', 1, 'Angleterre'), -- Défenseur
  ('Marcus Rashford', '1997-10-31', 0, 'Angleterre'), -- Attaquant
  ('Aaron Wan-Bissaka', '1997-11-26', 1, 'Angleterre'), -- Défenseur

-- Pour les joueurs de Liverpool Premier ligue
  ('Virgil van Dijk', '1991-07-08', 1, 'Pays-Bas'), -- Défenseur
  ('Mohamed Salah', '1992-06-15', 0, 'Égypte'), -- Attaquant
  ('Andrew Robertson', '1994-03-11', 1, 'Écosse'), -- Défenseur
  ('Sadio Mané', '1992-04-10', 0, 'Sénégal'); -- Attaquant

-- ----------------------------------------------------------------------------------------------------------------

create table post(
    id_post serial not null primary key,
    nom varchar(255) not null,
    corbeil int default 0
);

INSERT INTO post (nom)
VALUES
  ('Gardien de but'),
  ('Défenseur'),
  ('Milieu'),
  ('Attaquant');
-- ----------------------------------------------------------------------------------------------------------------
CREATE TABLE joueurEquipe (
    id_jeq SERIAL NOT NULL PRIMARY KEY,
    id_joueur INT NOT NULL,
    id_equipe INT NOT NULL,
    dateEntree DATE,
    id_post INT,
    corbeil INT DEFAULT 0,
    FOREIGN KEY (id_joueur) REFERENCES joueur(id_joueur),
    FOREIGN KEY (id_equipe) REFERENCES equipe(id_equipe),
    FOREIGN KEY (id_post) REFERENCES post(id_post)
);


INSERT INTO joueurEquipe (id_joueur, id_equipe, dateEntree, id_post)
VALUES
(1,1,'2020-10-12',4),
(2,1,'2020-10-12',2),
(3,1,'2020-10-12',4),
(4,1,'2020-10-12',2),

(5,2,'2020-10-12',4),
(6,2,'2020-10-12',2),
(7,2,'2020-10-12',4),
(8,2,'2020-10-12',2),

(9,3,'2020-10-12',4),
(10,3,'2020-10-12',2),
(11,3,'2020-10-12',4),
(12,3,'2020-10-12',2),

(13,4,'2020-10-12',4),
(14,4,'2020-10-12',2),
(15,4,'2020-10-12',4),
(16,4,'2020-10-12',2),

(17,5,'2020-10-12',4),
(18,5,'2020-10-12',2),
(19,5,'2020-10-12',4),
(20,5,'2020-10-12',2),

(21,6,'2020-10-12',4),
(22,6,'2020-10-12',2),
(23,6,'2020-10-12',4),
(24,6,'2020-10-12',2),

(25,7,'2020-10-12',4),
(26,7,'2020-10-12',2),
(27,7,'2020-10-12',4),
(28,7,'2020-10-12',2),

(29,8,'2020-10-12',4),
(30,8,'2020-10-12',2),
(31,8,'2020-10-12',4),
(32,8,'2020-10-12',2),

(33,9,'2020-10-12',4),
(34,9,'2020-10-12',2),
(35,9,'2020-10-12',4),
(36,9,'2020-10-12',2),

(37,10,'2020-10-12',4),
(38,10,'2020-10-12',2),
(39,10,'2020-10-12',4),
(40,10,'2020-10-12',2),

(41,11,'2020-10-12',4),
(42,11,'2020-10-12',2),
(43,11,'2020-10-12',4),
(44,11,'2020-10-12',2),

(45,12,'2020-10-12',4),
(46,12,'2020-10-12',2),
(47,12,'2020-10-12',4),
(48,12,'2020-10-12',2);
-- ----------------------------------------------------------------------------------------------------------------

CREATE TABLE match (
    id_match SERIAL NOT NULL PRIMARY KEY,
    date_match DATE,
    id_compet INT NOT NULL,
    id_equipe1 INT NOT NULL,
    id_equipe2 INT NOT NULL,
    terrain VARCHAR(255),
    corbeil INT DEFAULT 0,
    FOREIGN KEY (id_compet) REFERENCES competition(id_compet),
    FOREIGN KEY (id_equipe1) REFERENCES equipe(id_equipe),
    FOREIGN KEY (id_equipe2) REFERENCES equipe(id_equipe)
);


INSERT INTO match (date_match, id_compet, id_equipe1, id_equipe2, terrain)
VALUES
    -- Compétition 1
    ('2023-12-01', 1, 1, 2, 'Stadium A'),
    ('2023-12-02', 1, 2, 3, 'Stadium B'),
    ('2023-12-03', 1, 1, 3, 'Stadium C'),
    
    -- Compétition 2
    ('2023-12-07', 2, 4, 5, 'Stadium G'),
    ('2023-12-08', 2, 5, 6, 'Stadium H'),
    ('2023-12-09', 2, 4, 6, 'Stadium I'),
    
    -- Compétition 3
    ('2023-12-11', 3, 7, 9, 'Stadium K'),
    ('2023-12-12', 3, 7, 8, 'Stadium L'),
    ('2023-12-13', 3, 8, 9, 'Stadium M'),
    
    -- Compétition 4
    ('2023-12-15', 4, 10, 12, 'Stadium O'),
    ('2023-12-16', 4, 11, 10, 'Stadium P'),
    ('2023-12-17', 4, 12, 11, 'Stadium Q');






-- ----------------------------------------------------------------------------------------------------------------

create table action(
    id_action serial not null primary key,
    partie int, -- general 10 - attaquant 20 - defense 30
    action varchar(255),
    corbeil int default 0
);

-- Exemple pour remplir la table action
INSERT INTO action (partie, action) VALUES
  (10, 'Buts'),
  (10, 'Tirs'),
  (10, 'Jaune'),
  (10, 'Rouge'),
  (10, 'Possession%'),
  (10, 'PassesRéussies%'),
  (10, 'AériensGagnés'),
  (20, 'Tirs'),
  (20, 'Tirs CA'),
  (20, 'Dribbles'),
  (20, 'Fautes subies'),
  (30, 'Tirs'),
  (30, 'Tacles'),
  (30, 'Interceptions'),
  (30, 'Fautes'),
  (30, 'Hors-jeux');

	-- Tirs = 30	Tacles = 30	Interceptions = 30	Fautes = 30	Hors-jeux = 30
    -- Tirs = 20	Tirs CA = 20	Dribbles = 20	Fautes subies = 20
    -- Buts = 10	Tirs = 10 	Discipline = 10	Possession% = 10 PassesRéussies% = 10 AériensGagnés = 10
-- ----------------------------------------------------------------------------------------------------------------

CREATE TABLE pointParMatch (
    id_point serial NOT NULL PRIMARY KEY,
    id_match int,
    id_action int,
    pointEquipe1 int,
    pointEquipe2 int,
    corbeil int DEFAULT 0,
    FOREIGN KEY (id_match) REFERENCES match(id_match),
    FOREIGN KEY (id_action) REFERENCES action(id_action)
);


-- Insérer des données dans la table pointParMatch
-- Insérer des données dans la table pointParMatch avec des valeurs aléatoires
INSERT INTO pointParMatch (id_match, id_action, pointEquipe1, pointEquipe2)
VALUES
    -- Match 1
    (1, 1, floor(random() * 4), floor(random() * 4)),
    (1, 2, floor(random() * 4), floor(random() * 4)),
    (1, 3, floor(random() * 4), floor(random() * 4)),
    (1, 4, floor(random() * 4), floor(random() * 4)),
    (1, 5, floor(random() * 100), floor(random() * 100)),
    (1, 6, floor(random() * 100), floor(random() * 100)),
    (1, 7, floor(random() * 4), floor(random() * 4)),
    (1, 8, floor(random() * 4), floor(random() * 4)),
    (1, 9, floor(random() * 4), floor(random() * 4)),
    (1, 10, floor(random() * 4), floor(random() * 4)),
    (1, 11, floor(random() * 4), floor(random() * 4)),
    (1, 12, floor(random() * 4), floor(random() * 4)),
    (1, 13, floor(random() * 4), floor(random() * 4)),
    (1, 14, floor(random() * 4), floor(random() * 4)),
    (1, 15, floor(random() * 4), floor(random() * 4)),
    (1, 16, floor(random() * 4), floor(random() * 4)),


    -- Match 2
    (2, 1, floor(random() * 4), floor(random() * 4)),
    (2, 2, floor(random() * 4), floor(random() * 4)),
    (2, 3, floor(random() * 4), floor(random() * 4)),
    (2, 4, floor(random() * 4), floor(random() * 4)),
    (2, 5, floor(random() * 100), floor(random() * 100)),
    (2, 6, floor(random() * 100), floor(random() * 100)),
    (2, 7, floor(random() * 4), floor(random() * 4)),
    (2, 8, floor(random() * 4), floor(random() * 4)),
    (2, 9, floor(random() * 4), floor(random() * 4)),
    (2, 10, floor(random() * 4), floor(random() * 4)),
    (2, 11, floor(random() * 4), floor(random() * 4)),
    (2, 12, floor(random() * 4), floor(random() * 4)),
    (2, 13, floor(random() * 4), floor(random() * 4)),
    (2, 14, floor(random() * 4), floor(random() * 4)),
    (2, 15, floor(random() * 4), floor(random() * 4)),
    (2, 16, floor(random() * 4), floor(random() * 4)),

    -- Match 3
    (3, 1, floor(random() * 4), floor(random() * 4)),
    (3, 2, floor(random() * 4), floor(random() * 4)),
    (3, 3, floor(random() * 4), floor(random() * 4)),
    (3, 4, floor(random() * 4), floor(random() * 4)),
    (3, 5, floor(random() * 100), floor(random() * 100)),
    (3, 6, floor(random() * 100), floor(random() * 100)),
    (3, 7, floor(random() * 4), floor(random() * 4)),
    (3, 8, floor(random() * 4), floor(random() * 4)),
    (3, 9, floor(random() * 4), floor(random() * 4)),
    (3, 10, floor(random() * 4), floor(random() * 4)),
    (3, 11, floor(random() * 4), floor(random() * 4)),
    (3, 12, floor(random() * 4), floor(random() * 4)),
    (3, 13, floor(random() * 4), floor(random() * 4)),
    (3, 14, floor(random() * 4), floor(random() * 4)),
    (3, 15, floor(random() * 4), floor(random() * 4)),
    (3, 16, floor(random() * 4), floor(random() * 4)),


    -- Match 4
    (4, 1, floor(random() * 4), floor(random() * 4)),
    (4, 2, floor(random() * 4), floor(random() * 4)),
    (4, 3, floor(random() * 4), floor(random() * 4)),
    (4, 4, floor(random() * 4), floor(random() * 4)),
    (4, 5, floor(random() * 100), floor(random() * 100)),
    (4, 6, floor(random() * 100), floor(random() * 100)),
    (4, 7, floor(random() * 4), floor(random() * 4)),
    (4, 8, floor(random() * 4), floor(random() * 4)),
    (4, 9, floor(random() * 4), floor(random() * 4)),
    (4, 10, floor(random() * 4), floor(random() * 4)),
    (4, 11, floor(random() * 4), floor(random() * 4)),
    (4, 12, floor(random() * 4), floor(random() * 4)),
    (4, 13, floor(random() * 4), floor(random() * 4)),
    (4, 14, floor(random() * 4), floor(random() * 4)),
    (4, 15, floor(random() * 4), floor(random() * 4)),
    (4, 16, floor(random() * 4), floor(random() * 4)),


    -- Match 5    
    (5, 1, floor(random() * 4), floor(random() * 4)),
    (5, 2, floor(random() * 4), floor(random() * 4)),
    (5, 3, floor(random() * 4), floor(random() * 4)),
    (5, 4, floor(random() * 4), floor(random() * 4)),
    (5, 5, floor(random() * 100), floor(random() * 100)),
    (5, 6, floor(random() * 100), floor(random() * 100)),
    (5, 7, floor(random() * 4), floor(random() * 4)),
    (5, 8, floor(random() * 4), floor(random() * 4)),
    (5, 9, floor(random() * 4), floor(random() * 4)),
    (5, 10, floor(random() * 4), floor(random() * 4)),
    (5, 11, floor(random() * 4), floor(random() * 4)),
    (5, 12, floor(random() * 4), floor(random() * 4)),
    (5, 13, floor(random() * 4), floor(random() * 4)),
    (5, 14, floor(random() * 4), floor(random() * 4)),
    (5, 15, floor(random() * 4), floor(random() * 4)),
    (5, 16, floor(random() * 4), floor(random() * 4)),

-- Match 6
    (6, 1, floor(random() * 4), floor(random() * 4)),
    (6, 2, floor(random() * 4), floor(random() * 4)),
    (6, 3, floor(random() * 4), floor(random() * 4)),
    (6, 4, floor(random() * 4), floor(random() * 4)),
    (6, 5, floor(random() * 100), floor(random() * 100)),
    (6, 6, floor(random() * 100), floor(random() * 100)),
    (6, 7, floor(random() * 4), floor(random() * 4)),
    (6, 8, floor(random() * 4), floor(random() * 4)),
    (6, 9, floor(random() * 4), floor(random() * 4)),
    (6, 10, floor(random() * 4), floor(random() * 4)),
    (6, 11, floor(random() * 4), floor(random() * 4)),
    (6, 12, floor(random() * 4), floor(random() * 4)),
    (6, 13, floor(random() * 4), floor(random() * 4)),
    (6, 14, floor(random() * 4), floor(random() * 4)),
    (6, 15, floor(random() * 4), floor(random() * 4)),
    (6, 16, floor(random() * 4), floor(random() * 4)),


    -- Match 7
    (7, 1, floor(random() * 4), floor(random() * 4)),
    (7, 2, floor(random() * 4), floor(random() * 4)),
    (7, 3, floor(random() * 4), floor(random() * 4)),
    (7, 4, floor(random() * 4), floor(random() * 4)),
    (7, 5, floor(random() * 100), floor(random() * 100)),
    (7, 6, floor(random() * 100), floor(random() * 100)),
    (7, 7, floor(random() * 4), floor(random() * 4)),
    (7, 8, floor(random() * 4), floor(random() * 4)),
    (7, 9, floor(random() * 4), floor(random() * 4)),
    (7, 10, floor(random() * 4), floor(random() * 4)),
    (7, 11, floor(random() * 4), floor(random() * 4)),
    (7, 12, floor(random() * 4), floor(random() * 4)),
    (7, 13, floor(random() * 4), floor(random() * 4)),
    (7, 14, floor(random() * 4), floor(random() * 4)),
    (7, 15, floor(random() * 4), floor(random() * 4)),
    (7, 16, floor(random() * 4), floor(random() * 4)),


    -- Match 8
    (8, 1, floor(random() * 4), floor(random() * 4)),
    (8, 2, floor(random() * 4), floor(random() * 4)),
    (8, 3, floor(random() * 4), floor(random() * 4)),
    (8, 4, floor(random() * 4), floor(random() * 4)),
    (8, 5, floor(random() * 100), floor(random() * 100)),
    (8, 6, floor(random() * 100), floor(random() * 100)),
    (8, 7, floor(random() * 4), floor(random() * 4)),
    (8, 8, floor(random() * 4), floor(random() * 4)),
    (8, 9, floor(random() * 4), floor(random() * 4)),
    (8, 10, floor(random() * 4), floor(random() * 4)),
    (8, 11, floor(random() * 4), floor(random() * 4)),
    (8, 12, floor(random() * 4), floor(random() * 4)),
    (8, 13, floor(random() * 4), floor(random() * 4)),
    (8, 14, floor(random() * 4), floor(random() * 4)),
    (8, 15, floor(random() * 4), floor(random() * 4)),
    (8, 16, floor(random() * 4), floor(random() * 4)),


    -- Match 9
    (9, 1, floor(random() * 4), floor(random() * 4)),
    (9, 2, floor(random() * 4), floor(random() * 4)),
    (9, 3, floor(random() * 4), floor(random() * 4)),
    (9, 4, floor(random() * 4), floor(random() * 4)),
    (9, 5, floor(random() * 100), floor(random() * 100)),
    (9, 6, floor(random() * 100), floor(random() * 100)),
    (9, 7, floor(random() * 4), floor(random() * 4)),
    (9, 8, floor(random() * 4), floor(random() * 4)),
    (9, 9, floor(random() * 4), floor(random() * 4)),
    (9, 10, floor(random() * 4), floor(random() * 4)),
    (9, 11, floor(random() * 4), floor(random() * 4)),
    (9, 12, floor(random() * 4), floor(random() * 4)),
    (9, 13, floor(random() * 4), floor(random() * 4)),
    (9, 14, floor(random() * 4), floor(random() * 4)),
    (9, 15, floor(random() * 4), floor(random() * 4)),
    (9, 16, floor(random() * 4), floor(random() * 4)),

    -- Match 10
    (10, 1, floor(random() * 4), floor(random() * 4)),
    (10, 2, floor(random() * 4), floor(random() * 4)),
    (10, 3, floor(random() * 4), floor(random() * 4)),
    (10, 4, floor(random() * 4), floor(random() * 4)),
    (10, 5, floor(random() * 100), floor(random() * 100)),
    (10, 6, floor(random() * 100), floor(random() * 100)),
    (10, 7, floor(random() * 4), floor(random() * 4)),
    (10, 8, floor(random() * 4), floor(random() * 4)),
    (10, 9, floor(random() * 4), floor(random() * 4)),
    (10, 10, floor(random() * 4), floor(random() * 4)),
    (10, 11, floor(random() * 4), floor(random() * 4)),
    (10, 12, floor(random() * 4), floor(random() * 4)),
    (10, 13, floor(random() * 4), floor(random() * 4)),
    (10, 14, floor(random() * 4), floor(random() * 4)),
    (10, 15, floor(random() * 4), floor(random() * 4)),
    (10, 16, floor(random() * 4), floor(random() * 4)),

    -- Match 11
    (11, 1, floor(random() * 4), floor(random() * 4)),
    (11, 2, floor(random() * 4), floor(random() * 4)),
    (11, 3, floor(random() * 4), floor(random() * 4)),
    (11, 4, floor(random() * 4), floor(random() * 4)),
    (11, 5, floor(random() * 100), floor(random() * 100)),
    (11, 6, floor(random() * 100), floor(random() * 100)),
    (11, 7, floor(random() * 4), floor(random() * 4)),
    (11, 8, floor(random() * 4), floor(random() * 4)),
    (11, 9, floor(random() * 4), floor(random() * 4)),
    (11, 10, floor(random() * 4), floor(random() * 4)),
    (11, 11, floor(random() * 4), floor(random() * 4)),
    (11, 12, floor(random() * 4), floor(random() * 4)),
    (11, 13, floor(random() * 4), floor(random() * 4)),
    (11, 14, floor(random() * 4), floor(random() * 4)),
    (11, 15, floor(random() * 4), floor(random() * 4)),
    (11, 16, floor(random() * 4), floor(random() * 4)),

    -- Match 12
    (12, 1, floor(random() * 4), floor(random() * 4)),
    (12, 2, floor(random() * 4), floor(random() * 4)),
    (12, 3, floor(random() * 4), floor(random() * 4)),
    (12, 4, floor(random() * 4), floor(random() * 4)),
    (12, 5, floor(random() * 100), floor(random() * 100)),
    (12, 6, floor(random() * 100), floor(random() * 100)),
    (12, 7, floor(random() * 4), floor(random() * 4)),
    (12, 8, floor(random() * 4), floor(random() * 4)),
    (12, 9, floor(random() * 4), floor(random() * 4)),
    (12, 10, floor(random() * 4), floor(random() * 4)),
    (12, 11, floor(random() * 4), floor(random() * 4)),
    (12, 12, floor(random() * 4), floor(random() * 4)),
    (12, 13, floor(random() * 4), floor(random() * 4)),
    (12, 14, floor(random() * 4), floor(random() * 4)),
    (12, 15, floor(random() * 4), floor(random() * 4)),
    (12, 16, floor(random() * 4), floor(random() * 4));

-- ----------------------------------------------------------------------------------------------------------------

-- select equipe, Compétition,	Buts,Tirs pm,jaune,rouge,Possession%,PassesRéussies%,AériensGagnés,	Note from 

-- requete pour statistique

CREATE view v_competitionmatchequipe as 
SELECT
    match.id_match,
    match.date_match,
    competition.id_compet AS competition_id,
    competition.nom AS competition_nom,
    equipe1.id_equipe AS equipe1_id,
    equipe1.nom AS equipe1_nom,
    equipe2.id_equipe AS equipe2_id,
    equipe2.nom AS equipe2_nom,
    match.terrain
FROM
    match
JOIN
    competition ON match.id_compet = competition.id_compet
JOIN
    equipe AS equipe1 ON match.id_equipe1 = equipe1.id_equipe
JOIN
    equipe AS equipe2 ON match.id_equipe2 = equipe2.id_equipe;
-- -----------------------------------------------------------------------------------------

create view v_actionpointparmatch as
SELECT
    pointParMatch.id_match,
    action.partie,
    action.id_action,
    action.action,
    pointParMatch.pointEquipe1,
    pointParMatch.pointEquipe2
FROM
    pointParMatch
JOIN
    action ON pointParMatch.id_action = action.id_action;

-- ------------------------------------------------------------------------------------------
CREATE view v_statistique as 
SELECT 
    v_competitionmatchequipe.id_match,
    v_competitionmatchequipe.date_match,
    v_competitionmatchequipe.competition_id,
    v_competitionmatchequipe.competition_nom,
    v_competitionmatchequipe.equipe1_id,
    v_competitionmatchequipe.equipe1_nom,
    v_competitionmatchequipe.equipe2_id,
    v_competitionmatchequipe.equipe2_nom,
    v_competitionmatchequipe.terrain,
    v_actionpointparmatch.partie,
    v_actionpointparmatch.id_action,
    v_actionpointparmatch.action,
    v_actionpointparmatch.pointEquipe1,
    v_actionpointparmatch.pointEquipe2
FROM 
  v_competitionmatchequipe
JOIN 
  v_actionpointparmatch ON v_competitionmatchequipe.id_match = v_actionpointparmatch.id_match;

-- statistique general
-- requete necessaire pour grouper par equipe
SELECT
  equipe,
  COUNT(id_match) AS nombre_de_matches
FROM (
  SELECT equipe1_nom AS equipe, id_match FROM v_statistique GROUP BY id_match,equipe1_nom
  UNION ALL
  SELECT equipe2_nom AS equipe, id_match FROM v_statistique GROUP BY id_match,equipe2_nom
) AS matches_combined
GROUP BY equipe;

SELECT
  equipe,
  sum(point) point,
  count(id_match) nombre_de_matches,
  partie,
  action,
  competition_nom
FROM (
  SELECT equipe1_nom AS equipe, id_match,partie,action,sum(pointEquipe1) as point,competition_nom FROM v_statistique GROUP BY id_match,equipe1_nom,partie,action,competition_nom
  UNION ALL
  SELECT equipe2_nom AS equipe, id_match,partie,action,sum(pointEquipe2) as point,competition_nom FROM v_statistique GROUP BY id_match,equipe2_nom,partie,action,competition_nom
) AS matches_combined
where partie = 10
GROUP BY equipe,partie,action,competition_nom order by sum(point) desc;

-- ---------------------------------------------------------------


SELECT
  equipe,
  sum(points) AS points,
  count(id_match) AS nombre_de_matches,
  partie,
  sum(CASE WHEN action = 'Buts' THEN points END) AS buts,
  sum(CASE WHEN action = 'Tirs' THEN points END) AS tirs,
  sum(CASE WHEN action = 'Jaune' THEN points END) AS jaune,
  sum(CASE WHEN action = 'Rouge' THEN points END) AS rouge,
  sum(CASE WHEN action = 'Possession%' THEN points END) AS possession,
  sum(CASE WHEN action = 'PassesRéussies%' THEN points END) AS passes_reussies,
  sum(CASE WHEN action = 'AériensGagnés' THEN points END) AS aeriens_gagnes,
  sum(CASE WHEN action = 'Tirs CA' THEN points END) AS tirs_ca,
  sum(CASE WHEN action = 'Dribbles' THEN points END) AS dribbles,
  sum(CASE WHEN action = 'Fautes subies' THEN points END) AS fautes_subies,
  sum(CASE WHEN action = 'Interceptions' THEN points END) AS interceptions,
  sum(CASE WHEN action = 'Hors-jeux' THEN points END) AS hors_jeux
FROM (
  SELECT
    equipe1_nom AS equipe,
    id_match,
    count(id_match) countmatch,
    partie,
    action,
    sum(pointEquipe1) AS points
  FROM v_statistique
  GROUP BY id_match, equipe1_nom, partie, action

  UNION ALL

  SELECT
    equipe2_nom AS equipe,
    id_match,
    count(id_match) countmatch,
    partie,
    action,
    sum(pointEquipe2) AS points
  FROM v_statistique
  GROUP BY id_match, equipe2_nom, partie, action
) AS matches_combined
GROUP BY equipe, partie,id_match,action
ORDER BY sum(points) DESC;

-- ----------------------------- generale ------------------------------row.equipe, row.competition, row.buts, tirs, row.jaune, row.rouge, row.possession, row.passesReussies, row.aeriensGagnes, row.note)
create or replace view v_statgenerale as
SELECT
  equipe,
  competition_nom competition,
  partie,
  sum(CASE WHEN action = 'Buts' THEN points END) AS buts,
  sum(CASE WHEN action = 'Tirs' THEN points END) AS tirs,
  sum(CASE WHEN action = 'Jaune' THEN points END) AS jaune,
  sum(CASE WHEN action = 'Rouge' THEN points END) AS rouge,
  round(sum(CASE WHEN action = 'Possession%' THEN points  END)/count(DISTINCT id_match),2) AS possession,
  round(sum(CASE WHEN action = 'PassesRéussies%' THEN points END)/count(DISTINCT id_match),2)  AS passes_reussies,
  round(sum(CASE WHEN action = 'AériensGagnés' THEN points END)/count(DISTINCT id_match),2)  AS aeriens_gagnes,
  round(sum(points)/count(action),2) AS notes
FROM (
  SELECT
    equipe1_nom AS equipe,
    id_match,
    competition_nom,
    partie,
    action,
    sum(pointEquipe1) AS points
  FROM v_statistique
  where partie = 10
  GROUP BY id_match, equipe1_nom, partie, action,competition_nom

  UNION ALL

  SELECT
    equipe2_nom AS equipe,
    id_match,
    competition_nom,
    partie,
    action,
    sum(pointEquipe2) AS points
  FROM v_statistique
  where partie = 10
  GROUP BY id_match, equipe2_nom, partie, action,competition_nom
) AS matches_combined
GROUP BY equipe, partie,id_match,competition_nom
ORDER BY sum(points) DESC;


--  stat defense --------------------------------------------------------
create or replace view v_statgenerale as
SELECT
  equipe,
  competition_nom competition,
  partie,
  sum(CASE WHEN action = 'Buts' THEN points END) AS buts,
  sum(CASE WHEN action = 'Tirs' THEN points END) AS tirs,
  sum(CASE WHEN action = 'Jaune' THEN points END) AS jaune,
  sum(CASE WHEN action = 'Rouge' THEN points END) AS rouge,
  round(sum(CASE WHEN action = 'Possession%' THEN points  END)/count(DISTINCT id_match),2) AS possession,
  round(sum(CASE WHEN action = 'PassesRéussies%' THEN points END)/count(DISTINCT id_match),2)  AS passes_reussies,
  round(sum(CASE WHEN action = 'AériensGagnés' THEN points END)/count(DISTINCT id_match),2)  AS aeriens_gagnes,
  round(sum(points)/count(action),2) AS notes
FROM (
  SELECT
    equipe1_nom AS equipe,
    id_match,
    competition_nom,
    partie,
    action,
    sum(pointEquipe1) AS points
  FROM v_statistique
  where partie = 10
  GROUP BY id_match, equipe1_nom, partie, action,competition_nom

  UNION ALL

  SELECT
    equipe2_nom AS equipe,
    id_match,
    competition_nom,
    partie,
    action,
    sum(pointEquipe2) AS points
  FROM v_statistique
  where partie = 10
  GROUP BY id_match, equipe2_nom, partie, action,competition_nom
) AS matches_combined
GROUP BY equipe, partie,id_match,competition_nom
ORDER BY sum(points) DESC;


-- -------------- stat defense -------------------
-- row.equipe,row.competition,row.tirs, row.tacles, row.interceptions, row.fautes, row.horsJeux,row.notes
create or replace view v_statdefense as
SELECT
  equipe,
  competition_nom competition,
  partie,
  sum(CASE WHEN action = 'Tirs' THEN points END) AS tirs,
  sum(CASE WHEN action = 'Tacles' THEN points END) AS tacles,
  sum(CASE WHEN action = 'Interceptions' THEN points END) AS interceptions,
  sum(CASE WHEN action = 'Fautes subies' THEN points END) AS fautes,
  round(sum(CASE WHEN action = 'Hors-jeux' THEN points  END)/count(DISTINCT id_match),2) AS horsJeux,
  round(sum(points)/count(action),2) AS notes
FROM (
  SELECT
    equipe1_nom AS equipe,
    id_match,
    competition_nom,
    partie,
    action,
    sum(pointEquipe1) AS points
  FROM v_statistique
  where partie = 30
  GROUP BY id_match, equipe1_nom, partie, action,competition_nom

  UNION ALL

  SELECT
    equipe2_nom AS equipe,
    id_match,
    competition_nom,
    partie,
    action,
    sum(pointEquipe2) AS points
  FROM v_statistique
  where partie = 30
  GROUP BY id_match, equipe2_nom, partie, action,competition_nom
) AS matches_combined
GROUP BY equipe, partie,id_match,competition_nom
ORDER BY sum(points) DESC;

-- ----------------- stat attaque -----------------------
create or replace view v_statattaque as
SELECT
  equipe,
  competition_nom competition,
  partie,
  sum(CASE WHEN action = 'Tirs' THEN points END) AS tirs,
  sum(CASE WHEN action = 'Tirs CA' THEN points END) AS tirsca,
  sum(CASE WHEN action = 'Dribbles' THEN points END) AS dribbles,
  sum(CASE WHEN action = 'Fautes subies' THEN points END) AS fautes,
  round(sum(points)/count(action),2) AS notes
FROM (
  SELECT
    equipe1_nom AS equipe,
    id_match,
    competition_nom,
    partie,
    action,
    sum(pointEquipe1) AS points
  FROM v_statistique
  where partie = 20
  GROUP BY id_match, equipe1_nom, partie, action,competition_nom

  UNION ALL

  SELECT
    equipe2_nom AS equipe,
    id_match,
    competition_nom,
    partie,
    action,
    sum(pointEquipe2) AS points
  FROM v_statistique
  where partie = 20
  GROUP BY id_match, equipe2_nom, partie, action,competition_nom
) AS matches_combined
GROUP BY equipe, partie,id_match,competition_nom
ORDER BY sum(points) DESC;