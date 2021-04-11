/* query to filterout total runs by teams across the seasons sorted in descending order */

SELECT batting_team, SUM(total_run) AS runs FROM deliveries
GROUP BY batting_team ORDER BY runs DESC;

/* above query will return data like
   Mumbai Indians -> 24521 
   .......................
*/