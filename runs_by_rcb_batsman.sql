
/* query to display all the data stored in "deliveries" table */
/* SELECT * FROM deliveries; */

/* query to filterout data from "deliveries" table */
SELECT batsman, SUM(batsman_run) AS runs FROM deliveries
WHERE batting_team LIKE 'Royal Challengers Bangalore'
GROUP BY batsman ORDER BY runs DESC LIMIT 10;

/* The above query returns a table of top 10 players sorted in descending order by their runs.
(i.e. V Kohli  4423
      CH Gayle 3175 ) */