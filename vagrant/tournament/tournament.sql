-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament

CREATE TABLE players ( 
	id serial primary key,
	name varchar(50)
	);

CREATE TABLE matches (
	match_id serial primary key,
	winner integer REFERENCES players(id),
	loser integer REFERENCES players(id),
	round integer
	);

CREATE VIEW rankings AS
	SELECT id, name, COUNT(winner) AS wins, (SELECT COUNT(*) FROM matches)/((SELECT COUNT(*) FROM players)/2)
                         FROM players LEFT JOIN matches 
                         ON players.id = matches.winner 
                         GROUP BY id, name
                         ORDER BY wins desc;
                       
