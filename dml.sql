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
       ('Alex Ferguson', 'United Kingdom'),
       ('José Mourinho', 'Portugal'),
       ('Lionel Scaloni', 'Argentina'),
       ('Tite', 'Brazil');



ALTER TABLE `TrackEmUP`.`Stadium`
    AUTO_INCREMENT = 1;
INSERT INTO `TrackEmUP`.`Stadium`(StadiumName, StadiumCapacity, StadiumCity, StadiumCountry)
VALUES ('Camp Nou', 99354, 'Barcelona', 'Spain'),
       ('Parc des Princes', 47938, 'Paris', 'France'),
       ('Allianz Arena', 75000, 'Munich', 'Germany'),
       ('San Siro', 80000, 'Milan', 'Italy'),
       ('Old Trafford', 76212, 'Manchester', 'United Kingdom'),
       ('Etihad Stadium', 53400, 'Manchester', 'United Kingdom');


ALTER TABLE `TrackEmUP`.`Team`
    AUTO_INCREMENT = 1;
INSERT INTO `TrackEmUP`.`Team`(TeamName, TeamCity, TeamState, TeamCountry, TeamLeague, TeamManager, TeamStadium)
VALUES ('Real Madrid', 'Madrid', 'Madrid', 'Spain', 'La Liga', 'Pep Guardiola', 'Camp Nou'),
       ('Paris Saint-Germain', 'Paris', 'Ile-de-France', 'France', 'Ligue 1', 'Zinedine Zidane', 'Parc des Princes'),
       ('Juventus', 'Turin', 'Piemonte', 'Italy', 'Serie A', 'Carlo Ancelotti', 'Allianz Arena'),
       ('Bayern Munich', 'Munich', 'Bavaria', 'Germany', 'Bundesliga', 'Jurgen Klopp', 'San Siro'),
       ('Tottenham Hotspur', 'London', 'England', 'United Kingdom', 'Premier League', 'Alex Ferguson', 'Old Trafford');


INSERT INTO `TrackEmUP`.`Team`(TeamName, TeamCity, TeamState, TeamCountry, TeamLeague, TeamManager, TeamStadium)
VALUES ('Barcelona', 'Barcelona', 'Catalonia', 'Spain', 'La Liga', 'Pep Guardiola', 'Camp Nou'),
       ('Manchester United', 'Manchester', 'England', 'United Kingdom', 'Premier League', 'Alex Ferguson',
        'Old Trafford'),
       ('Manchester City', 'Manchester', 'England', 'United Kingdom', 'Premier League', 'José Mourinho',
        'Etihad Stadium');


ALTER TABLE `TrackEmUP`.`Player`
    AUTO_INCREMENT = 1;
INSERT INTO `TrackEmUP`.`Player`(PlayerName, PlayerNationality, PlayerPosition, PlayerAge, PlayerHeight, PlayerWeight,
                                 PlayerFoot, PlayerTeam)
VALUES ('Sergio Ramos', 'Spain', 'CB', 35, 184, 82, 'R', 'Real Madrid'),
       ('Kylian Mbappe', 'France', 'ST', 23, 178, 73, 'R', 'Paris Saint-Germain'),
       ('Leonardo Bonucci', 'Italy', 'CB', 34, 187, 85, 'R', 'Juventus'),
       ('Manuel Neuer ', 'Germany', 'GK', 35, 193, 92, 'R', 'Bayern Munich'),
       ('Harry Kane', 'United Kingdom', 'ST', 27, 188, 89, 'R', 'Tottenham Hotspur'),
       ('Lionel Messi', 'Argentina', 'ST', 34, 170, 72, 'R', 'Barcelona'),
       ('Cristiano Ronaldo', 'Portugal', 'ST', 36, 187, 83, 'R', 'Juventus'),
       ('Paul Pogba', 'France', 'CM', 28, 191, 84, 'R', 'Manchester United'),
       ('Neymar', 'Brazil', 'ST', 29, 175, 68, 'R', 'Paris Saint-Germain'),
       ('Luka Modric', 'Croatia', 'CM', 35, 172, 66, 'R', 'Real Madrid'),
       ('Sergio Aguero', 'Argentina', 'ST', 33, 173, 70, 'R', 'Manchester City'),
       ('Antoine Griezmann', 'France', 'ST', 30, 176, 73, 'R', 'Barcelona'),
       ('Raheem Sterling', 'United Kingdom', 'RW', 27, 170, 70, 'R', 'Manchester City'),
       ('Toni Kroos', 'Germany', 'CM', 31, 183, 76, 'R', 'Real Madrid'),
       ('Karim Benzema', 'France', 'ST', 33, 185, 81, 'R', 'Real Madrid'),
       ('Gareth Bale', 'United Kingdom ', 'RW', 31, 183, 79, 'R', 'Real Madrid'),
       ('Thiago Silva', 'Brazil', 'CB', 36, 183, 79, 'R', 'Paris Saint-Germain'),
       ('Marcelo', 'Brazil', 'LB', 34, 174, 66, 'R', 'Real Madrid'),
       ('Sergio Busquets', 'Spain', 'CM', 33, 189, 76, 'R', 'Barcelona'),
       ('Gerard Pique', 'Spain', 'CB', 34, 194, 85, 'R', 'Barcelona'),
       ('Luis Nani', 'Portugal', 'RW', 35, 175, 69, 'R', 'Manchester United'),
       ('David De Gea', 'Spain', 'GK', 30, 192, 82, 'R', 'Manchester United'),
       ('Paulo Dybala', 'Argentina', 'ST', 27, 177, 75, 'R', 'Juventus'),
       ('Andrea Pirlo', 'Italy', 'CM', 41, 180, 75, 'R', 'Juventus'),
       ('Gianluigi Buffon', 'Italy', 'GK', 43, 191, 92, 'R', 'Juventus'),
       ('Gonzalo Higuain', 'Argentina', 'ST', 33, 185, 81, 'R', 'Juventus'),
       ('Mario Mandzukic', 'Croatia', 'ST', 34, 191, 88, 'R', 'Juventus'),
       ('Leon Goretzka', 'Germany', 'CM', 26, 188, 84, 'R', 'Bayern Munich'),
       ('Thomas Muller', 'Germany', 'ST', 32, 183, 76, 'R', 'Bayern Munich'),
       ('Joshua Kimmich', 'Germany', 'CM', 26, 183, 76, 'R', 'Bayern Munich'),
       ('Mats Hummels', 'Germany', 'CB', 32, 191, 92, 'R', 'Bayern Munich'),
       ('Serge Gnabry', 'Germany', 'RW', 25, 180, 75, 'R', 'Bayern Munich'),
       ('Dele Alli', 'United Kingdom', 'CM', 25, 178, 74, 'R', 'Tottenham Hotspur'),
       ('Eric Dier', 'United Kingdom', 'CM', 27, 183, 76, 'R', 'Tottenham Hotspur'),
       ('Hugo Lloris', 'France', 'GK', 34, 188, 84, 'R', 'Tottenham Hotspur'),
       ('Kyle Walker', 'United Kingdom', 'RB', 30, 183, 76, 'R', 'Tottenham Hotspur');


INSERT INTO `TrackEmUP`.`Referee`(RefereeName, RefereeAge, RefereeNationality, RefereeCategory)
VALUES ('Pierluigi Collina', 60, 'Italy', 'Legend'),
       ('Howard Webb', 50, 'United Kingdom', 'Elite'),
       ('Mark Clattenburg', 50, 'United Kingdom', 'Elite'),
       ('Massimiliano Irrati', 50, 'Italy', 'Legend'),
       ('Michael Oliver', 50, 'United Kingdom', 'Elite'),
       ('Nikola Rizzoli', 50, 'Italy', 'Legend'),
       ('Carlos Velasco Carballo', 50, 'Spain', 'Medium');



ALTER TABLE `TrackEmUP`.`Match`
    AUTO_INCREMENT = 1;
INSERT INTO `TrackEmUP`.`Match`(MatchDate, MatchTime, MatchHomeTeam, ScoreHomeTeam, MatchAwayTeam, ScoreAwayTeam,
                                MatchLeague, MatchStadium, RefereeID)
VALUES ('2022-01-01', '20:00:00', 'Real Madrid', 2, 'Barcelona', 1, 'La Liga', 'Camp Nou', 1),
       ('2022-12-02', '19:00:00', 'Manchester City', 1, 'Tottenham Hotspur', 2, 'Premier League', 'Old Trafford', 2),
       ('2022-10-03', '21:00:00', 'Juventus', 1, 'Bayern Munich', 2, 'Serie A', 'Allianz Arena', 3),
       ('2022-09-04', '20:00:00', 'Paris Saint-Germain', 2, 'Manchester City', 1, 'Ligue 1', 'Parc des Princes', 4),
       ('2022-04-05', '20:30:00', 'Tottenham Hotspur', 1, 'Real Madrid', 2, 'Premier League', 'Old Trafford', 5);


ALTER TABLE `TrackEmUP`.`Events`
    AUTO_INCREMENT = 1;
INSERT INTO `TrackEmUP`.`Events`(EventName)
VALUES ('Goal'),
       ('Yellow Card'),
       ('Red Card'),
       ('Foul'),
       ('Offside'),
       ('Penalty'),
       ('Injury'),
       ('Own Goal');


ALTER TABLE `TrackEmUP`.`MatchEvent`
    AUTO_INCREMENT = 1;
INSERT INTO `TrackEmUP`.`MatchEvent`(MatchID, PlayerID, EventType)
VALUES (1, 1, 2),
       (1, 1, 3),
       (1, 2, 5),
       (1, 2, 1);