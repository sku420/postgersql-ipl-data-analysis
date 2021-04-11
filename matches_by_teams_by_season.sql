/* display all the records stored in mathces table */
/* SELECT * FROM matches; */


/* query to display matches played by each team in each season */
SELECT  season AS seasons, team AS teams, SUM(match) AS matches_played FROM 
(SELECT season, team1 AS team, count(team1) AS match FROM matches GROUP BY season, team1
  UNION ALL
  SELECT season, team2 AS team, count(team2) AS match FROM matches GROUP BY season, team2)
AS temp_table GROUP BY seasons, teams ORDER BY seasons;

/* sub query with UNION ALL will give a temperory table 
   with count of matches played by each team as team1,
   team2 in each season. */
  
