# etl_housing_project

Project Outline
Analysis pgs 2-3

Kristina
* Median rental rates 2005-2015
o https://www.rentdata.org/states/florida/2020
o https://www.deptofnumbers.com/rent/florida/
Melissa
* Homelessness rates 2005-2015
o https://www.kaggle.com/adamschroeder/homelessness 
Asia
* Avg home prices in Florida 2005-2015
o CSV/Excel Sheet procured from Zillows datawiz site
o https://www.zillow.com/research/data/
* Median income Florida 2005-2015*
o https://www.census.gov/acs/www/data/data-tables-and-tools/data-profiles/2015/

Where data is coming from: 
* Median Income Florida - IRS
* Avg Home Price in Florida - Zillow / MLS
* Homelessness Rates in Florida - HUD
* Median Rent Florida - Census Bureau 

How much data will we use?
Data should range from 2005-2015
We will start with four-five sources and if time permits we’ll pull additional sources

What will we use:
SQL
QuickDBD

Data Can Be Extracted in These Forms:
* CSV Files
* JSON Files
* HTML Files
* SQL Databases
* Spreadsheets

What questions is the Data going to answer?
1. What is the current availability of “affordable housing” in the state of Florida according to the criteria put in place by the Housing of Urban Development 2005-2015
2. Can data scientists use this data?
Data Model

What is our Data model?
	We want to be able to search for a city and see the housing options available within a certain budget range. The range will be within the same HUD criteria.

Relational database: Using MySQL or PostgresSQL

The type of transformation needed for this data: 

The final tables or collections that will be used in the production database: Provide schema or table outline for the databases after we transform the raw data.

**We will be required to submit a final technical report with the above information and steps required to reproduce your ETL process.** This will be our outline for said report.

Avg Home Price & Income Analysis - Asia

Extract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).
The data I gathered came from two sources. The raw median income data was pulled from the Federal Census Beureau open source database which could be downloaded to Excel sheets. The other dataset was pulled from Zillow and included data for all fifty states for average home sales from 1996-2020. Zillow was kind enough to allow their data to be exported directly to a CSV file. 


Transform: what data cleaning or transformation was required.
The data from Zillow was easier to clean. After uploading the CSV file to a Jupyter notebook it was easy to use the .loc method in Pandas to isolate Floridas median sale price for single family homes. The Census Bureau data was a separate beast. After downloading the data I found myself sifting through twenty-six separate Excel and txt files to find the relevant measurements I needed for the dates we wanted. After scraping together all of Floridas information I was able to clear out the columns that we didn’t need, and reserve only the columns that showed median income, degrees of standard error, and the state which we’ll use as a primary key.


Load: the final database, tables/collections, and why this was chosen
When finalizing our database we chose to create independent schemas for each project members data. This way we could make collective pulls for information without getting twenty years of data at a time. We chose to use the year and the state as primary keys because we found it was what all of our data had in common and it would allow us to document the change in our datas annual summaries.



