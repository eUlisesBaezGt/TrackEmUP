# TrackEmUP is a database system that tracks soccer countries, leagues, managers, players, stadiums, teams & matches.

DROP DATABASE IF EXISTS TrackEmUP;

# CREATE DATABASE
CREATE DATABASE IF NOT EXISTS TrackEmUP;

# Select DATABASE
USE TrackEmUP;

# CREATE TABLES
CREATE TABLE IF NOT EXISTS `TrackEmUP`.`Country`
(
    `CountryID`   INT         NOT NULL AUTO_INCREMENT,
    `CountryName` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`CountryID`),
    UNIQUE INDEX `CountryName_UNIQUE` (`CountryName` ASC)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `TrackEmUP`.`League`
(
    `LeagueID`   INT         NOT NULL AUTO_INCREMENT,
    `LeagueName` VARCHAR(45) NOT NULL,
    `Country`    VARCHAR(45) NOT NULL,
    PRIMARY KEY (`LeagueID`),
    FOREIGN KEY (`Country`) REFERENCES `TrackEmUP`.`Country` (`CountryName`),
    UNIQUE KEY `LeagueName_UNIQUE` (`LeagueName`)
) ENGINE = InnoDB;;

CREATE TABLE IF NOT EXISTS `TrackEmUP`.`Manager`
(
    `ManagerID`          INT         NOT NULL AUTO_INCREMENT,
    `ManagerName`        VARCHAR(45) NOT NULL,
    `ManagerNationality` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`ManagerID`),
    UNIQUE KEY `ManagerName_UNIQUE` (`ManagerName`)
) ENGINE = InnoDB;;

CREATE TABLE IF NOT EXISTS `TrackEmUP`.`Stadium`
(
    `StadiumName`     VARCHAR(45) NOT NULL,
    `StadiumCapacity` INT         NOT NULL,
    `StadiumCity`     VARCHAR(45) NOT NULL,
    `StadiumCountry`  VARCHAR(45) NOT NULL,
    PRIMARY KEY (`StadiumName`),
    FOREIGN KEY (`StadiumCountry`) REFERENCES `TrackEmUP`.`Country` (`CountryName`),
    UNIQUE KEY `StadiumName_UNIQUE` (`StadiumName`)
) ENGINE = InnoDB;;


CREATE TABLE IF NOT EXISTS `TrackEmUP`.`Team`
(
    `TeamID`      INT         NOT NULL AUTO_INCREMENT,
    `TeamName`    VARCHAR(45) NOT NULL,
    `TeamCity`    VARCHAR(45) NOT NULL,
    `TeamState`   VARCHAR(45) NOT NULL,
    `TeamCountry` VARCHAR(45) NOT NULL,
    `TeamLeague`  VARCHAR(45) NOT NULL,
    `TeamManager` VARCHAR(45) NOT NULL,
    `TeamStadium` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`TeamID`),
    FOREIGN KEY (`TeamLeague`) REFERENCES `TrackEmUP`.`League` (`LeagueName`),
    FOREIGN KEY (`TeamManager`) REFERENCES `TrackEmUP`.`Manager` (`ManagerName`),
    FOREIGN KEY (`TeamCountry`) REFERENCES `TrackEmUP`.`Country` (`CountryName`),
    FOREIGN KEY (`TeamStadium`) REFERENCES `TrackEmUP`.`Stadium` (`StadiumName`),
    UNIQUE KEY `TeamName_UNIQUE` (`TeamName`)
) ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `TrackEmUP`.`Player`
(
    `PlayerID`          INT         NOT NULL AUTO_INCREMENT,
    `PlayerName`        VARCHAR(45) NOT NULL,
    `PlayerNationality` VARCHAR(45) NOT NULL,
    `PlayerPosition`    VARCHAR(3)  NOT NULL,
    `PlayerAge`         INT         NOT NULL,
    `PlayerHeight`      INT         NOT NULL,
    `PlayerWeight`      INT         NOT NULL,
    `PlayerFoot`        VARCHAR(1)  NOT NULL,
    `PlayerTeam`        VARCHAR(45) NOT NULL,
    PRIMARY KEY (`PlayerID`),
    FOREIGN KEY (`PlayerNationality`) REFERENCES `TrackEmUP`.`Country` (`CountryName`),
    FOREIGN KEY (`PlayerTeam`) REFERENCES `TrackEmUP`.`Team` (`TeamName`),
    UNIQUE KEY `PlayerName_UNIQUE` (`PlayerName`)
) ENGINE = InnoDB;;

## HERE
