# Database Project

This project is a structured version of the [Ruby Data Project](https://gitlab.com/mountblue/cohort-15-ruby/saurabh_upadhyay/ruby-data-project) In this we've loaded the data from CSV file to databases in the form of tables, then all those problems are solved by querying over these tables.

## Prerequisites

- **Postgres** is used for this project, So in order to run this project you must have ****PostgreSQL**** installed on your system.
You can follow this [official link](https://www.postgresql.org/download/) for the installation.

- Basic knowledge about ****PostgreSQL****.

### Getting Started with Scripts

#### ****1. create_user_database.sql****

Queries in this script are to create an user and a database.

Use the following command to run the script, "run this in project directory otherwise you have to use complete path of this script."

```sql
psql -f create_user_database.sql
```

If the above command doesn't worked out then try this instead.

```sql
sudo -u postgres psql -f create_user_database.sql
```


#### **:point_right: Connect to the created database with created user**

```sql
psql -h localhost -U ipl_data_analyst -d ipldb
```

:point_right: Password for the user "****ipl_data_analyst****" is "***iplanalyst***".


#### ****2.load_IPL_data.sql****

Queries from this script will create **3** tables (umpires, matches, and deliveries) and then will load data from ****\*.csv**** files to these 3 tables.

- ***:warning: Do run the psql in project directory otherwise you have to specify the path for CSV files to load data correctly.***

- ***Datasets used in this project are modified according to the need, they are inluded in datasets directory of this project.***

#### ****3. umpires_nationality.sql****

- This script contains 2 queries, the first one is to display all the records stred in ****umpires**** table.

Here's the top 10 records extracted by this query.

| id | name | nationality | matches |
| :--- | :--- | :--- | :--- |
| 1 | Sundaram Ravi | India | 121 |
| 2 | Kumar Dharmasena | Sri Lanka | 94 |
| 3 | Anil Chaudhary | India | 87 |
| 4 | Chettithody Shamshuddin | India | 83 |
| 5 | Marais Erasmus | South Africa | 66 |
| 6 | Nitin Menon | India | 57 |
| 7 | C. K. Nandan | India | 57 |
| 8 | Simon Taufel | Australia | 55 |
| 9 | Vineet Kulkarni | India | 51 |
| 10 | Asad Rauf | Pakistan | 51 |

- Second query is to list count of umpires and group them by their nationality.

You'll get output like this.
| nationality | umpires\_count |
| :--- | :--- |
| Pakistan | 2 |
| South Africa | 5 |
| West Indies | 1 |
| Zimbabwe | 1 |
| England | 4 |
| New Zealand | 4 |
| Australia | 7 |
| Sri Lanka | 2 |

#### ****4. runs_by_rcb_batsman.sql****

- First query will display all the records stored in ****deliveries**** table.

Top 10 records.
| id | match\_id | inning | batting\_team | batsman | batsman\_run | extra\_run | total\_run |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | 1 | 1 | Sunrisers Hyderabad | DA Warner | 0 | 0 | 0 |
| 2 | 1 | 1 | Sunrisers Hyderabad | DA Warner | 0 | 0 | 0 |
| 3 | 1 | 1 | Sunrisers Hyderabad | DA Warner | 4 | 0 | 4 |
| 4 | 1 | 1 | Sunrisers Hyderabad | DA Warner | 0 | 0 | 0 |
| 5 | 1 | 1 | Sunrisers Hyderabad | DA Warner | 0 | 2 | 2 |
| 6 | 1 | 1 | Sunrisers Hyderabad | S Dhawan | 0 | 0 | 0 |
| 7 | 1 | 1 | Sunrisers Hyderabad | S Dhawan | 0 | 1 | 1 |
| 8 | 1 | 1 | Sunrisers Hyderabad | S Dhawan | 1 | 0 | 1 |
| 9 | 1 | 1 | Sunrisers Hyderabad | DA Warner | 4 | 0 | 4 |
| 10 | 1 | 1 | Sunrisers Hyderabad | DA Warner | 0 | 1 | 1 |

- Second query will list top 10 batsman from RCB

Here's the result of second query.
| batsman | runs |
| :--- | :--- |
| V Kohli | 4423 |
| CH Gayle | 3175 |
| AB de Villiers | 2815 |
| JH Kallis | 1132 |
| R Dravid | 898 |
| TM Dilshan | 587 |
| RV Uthappa | 549 |
| LRPL Taylor | 517 |
| SS Tiwary | 487 |
| MA Agarwal | 433 |

#### ****5. total_runs_by_teams.sql****

- This script has only one query performed over ****deliveries**** table.

- Query will list teams and the runs scored by them, and then will sort them in descending order according to their runs.

Output will be like this.
| batting\_team | runs |
| :--- | :--- |
| Mumbai Indians | 24521 |
| Royal Challengers Bangalore | 23436 |
| Kings XI Punjab | 23068 |
| Kolkata Knight Riders | 21965 |
| Delhi Daredevils | 21953 |
| Chennai Super Kings | 20899 |
| Rajasthan Royals | 17703 |
| Sunrisers Hyderabad | 11652 |
| Deccan Chargers | 11463 |
| Pune Warriors | 6358 |

#### ****6. mathces_by_teams_by_season.sql****

- First query will display all the records present in ****matches**** table.

Top 10 records are:
| id | season | team1 | team2 |
| :--- | :--- | :--- | :--- |
| 1 | 2017 | Sunrisers Hyderabad | Royal Challengers Bangalore |
| 2 | 2017 | Mumbai Indians | Rising Pune Supergiants |
| 3 | 2017 | Gujarat Lions | Kolkata Knight Riders |
| 4 | 2017 | Rising Pune Supergiants | Kings XI Punjab |
| 5 | 2017 | Royal Challengers Bangalore | Delhi Daredevils |
| 6 | 2017 | Gujarat Lions | Sunrisers Hyderabad |
| 7 | 2017 | Kolkata Knight Riders | Mumbai Indians |
| 8 | 2017 | Royal Challengers Bangalore | Kings XI Punjab |
| 9 | 2017 | Delhi Daredevils | Rising Pune Supergiants |
| 10 | 2017 | Sunrisers Hyderabad | Mumbai Indians |

- Second query will list the number of matches palyed by each teams in each season.

You will get output like this.
| seasons | teams | matches\_played |
| :--- | :--- | :--- |
| 2008 | Chennai Super Kings | 16 |
| 2008 | Deccan Chargers | 14 |
| 2008 | Delhi Daredevils | 14 |
| 2008 | Kings XI Punjab | 15 |
| 2008 | Kolkata Knight Riders | 13 |
| 2008 | Mumbai Indians | 14 |
| 2008 | Rajasthan Royals | 16 |
| 2008 | Royal Challengers Bangalore | 14 |
| 2009 | Chennai Super Kings | 14 |
| 2009 | Deccan Chargers | 16 |

#### ****7. clean-up_script.sql****

This script has queries to delete the tables, database and the user created by above scripts.

```sql
psql -f clean-up_script.sql
```

If the above command doesn't worked out then try this instead.

```sql
sudo -u postgres psql -f clean-up_script.sql
```
