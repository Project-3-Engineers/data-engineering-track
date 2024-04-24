# Data-Engineering

Project-3 Data Engineering - DB Design - ETL - Analysis

World development indicators data engineering project

The World Development Indicators from the World Bank contain over a thousand annual indicators of economic development from hundreds of countries around the world.

Ethical Considerations:

We considered several aspects of data ethics as we compiled and analyzed our data.
First off was the source of the data: This data was found on Kaggle, a free open-source site. It was provided to Kaggle by “The World Bank” which introduced some terms and conditions on how this data should and should not be used which we did follow. Because our work is purely for educational purposes we see no legal concerns here. We followed all the remaining terms of use.
Regarding algorithmic bias: This becomes a bit more complicated. Although our work did not introduce any algorithmic bias, there is certainly a possibility that it exists in the data that was collected. The specific data and indicators used to calculate measures across many people and cultures is a place where we could imagine a one size fits all approach may not be sufficient. To reiterate, however, there is no algorithmic bias introduced by our work here.
Lastly regarding any concern of personal identifying information: Although our dataset contained millions of records none were specific to a particular individual and therefore no PII is included in our dataset.


We chose this project from Kaggle at below link:
https://www.kaggle.com/datasets/kaggle/world-development-indicators

The main objective of this project is to implement data engineering activities on the World Bank dataset for world development indicators and to analyze few of these indicators on various countries for the time period these were captured.

The dataset contains more than 100 unique records from each table in the dataset.

PostgreSQL database was used to store the data used for this project. It is open source and gives more flexibility in data types, scalability and data integrity and hence was chosen for the project.

ETL Process:

There were 6 data files as below:
 Country.csv,
 CountryNotes.csv,
 Footnotes.csv,
 Indicators.csv,
 Series.csv,
 SeriesNotes.csv
 
 These csv files were subject to data cleansing where necessary for uniformity of record values (Ex:country codes) and were transformed to same format before using in the database. 
 
 The ERD (Entity Relationship Diagram) was created in QBD tool, using the entities from the csv files and drawing the relationships between each table.
 
 Then the database schema, 'WorldDevelopmentIndicators_db_schema.sql' was written using which the relavant tables were created in the Postgres database. After the tables are created the data was injested into them, by importing the csv files in the order of how the relationships were established.
 
 The data was fed into the tables importing corresponding csv files in the PostgreSQL. Verified each table has correct data, using below select statements:

1. select * from country;
2. select * from countrynotes;
3. select * from footnotes;
4. select * from indicators;
5. select * from series;
6. select * from seriesnotes;

The screenshots of the tables created were saved in the project folders.

 
 Data Analysis:
 
 The python script, 'WDIndicators.ipynb', was created to study the development indicators of the countries.
 
 The "psycopg2" library was utilized to connect to the postgres database engine to retrieve the data from the tables in the database. This library was not covered in the class.
 
 The data frames for country, indicator and series were merged in order to fetch the needed data elements.
 
 The data frames were filtered and sliced as needed to analyze the indicators.
 The script was executed successfully as per the project requirements.
 
 The powerpoint deck was created to present the project.
 
 Some of the indicators analyzed:
    Top 10 countries for GDP
    Bottom 10 countries for GDP
    Top 10 countries Poverty Rate
    Top 10 countries Fertility Rate
    Top 10 countries Population
    Top 10 countries life expectancy
    Bottom 10 countries life expectancy
    Top 10 countries Immunization
    Bottom 10 countries Immunization
    Top 10 countries with hospital beds (per 1000 people)
    Bottom 10 countries with hospital beds (per 1000 people)
    GDP Growth of countries in 2012

 Implemented 'Bokeh' visualization library that was not covered in the class. The plot developed with this provides interactivity using pan, zoom, hover options for the user to explore with the plot.
