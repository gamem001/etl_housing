-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
CREATE TABLE "incomes" (
    "state" VARCHAR(10)   NOT NULL,
    "median_income" INT   NOT NULL,
    "standard_error" INT   NOT NULL,
    "year" INT   NOT NULL,
    CONSTRAINT "pk_incomes" PRIMARY KEY (
        "year"
     )
);
CREATE TABLE "housing" (
    "avg_sale_price" INT   NOT NULL,
    "year" INT   NOT NULL,
    CONSTRAINT "pk_housing" PRIMARY KEY (
        "year"
     )
);
CREATE TABLE "rental_pricing" (
    "year" INT   NOT NULL,
    "county" VARCHAR(30)   NOT NULL,
    "0_BR" INT   NOT NULL,
    "1_BR" INT   NOT NULL,
    "2_BR" INT   NOT NULL,
    "3_BR" INT   NOT NULL,
    "4_BR" INT   NOT NULL,
    "est_pop" INT   NOT NULL,
    CONSTRAINT "pk_rental_pricing" PRIMARY KEY (
        "year"
     )
);
CREATE TABLE "homelessness" (
    "year" INT   NOT NULL,
    "state" VARCHAR(10)   NOT NULL,
    "CoC_number" VARCHAR(30)   NOT NULL,
    "CoC_name" VARCHAR(255)   NOT NULL,
    "Homeless_Individuals" VARCHAR(255)   NOT NULL,
    "Homeless_People_in_Families" VARCHAR(255)   NOT NULL,
    "Sheltered_Chronically_Homeless_Individuals" VARCHAR(255)   NOT NULL,
    "Sheltered_Homeless" VARCHAR(255)   NOT NULL,
    "Sheltered_Homeless_Individuals" VARCHAR(255)   NOT NULL,
    "Sheltered_Homeless_People_in_Families" VARCHAR(255)   NOT NULL,
    "Total_Homeless" VARCHAR(255)   NOT NULL,
    "Unsheltered_Chronically_Homeless_Individuals" VARCHAR(255)   NOT NULL,
    "Unsheltered_Homeless" VARCHAR(255)   NOT NULL,
    "Unsheltered_Homeless_Individuals" VARCHAR(255)   NOT NULL,
    "Unsheltered_Homeless_People_in_Families" VARCHAR(255)   NOT NULL,
    "Chronically_Homeless" VARCHAR(255)   NOT NULL,
    "Chronically_Homeless_People_in_Families" VARCHAR(255)   NOT NULL,
    "Homeless_Veterans" VARCHAR(255)   NOT NULL,
    "Sheltered_Chronically_Homeless" VARCHAR(255)   NOT NULL,
    "Sheltered_Chronically_Homeless_People_in_Families" VARCHAR(255)   NOT NULL,
    "Sheltered_Homeless_Veterans" VARCHAR(255)   NOT NULL,
    "Unsheltered_Chronically_Homeless" VARCHAR(255)   NOT NULL,
    "Unsheltered_Chronically_Homeless_People_in_Families" VARCHAR(255)   NOT NULL,
    "Unsheltered_Homeless_Veterans" VARCHAR(255)   NOT NULL,
    "Children_of_Parenting_Youth" VARCHAR(255)   NOT NULL,
    "Homeless_Unaccompanied_Children_(Under_18)" VARCHAR(255)   NOT NULL,
    "Homeless_Unaccompanied_Young_Adults_(Age_18-24)" VARCHAR(255)   NOT NULL,
    "Homeless_Unaccompanied_Youth_(Under_25)" VARCHAR(255)   NOT NULL,
    "Parenting_Youth_(Under_25)" VARCHAR(255)   NOT NULL,
    "Parenting_Youth_Age_18-24" VARCHAR(255)   NOT NULL,
    "Parenting_Youth_Under_18" VARCHAR(255)   NOT NULL,
    "Sheltered_Children_of_Parenting_Youth" VARCHAR(255)   NOT NULL,
    "Sheltered_Homeless_Unaccompanied_Children_(Under_18)" VARCHAR(255)   NOT NULL,
    "Sheltered_Homeless_Unaccompanied_Young_Adults_(Age_18-24)" VARCHAR(255)   NOT NULL,
    "Sheltered_Homeless_Unaccompanied_Youth_(Under_25)" VARCHAR(255)   NOT NULL,
    "Sheltered_Parenting_Youth_(Under_25)" VARCHAR(255)   NOT NULL,
    "Sheltered_Parenting_Youth_Age_18-24" VARCHAR(255)   NOT NULL,
    "Sheltered_Parenting_Youth_Under_18" VARCHAR(255)   NOT NULL,
    "Unsheltered_Children_of_Parenting_Youth" VARCHAR(255)   NOT NULL,
    "Unsheltered_Homeless_Unaccompanied_Children_(Under_18)" VARCHAR(255)   NOT NULL,
    "Unsheltered_Homeless_Unaccompanied_Young_Adults_(Age_18-24)" VARCHAR(255)   NOT NULL,
    "Unsheltered_Homeless_Unaccompanied_Youth_(Under_25)" VARCHAR(255)   NOT NULL,
    "Unsheltered_Parenting_Youth_(Under_25)" VARCHAR(255)   NOT NULL,
    "Unsheltered_Parenting_Youth_Age_18-24" VARCHAR(255)   NOT NULL,
    "Unsheltered_Parenting_Youth_Under_18" VARCHAR(255)   NOT NULL,
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