-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
CREATE TABLE "year" (
    "year" INT,
    CONSTRAINT "pk_year" PRIMARY KEY (
        "year"
     )
);
CREATE TABLE "incomes" (
    "state" VARCHAR(10),
    "median_income" INT,
    "year" INT
);
CREATE TABLE "housing" (
    "avg_sale_price" INT,
    "year" INT
);
CREATE TABLE "rental_pricing" (
    "county" VARCHAR(30),
    "0_BR" INT,
    "1_BR" INT,
    "2_BR" INT,
    "3_BR" INT,
    "4_BR" INT,
    "est_pop" INT,
    "year" INT
);
CREATE TABLE "homelessness" (
    "year" INT,
    "state" VARCHAR(10),
    "CoC_number" VARCHAR(30),
    "CoC_name" VARCHAR(255),
    "Chronically_Homeless_Individual" VARCHAR(255),
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
    "Unsheltered_Parenting_Youth_Under_18" VARCHAR(255)
);
ALTER TABLE "incomes" ADD CONSTRAINT "fk_incomes_year" FOREIGN KEY("year")
REFERENCES "year" ("year");
ALTER TABLE "housing" ADD CONSTRAINT "fk_housing_year" FOREIGN KEY("year")
REFERENCES "year" ("year");
ALTER TABLE "rental_pricing" ADD CONSTRAINT "fk_rental_pricing_year" FOREIGN KEY("year")
REFERENCES "year" ("year");
ALTER TABLE "homelessness" ADD CONSTRAINT "fk_homelessness_year" FOREIGN KEY("year")
REFERENCES "year" ("year");