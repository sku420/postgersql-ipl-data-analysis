
/* query to display all the rows from "umpires" table */
/* SELECT * FROM umpires; */


/* query to filterout data form "umpires" table */
SELECT nationality, COUNT(*) AS umpires_count FROM umpires 
WHERE nationality NOT LIKE 'India' GROUP BY nationality;

/* The above query returns a table with umpires count grouped by their nationality.
(i.e. Australia  7
      England	 4 ) */
