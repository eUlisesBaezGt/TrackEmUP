# Select Database
USE TrackEmUP;

# INSERT DATA INTO TABLES

# SET AUTO_INCREMENT
ALTER TABLE `TrackEmUP`.`Country`
    AUTO_INCREMENT = 1;
INSERT INTO `TrackEmUP`.`Country`(CountryName)
VALUES ('Spain'),
       ('France'),
       ('Germany'),
       ('Italy'),
       ('United Kingdom');


ALTER TABLE `TrackEmUP`.`League`
    AUTO_INCREMENT = 1;
INSERT INTO `TrackEmUP`.`League`(LeagueName, Country)
VALUES ('La Liga', 'Spain'),
       ('Ligue 1', 'France'),
       ('Bundesliga', 'Germany'),
       ('Serie A', 'Italy'),
       ('Premier League', 'United Kingdom');


ALTER TABLE `TrackEmUP`.`Manager`
    AUTO_INCREMENT = 1;
INSERT INTO `TrackEmUP`.`Manager`(ManagerName, ManagerNationality)
VALUES ('Pep Guardiola', 'Spain'),
       ('Zinedine Zidane', 'France'),
       ('Jurgen Klopp', 'Germany'),
       ('Carlo Ancelotti', 'Italy'),
       ('Alex Ferguson', 'United Kingdom');


ALTER TABLE `TrackEmUP`.`Stadium`
    AUTO_INCREMENT = 1;
INSERT INTO `TrackEmUP`.`Stadium`(StadiumName, StadiumCapacity, StadiumCity, StadiumCountry)
VALUES ('Camp Nou', 99354, 'Barcelona', 'Spain'),
       ('Parc des Princes', 47938, 'Paris', 'France'),
       ('Allianz Arena', 75000, 'Munich', 'Germany'),
       ('San Siro', 80000, 'Milan', 'Italy'),
       ('Old Trafford', 76212, 'Manchester', 'United Kingdom');


ALTER TABLE `TrackEmUP`.`Player`
    AUTO_INCREMENT = 1;
INSERT INTO `TrackEmUP`.`Player`(PlayerName, PlayerNationality, PlayerPosition, PlayerAge, PlayerHeight, PlayerWeight,
                                 PlayerFoot, PlayerTeam)
VALUES ('Sergio Ramos', 'Spain', 'CB', 35, 184, 82, 'R', 'Real Madrid'),
       ('Kylian Mbappe', 'France', 'ST', 23, 178, 73, 'R', 'Paris Saint-Germain'),
       ('Leonardo Bonucci', 'Italy', 'CB', 34, 187, 85, 'R', 'Juventus'),
       ('Manuel Neuer ', 'Germany', 'GK', 35, 193, 92, 'R', 'Bayern Munich'),
       ('Harry Kane', 'United Kingdom', 'ST', 27, 188, 89, 'R', 'Tottenham Hotspur');


ALTER TABLE `TrackEmUP`.`Team`
    AUTO_INCREMENT = 1;
INSERT INTO `TrackEmUP`.`Team`(TeamName, TeamCity, TeamState, TeamCountry, TeamLeague, TeamManager, TeamStadium,
                               TeamCaptain)
VALUES ('Real Madrid', 'Madrid', 'Madrid', 'Spain', 'La Liga', 'Pep Guardiola', 'Camp Nou', 'Sergio Ramos'),
       ('Paris Saint-Germain', 'Paris', 'Ile-de-France', 'France', 'Ligue 1', 'Zinedine Zidane', 'Parc des Princes',
        'Kylian Mbappe'),
       ('Juventus', 'Turin', 'Piemonte', 'Italy', 'Serie A', 'Carlo Ancelotti', 'Allianz Arena', 'Leonardo Bonucci'),
       ('Bayern Munich', 'Munich', 'Bavaria', 'Germany', 'Bundesliga', 'Jurgen Klopp', 'San Siro', 'Manuel Neuer'),
       ('Tottenham Hotspur', 'London', 'England', 'United Kingdom', 'Premier League', 'Alex Ferguson', 'Old Trafford',
        'Harry Kane');