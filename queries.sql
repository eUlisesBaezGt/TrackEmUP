USE TrackEmUP;

# SELECTS ALL COUNTRIES (s)
SELECT *
FROM TrackEmUP.country
ORDER BY CountryID;

# SELECTS PLAYER NAME, NATIONALITY, POSITION, FOOT & TEAM (p)
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

# SELECTS ALL PLAYERS IN THE PREMIER LEAGUE
SELECT PlayerName, PlayerNationality, PlayerPosition, PlayerFoot, PlayerTeam
FROM TrackEmUP.player
         JOIN TrackEmUP.team
              ON TrackEmUP.player.PlayerTeam = TrackEmUP.team.TeamName
         JOIN TrackEmUP.league
              ON TrackEmUP.team.TeamLeague = TrackEmUP.league.LeagueName
WHERE LeagueName = 'Premier League'
ORDER BY PlayerPosition; # RETURNS 10 PLAYERS

# UPDATE AGUERO'S YELLOW CARD
UPDATE TrackEmUP.matchevent
SET Comments = 'Kicking corner flag'
WHERE MatchEventID = 4;
# CHECK UPDATED
SELECT MatchEventID, MatchID, PlayerName, EventName, Comments
FROM TrackEmUP.matchevent
JOIN TrackEmUP.player
     ON TrackEmUP.matchevent.PlayerID = TrackEmUP.player.PlayerID
JOIN TrackEmUP.events ON TrackEmUP.matchevent.EventType = TrackEmUP.events.EventID
WHERE MatchEventID = 4;

# SEE ALL MATCH EVENTS
SELECT MatchEventID, MatchID, PlayerName, EventName, Comments
FROM TrackEmUP.matchevent
JOIN TrackEmUP.player
     ON TrackEmUP.matchevent.PlayerID = TrackEmUP.player.PlayerID
JOIN TrackEmUP.events ON TrackEmUP.matchevent.EventType = TrackEmUP.events.EventID;