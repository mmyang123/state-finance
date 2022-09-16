-- Create tables
create table "housing" (
	"state" varchar(5) not null primary key,
	"median_home_price" integer not null
);

create table "poverty" (
	"state" varchar(5) not null primary key,
	"poverty_rate" decimal(5,4)
);

create table "income" (
	"state" varchar(5) not null primary key,
	"median_income" integer not null,
	"avg_income_growth_rate" decimal(5,4)
);

-- Join tables together
-- NOTE: Only run this after loading data from pandas
select housing.state,
	housing.median_home_price,
	poverty.poverty_rate,
	income.median_income,
	income.avg_income_growth_rate
from housing
inner join poverty on
housing.state = poverty.state
inner join income on
housing.state = income.state;

	
	

