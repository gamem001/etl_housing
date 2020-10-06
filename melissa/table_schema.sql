-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Incomes" (
    "state" VARCHAR(10)   NOT NULL,
    "median_income" INT   NOT NULL,
    "standard_error" INT   NOT NULL,
    "year" INT   NOT NULL,
    CONSTRAINT "pk_Incomes" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Housing" (
    "avg_sale_price" INT   NOT NULL,
    "year" INT   NOT NULL,
    CONSTRAINT "pk_Housing" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Rental_Pricing" (
    "year" INT   NOT NULL,
    "county" VARCHAR(30)   NOT NULL,
    "studio" INT   NOT NULL,
    "0_BR" INT   NOT NULL,
    "2_BR" INT   NOT NULL,
    "3_BR" INT   NOT NULL,
    "4_BR" INT   NOT NULL,
    "est_population" INT   NOT NULL,
    CONSTRAINT "pk_Rental_Pricing" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Homelessness" (
    "year" INT   NOT NULL,
    "state" VARCHAR(10)   NOT NULL,
    "CoC_number" VARCHAR(30)   NOT NULL,
    "CoC_name" VARCHAR(MAX)   NOT NULL,
    "Homeless_Individuals" VARCHAR(MAX)   NOT NULL,
    "Homeless_People_in_Families" VARCHAR(MAX)   NOT NULL,
    "Sheltered_Chronically_Homeless_Individuals" VARCHAR(MAX)   NOT NULL,
    "Sheltered_Homeless" VARCHAR(MAX)   NOT NULL,
    "Sheltered_Homeless_Individuals" VARCHAR(MAX)   NOT NULL,
    "Sheltered_Homeless_People_in_Families" VARCHAR(MAX)   NOT NULL,
    "Total_Homeless" VARCHAR(MAX)   NOT NULL,
    "Unsheltered_Chronically_Homeless_Individuals" VARCHAR(MAX)   NOT NULL,
    "Unsheltered_Homeless" VARCHAR(MAX)   NOT NULL,
    "Unsheltered_Homeless_Individuals" VARCHAR(MAX)   NOT NULL,
    "Unsheltered_Homeless_People_in_Families" VARCHAR(MAX)   NOT NULL,
    "Chronically_Homeless" VARCHAR(MAX)   NOT NULL,
    "Chronically_Homeless_People_in_Families" VARCHAR(MAX)   NOT NULL,
    "Homeless_Veterans" VARCHAR(MAX)   NOT NULL,
    "Sheltered_Chronically_Homeless" VARCHAR(MAX)   NOT NULL,
    "Sheltered_Chronically_Homeless_People_in_Families" VARCHAR(MAX)   NOT NULL,
    "Sheltered_Homeless_Veterans" VARCHAR(MAX)   NOT NULL,
    "Unsheltered_Chronically_Homeless" VARCHAR(MAX)   NOT NULL,
    "Unsheltered_Chronically_Homeless_People_in_Families" VARCHAR(MAX)   NOT NULL,
    "Unsheltered_Homeless_Veterans" VARCHAR(MAX)   NOT NULL,
    "Children_of_Parenting_Youth" VARCHAR(MAX)   NOT NULL,
    "Homeless_Unaccompanied_Children_(Under_18)" VARCHAR(MAX)   NOT NULL,
    "Homeless_Unaccompanied_Young_Adults_(Age_18-24)" VARCHAR(MAX)   NOT NULL,
    "Homeless_Unaccompanied_Youth_(Under_25)" VARCHAR(MAX)   NOT NULL,
    "Parenting_Youth_(Under_25)" VARCHAR(MAX)   NOT NULL,
    "Parenting_Youth_Age_18-24" VARCHAR(MAX)   NOT NULL,
    "Parenting_Youth_Under_18" VARCHAR(MAX)   NOT NULL,
    "Sheltered_Children_of_Parenting_Youth" VARCHAR(MAX)   NOT NULL,
    "Sheltered_Homeless_Unaccompanied_Children_(Under_18)" VARCHAR(MAX)   NOT NULL,
    "Sheltered_Homeless_Unaccompanied_Young_Adults_(Age_18-24)" VARCHAR(MAX)   NOT NULL,
    "Sheltered_Homeless_Unaccompanied_Youth_(Under_25)" VARCHAR(MAX)   NOT NULL,
    "Sheltered_Parenting_Youth_(Under_25)" VARCHAR(MAX)   NOT NULL,
    "Sheltered_Parenting_Youth_Age_18-24" VARCHAR(MAX)   NOT NULL,
    "Sheltered_Parenting_Youth_Under_18" VARCHAR(MAX)   NOT NULL,
    "Unsheltered_Children_of_Parenting_Youth" VARCHAR(MAX)   NOT NULL,
    "Unsheltered_Homeless_Unaccompanied_Children_(Under_18)" VARCHAR(MAX)   NOT NULL,
    "Unsheltered_Homeless_Unaccompanied_Young_Adults_(Age_18-24)" VARCHAR(MAX)   NOT NULL,
    "Unsheltered_Homeless_Unaccompanied_Youth_(Under_25)" VARCHAR(MAX)   NOT NULL,
    "Unsheltered_Parenting_Youth_(Under_25)" VARCHAR(MAX)   NOT NULL,
    "Unsheltered_Parenting_Youth_Age_18-24" VARCHAR(MAX)   NOT NULL,
    "Unsheltered_Parenting_Youth_Under_18" VARCHAR(MAX)   NOT NULL,
    CONSTRAINT "pk_Homelessness" PRIMARY KEY (
        "year"
     )
);

ALTER TABLE "Incomes" ADD CONSTRAINT "fk_Incomes_year" FOREIGN KEY("year")
REFERENCES "Homelessness" ("year");

ALTER TABLE "Housing" ADD CONSTRAINT "fk_Housing_year" FOREIGN KEY("year")
REFERENCES "Homelessness" ("year");

ALTER TABLE "Rental_Pricing" ADD CONSTRAINT "fk_Rental_Pricing_year" FOREIGN KEY("year")
REFERENCES "Homelessness" ("year");

