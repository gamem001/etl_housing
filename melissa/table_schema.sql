-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "incomes" (
    "state" VARCHAR(10),
    "median_income" INT,
    "standard_error" INT,
    "year" INT,
    CONSTRAINT "pk_incomes" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "housing" (
    "avg_sale_price" INT,
    "year" INT,
    CONSTRAINT "pk_housing" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "rental_pricing" (
    "year" INT,
    "county" VARCHAR(30),
    "studio" INT,
    "0_BR" INT,
    "2_BR" INT,
    "3_BR" INT,
    "4_BR" INT,
    "est_population" INT,
    CONSTRAINT "pk_rental_pricing" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "homelessness" (
    "year" INT,
    "state" VARCHAR(10),
    "CoC_number" VARCHAR(30),
    "CoC_name" VARCHAR(255),
	"Chronically_Homeless_Individuals" VARCHAR(255),
    "Homeless_Individuals" VARCHAR(255),
    "Homeless_People_in_Families" VARCHAR(255),
    "Sheltered_Chronically_Homeless_Individuals" VARCHAR(255),
    "Sheltered_Homeless" VARCHAR(255),
    "Sheltered_Homeless_Individuals" VARCHAR(255),
    "Sheltered_Homeless_People_in_Families" VARCHAR(255),
    "Total_Homeless" VARCHAR(255),
    "Unsheltered_Chronically_Homeless_Individuals" VARCHAR(255),
    "Unsheltered_Homeless" VARCHAR(255),
    "Unsheltered_Homeless_Individuals" VARCHAR(255),
    "Unsheltered_Homeless_People_in_Families" VARCHAR(255),
    "Chronically_Homeless" VARCHAR(255),
    "Chronically_Homeless_People_in_Families" VARCHAR(255),
    "Homeless_Veterans" VARCHAR(255),
    "Sheltered_Chronically_Homeless" VARCHAR(255),
    "Sheltered_Chronically_Homeless_People_in_Families" VARCHAR(255),
    "Sheltered_Homeless_Veterans" VARCHAR(255),
    "Unsheltered_Chronically_Homeless" VARCHAR(255),
    "Unsheltered_Chronically_Homeless_People_in_Families" VARCHAR(255),
    "Unsheltered_Homeless_Veterans" VARCHAR(255),
    "Children_of_Parenting_Youth" VARCHAR(255),
    "Homeless_Unaccompanied_Children_(Under_18)" VARCHAR(255),
    "Homeless_Unaccompanied_Young_Adults_(Age_18-24)" VARCHAR(255),
    "Homeless_Unaccompanied_Youth_(Under_25)" VARCHAR(255),
    "Parenting_Youth_(Under_25)" VARCHAR(255),
    "Parenting_Youth_Age_18-24" VARCHAR(255),
    "Parenting_Youth_Under_18" VARCHAR(255),
    "Sheltered_Children_of_Parenting_Youth" VARCHAR(255),
    "Sheltered_Homeless_Unaccompanied_Children_(Under_18)" VARCHAR(255),
    "Sheltered_Homeless_Unaccompanied_Young_Adults_(Age_18-24)" VARCHAR(255),
    "Sheltered_Homeless_Unaccompanied_Youth_(Under_25)" VARCHAR(255),
    "Sheltered_Parenting_Youth_(Under_25)" VARCHAR(255),
    "Sheltered_Parenting_Youth_Age_18-24" VARCHAR(255),
    "Sheltered_Parenting_Youth_Under_18" VARCHAR(255),
    "Unsheltered_Children_of_Parenting_Youth" VARCHAR(255),
    "Unsheltered_Homeless_Unaccompanied_Children_(Under_18)" VARCHAR(255),
    "Unsheltered_Homeless_Unaccompanied_Young_Adults_(Age_18-24)" VARCHAR(255),
    "Unsheltered_Homeless_Unaccompanied_Youth_(Under_25)" VARCHAR(255),
    "Unsheltered_Parenting_Youth_(Under_25)" VARCHAR(255),
    "Unsheltered_Parenting_Youth_Age_18-24" VARCHAR(255),
    "Unsheltered_Parenting_Youth_Under_18" VARCHAR(255),
    CONSTRAINT "pk_homelessness" PRIMARY KEY (
        "year"
     )
);

ALTER TABLE "incomes" ADD CONSTRAINT "fk_incomes_year" FOREIGN KEY("year")
REFERENCES "homelessness" ("year");

ALTER TABLE "housing" ADD CONSTRAINT "fk_housing_year" FOREIGN KEY("year")
REFERENCES "homelessness" ("year");

ALTER TABLE "rental_pricing" ADD CONSTRAINT "fk_rental_pricing_year" FOREIGN KEY("year")
REFERENCES "homelessness" ("year");

