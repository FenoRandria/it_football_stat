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


create table joueur(
    id_joueur serial not null primary key,
    nom varchar(255) not null,
    dtn date,
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



-- requete necessaire pour grouper par equipe
SELECT
  id_equipe,
  COUNT(id_match) AS nombre_de_matches
FROM (
  SELECT id_equipe1 AS id_equipe, id_match FROM match
  UNION ALL
  SELECT id_equipe2 AS id_equipe, id_match FROM match
) AS matches_combined
GROUP BY id_equipe;


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
    FOREIGN KEY (id_match) REFERENCES match(id_match)
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
    (1, 5, floor(random() * 4), floor(random() * 4)),
    (1, 6, floor(random() * 4), floor(random() * 4)),
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
    (2, 5, floor(random() * 4), floor(random() * 4)),
    (2, 6, floor(random() * 4), floor(random() * 4)),
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
    (3, 5, floor(random() * 4), floor(random() * 4)),
    (3, 6, floor(random() * 4), floor(random() * 4)),
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
    (4, 5, floor(random() * 4), floor(random() * 4)),
    (4, 6, floor(random() * 4), floor(random() * 4)),
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
    (5, 5, floor(random() * 4), floor(random() * 4)),
    (5, 6, floor(random() * 4), floor(random() * 4)),
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
    (6, 5, floor(random() * 4), floor(random() * 4)),
    (6, 6, floor(random() * 4), floor(random() * 4)),
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
    (7, 5, floor(random() * 4), floor(random() * 4)),
    (7, 6, floor(random() * 4), floor(random() * 4)),
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
    (8, 5, floor(random() * 4), floor(random() * 4)),
    (8, 6, floor(random() * 4), floor(random() * 4)),
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
    (9, 5, floor(random() * 4), floor(random() * 4)),
    (9, 6, floor(random() * 4), floor(random() * 4)),
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
    (10, 5, floor(random() * 4), floor(random() * 4)),
    (10, 6, floor(random() * 4), floor(random() * 4)),
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
    (11, 5, floor(random() * 4), floor(random() * 4)),
    (11, 6, floor(random() * 4), floor(random() * 4)),
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
    (12, 5, floor(random() * 4), floor(random() * 4)),
    (12, 6, floor(random() * 4), floor(random() * 4)),
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