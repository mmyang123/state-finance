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

select * from income