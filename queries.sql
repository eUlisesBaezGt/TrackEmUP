USE TrackEmUP;

# SELECTS COUNTRIES WITH A LEAGUE
SELECT CountryID, Country, LeagueName, LeagueID FROM TrackEmUP.league
JOIN TrackEmUP.country
ON TrackEmUP.league.Country = TrackEmUP.country.CountryName;

# COUNT HOW MANY TEAMS ARE IN EACH LEAGUE
SELECT LeagueName, COUNT(TeamName) AS TeamCount FROM TrackEmUP.team
JOIN TrackEmUP.league
ON TrackEmUP.team.TeamLeague = TrackEmUP.league.LeagueName
GROUP BY LeagueName
ORDER BY TeamCount DESC;

