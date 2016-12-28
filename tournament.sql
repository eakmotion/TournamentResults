DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament

-- Players table
CREATE TABLE players ( id SERIAL primary key,
                       name TEXT);

-- Matches table
CREATE TABLE matches ( id SERIAL primary key,
                       winner INTEGER REFERENCES players (id),
                       loser INTEGER REFERENCES players (id));

-- Players standing view
CREATE VIEW players_standing as select players.id, players.name,
                                ( select count(matches.winner)
                                  from matches
                                  where players.id = matches.winner
                                ) as win_total,
                                ( select count(matches.id)
                                  from matches
                                  where players.id = matches.winner
                                  or players.id = matches.loser
                                ) as matches_total
                                from players
                                order by win_total desc, matches_total desc;
