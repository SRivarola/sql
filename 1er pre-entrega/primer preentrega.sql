drop database if exists Fixtute2022;

CREATE DATABASE Fixtute2022;
USE Fixtute2022;

CREATE TABLE teams (
    team_id int NOT NULL PRIMARY KEY,
    name varchar(50),
    region_id int,
    group_id int,
    stats_id int
);

CREATE TABLE players (
    player_id int NOT NULL PRIMARY KEY,
    position varchar(50),
    goals int,
    yellow_cards int,
    red_cards int,
    team_id int
);

CREATE TABLE regions (
    region_id int NOT NULL PRIMARY KEY,
    region_name varchar(20),
    team_id int
);

CREATE TABLE stats (
    stats_id int NOT NULL PRIMARY KEY,
    points int,
    goals_for int,
    goals_against int,
    team_id int
);

CREATE TABLE grupos (
    group_id int NOT NULL PRIMARY KEY,
    group_name varchar(1),
    team_id int
);

CREATE TABLE matches (
    match_id int NOT NULL PRIMARY KEY,
    match_date datetime,
    match_round varchar(50),
    res_player1 int,
    res_player2 int,
    penalties boolean,
    penalties_p1 int,
    penalties_p2 int,
    player1 int,
    player2 int
);