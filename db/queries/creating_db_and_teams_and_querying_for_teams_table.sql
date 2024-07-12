-- Create Database and Table
create database t20_world_cup;
use t20_world_cup;

CREATE TABLE teams (
    id int AUTO_INCREMENT,
    name varchar(40) NOT NULL,
    country varchar(25) NOT NULL,
    founded YEAR,
    PRIMARY KEY(id),
    UNIQUE(name)
);
-- MySQL Queries
-- INSERTING DATA INTO TEAMS
insert into teams (name, country, founded) VALUES ('Team A', 'USA', 1901),
                                                  ('Team B', 'UK', null),
                                                  ('Team C', 'Spain', 1920),
                                                  ('Team D', 'Germany', null),
                                                  ('Team E', 'Italy', 1905),
                                                  ('Team F', 'France', null),
                                                  ('Team G', 'Brazil', 1910),
                                                  ('Team H', 'Argentina', 1913),
                                                  ('Team I', 'Mexico', 1922),
                                                  ('Team J', 'Netherlands', null);
-- Retrieve all teams from the teams table
select * from teams;
-- Retrieve a specific team by name.
select * from teams 
where name = 'Team A';
-- List all teams founded before a certain year
select * from teams 
where founded < 1910;
-- Insert a new team into the teams table
insert into teams (name, country, founded) values ('Team K', 'Australia', 1922);
-- Update the country of a specific team
update teams 
set country = 'Austria'
where name = 'Team K';
-- Delete a team by its name
delete from teams
where name = 'Team K';