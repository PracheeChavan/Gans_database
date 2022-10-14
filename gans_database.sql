DROP DATABASE gans_database ;
CREATE DATABASE gans_database;

USE gans_database;
drop table cities;
CREATE TABLE cities (
    city_id int auto_increment, 
    city varchar(200), 
    country varchar(25),
    population integer,
    PRIMARY KEY (city_id)
);

CREATE TABLE weathers (
	id int auto_increment,
	city_id int, 
    forecast_time Datetime,
    outlook VARCHAR(200),
    temperature decimal(4,2),
    feels_like decimal(4,0),
	wind_speed decimal(3,2),
    pop decimal(3,2),
    PRIMARY KEY (id),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

CREATE TABLE airports (
    city_id INT ,
    airport_icao VARCHAR(25),
    airport_name VARCHAR(25),
    PRIMARY KEY (airport_icao),
	FOREIGN KEY (city_id) REFERENCES cities(city_id)
  
);

CREATE TABLE flights (
	flight_id INT auto_increment,
    flight_number VARCHAR(25),
    departure_icao VARCHAR(25),
    arrival_icao VARCHAR(25),
    arrival_time datetime,
    PRIMARY KEY (flight_id),
    FOREIGN KEY (arrival_icao) REFERENCES airports(airport_icao)
);
select * from cities;
select * from airports;
select * from flights ;
select * from weathers