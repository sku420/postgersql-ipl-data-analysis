/* query to create user "ipl_data_analyst" with password "iplanalysis" */
CREATE USER ipl_data_analyst WITH PASSWORD 'iplanalyst' SUPERUSER CREATEDB;

/* query to create database named "ipldb" */
CREATE DATABASE ipldb;

/* query to assign the ownership of newly created "ipldb" database to user "ipl_data_analyst" */
ALTER DATABASE ipldb OWNER TO ipl_data_analyst;


