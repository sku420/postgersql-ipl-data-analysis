/* query to create "umpires" table with column "name", "nationality" and "matches" */
CREATE TABLE umpires(
  id SERIAL PRIMARY KEY,
  name text,
  nationality text,
  matches integer
);


/* query to load data from "umpires.csv" file to "umpires" table.
   This query will return the number of rows copied in table.
   returns COUNT 56: as there are 56 rows present in CSV file.*/
\set umpires_dataset `pwd`'/datasets/umpires.csv'
COPY umpires(name, nationality, matches)
FROM:'umpires_dataset'
DELIMITER ','
CSV HEADER;

/* query to create "deliveries" table*/
CREATE TABLE deliveries(
  id SERIAL PRIMARY KEY,
  match_id INTEGER,
  inning INTEGER,
  batting_team TEXT,
  batsman TEXT,
  batsman_run INTEGER,
  extra_run INTEGER,
  total_run INTEGER
);

/* query to load data from "deliveries.csv" file to "deliveries" table 
*/
\set deliveries_dataset `pwd`'/datasets/deliveries.csv'
COPY deliveries(match_id, inning, batting_team, batsman, batsman_run, extra_run, total_run)
FROM:'deliveries_dataset'
DELIMITER ','
CSV HEADER;


/* query to create "matches" table */
CREATE TABLE matches(
  id SERIAL PRIMARY KEY,
  season INTEGER,
  team1 TEXT,
  team2 TEXT
);

/* query to load data from "matches.csv" file to "matches" table 
*/
\set matches_dataset `pwd`'/datasets/matches.csv'
COPY matches(season, team1, team2)
FROM:'matches_dataset'
DELIMITER ','
CSV HEADER;