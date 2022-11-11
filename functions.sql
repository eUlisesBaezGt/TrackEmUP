USE TrackEmUP;

# CHECK IF FUNCTION ALREADY EXISTS & DROP IT
DROP FUNCTION IF EXISTS TrackEmUP.`RegisterCountry`;

# CREATE FUNCTION
CREATE FUNCTION TrackEmUP.`RegisterCountry`(vCountry VARCHAR(250))
    RETURNS VARCHAR(250)
BEGIN
    INSERT INTO TrackEmUP.Country (CountryName) VALUES (vCountry);
    RETURN CONCAT('Successfully Registered: ', vCountry);
END;

# CALL FUNCTION
SELECT TrackEmUP.RegisterCountry('Argentina') as Registered_Country;
SELECT TrackEmUP.RegisterCountry('Brazil') as Registered_Country;
SELECT TrackEmUP.RegisterCountry('Portugal') as Registered_Country;
SELECT TrackEmUP.RegisterCountry('Croatia') as Registered_Country;


# CHECK IF FUNCTION ALREADY EXISTS & DROP IT
DROP PROCEDURE IF EXISTS TrackEmUP.`TrackEmUP.SearchTeamsByCountry`;

# CREATE PROCEDURE
CREATE PROCEDURE TrackEmUP.`TrackEmUP.SearchTeamsByCountry`(vCountry VARCHAR(250))
BEGIN
    SELECT * FROM TrackEmUP.Team WHERE TeamCountry = vCountry;
END;

# CALL PROCEDURE
CALL TrackEmUP.`TrackEmUP.SearchTeamsByCountry`('Argentina'); # RETURNS 0 ROWS
CALL TrackEmUP.`TrackEmUP.SearchTeamsByCountry`('Spain');
# RETURNS 2 ROWS AFTER SECOND INSERT


# CREATE A FUNCTION THAT SHOWS ALL MATCHES BETWEEN A DATE
DROP PROCEDURE IF EXISTS TrackEmUP.`TrackEmUP.SearchMatchesByDate`;

CREATE PROCEDURE TrackEmUP.`TrackEmUP.SearchMatchesByDate`(sDate DATE, eDate DATE)
BEGIN
    SELECT * FROM TrackEmUP.Match WHERE MatchDate BETWEEN sDate AND eDate;
END;

CALL TrackEmUP.`TrackEmUP.SearchMatchesByDate`('2022-01-01', '2022-06-30'); # RETURNS 2 ROWS AFTER SECOND INSERT


# CREATE A FUNCTION THAT SHOWS ALL PLAYERS WITH RED CARDS
DROP PROCEDURE IF EXISTS TrackEmUP.`TrackEmUP.SearchPlayersWithRedCards`;

CREATE PROCEDURE TrackEmUP.`TrackEmUP.SearchPlayersWithRedCards`()
BEGIN
    SELECT MatchEventID, MatchID, matchEvent.PlayerID, PlayerName, EventTime, Comments
        FROM TrackEmUP.MatchEvent
        JOIN TrackEmUP.Player ON matchEvent.PlayerID = Player.PlayerID
        WHERE EventType = 3;
END;

CALL TrackEmUP.`TrackEmUP.SearchPlayersWithRedCards`(); # RETURNS 1 ROW

# CREATE A FUNCTION THAT SHOWS ALL PLAYERS WITH YELLOW CARDS
DROP PROCEDURE IF EXISTS TrackEmUP.`TrackEmUP.SearchPlayersWithYellowCards`;

CREATE PROCEDURE TrackEmUP.`TrackEmUP.SearchPlayersWithYellowCards`()
BEGIN
SELECT MatchEventID, MatchID, matchEvent.PlayerID, PlayerName, EventTime, Comments
        FROM TrackEmUP.MatchEvent
        JOIN TrackEmUP.Player ON matchEvent.PlayerID = Player.PlayerID
        WHERE EventType = 2;
END;

CALL TrackEmUP.`TrackEmUP.SearchPlayersWithYellowCards`(); # RETURNS 1 ROW

# CREATE A FUNCTION THAT SHOWS ALL PLAYERS WITH GOALS
DROP PROCEDURE IF EXISTS TrackEmUP.`TrackEmUP.SearchPlayersWithGoals`;

CREATE PROCEDURE TrackEmUP.`TrackEmUP.SearchPlayersWithGoals`()
BEGIN
SELECT MatchEventID, MatchID, matchEvent.PlayerID, PlayerName, EventTime, Comments
        FROM TrackEmUP.MatchEvent
        JOIN TrackEmUP.Player ON matchEvent.PlayerID = Player.PlayerID
        WHERE EventType = 1;
END;

CALL TrackEmUP.`TrackEmUP.SearchPlayersWithGoals`(); # RETURNS 1 ROW

# CREATE A FUNCTION THAT SHOWS ALL THE GAMES OF A TEAM
DROP PROCEDURE IF EXISTS TrackEmUP.`TrackEmUP.SearchMatchesByTeam`;

CREATE PROCEDURE TrackEmUP.`TrackEmUP.SearchMatchesByTeam`(teamName VARCHAR(250))
BEGIN
    SELECT * FROM TrackEmUP.Match WHERE MatchHomeTeam = teamName OR MatchAwayTeam = teamName;
END;

CALL TrackEmUP.`TrackEmUP.SearchMatchesByTeam`('Barcelona'); # RETURNS 1 ROW

# CREATE A FUNCTION THAT SHOWS ALL THE GAMES WITH A SPECIFIC REFEREE
DROP PROCEDURE IF EXISTS TrackEmUP.`TrackEmUP.SearchMatchesByReferee`;

CREATE PROCEDURE TrackEmUP.`TrackEmUP.SearchMatchesByReferee`(refID INT)
BEGIN
    SELECT MatchID, MatchDate, MatchHomeTeam, ScoreHomeTeam, MatchAwayTeam, ScoreAwayTeam, MatchLeague, MatchStadium
        FROM TrackEmUP.Match WHERE RefereeID = refID;
END;

CALL TrackEmUP.`TrackEmUP.SearchMatchesByReferee`(1); # RETURNS 1 ROW