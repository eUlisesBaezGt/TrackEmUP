USE TrackEmUP;
# SELECTS ALL COUNTRIES
SELECT *
FROM TrackEmUP.country
ORDER BY CountryID desc;

# SELECTS PLAYER NAME, NATIONALITY, POSITION, FOOT & TEAM
SELECT PlayerName, PlayerNationality, PlayerPosition, PlayerFoot, PlayerTeam
FROM TrackEmUP.player
GROUP BY PlayerName, PlayerPosition
ORDER BY PlayerPosition;

# SELECTS COUNTRIES WITH A LEAGUE
SELECT CountryID, Country, LeagueName, LeagueID
FROM TrackEmUP.league
         JOIN TrackEmUP.country
              ON TrackEmUP.league.Country = TrackEmUP.country.CountryName;

# COUNT HOW MANY TEAMS ARE IN EACH LEAGUE
SELECT LeagueName, COUNT(TeamName) AS TeamCount

FROM TrackEmUP.team
         JOIN TrackEmUP.league
              ON TrackEmUP.team.TeamLeague = TrackEmUP.league.LeagueName
GROUP BY LeagueName
ORDER BY TeamCount DESC;

