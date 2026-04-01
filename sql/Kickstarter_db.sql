CREATE TABLE IF NOT EXISTS projects(
id SERIAL PRIMARY KEY NOT NULL,
name TEXT NOT NULL,
category TEXT NOT NULL,
main_category TEXT,
currency TEXT,
deadline TIMESTAMP,
goal NUMERIC,
launched TIMESTAMP,
pledged NUMERIC,
state TEXT NOT NULL,
backers INTEGER,
country TEXT NOT NULL,
usd_pledged NUMERIC
);
--DROP TABLE projects;

COPY projects(id, name, category, main_category, currency, deadline, goal, launched,
pledged, state, backers, country, usd_pledged)
FROM 'C:\Users\Public\cleaned_kickstarter_projects.csv'
DELIMITER ','
CSV HEADER;


SELECT * FROM projects;
