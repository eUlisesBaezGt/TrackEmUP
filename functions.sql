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
CALL TrackEmUP.`TrackEmUP.SearchTeamsByCountry`('Spain'); # RETURNS 2 ROWS AFTER SECOND INSERT
