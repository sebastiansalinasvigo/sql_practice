-- SQL Practice - World Table
-- Author: Sebastian Salinas
-- Date: June 2026

-- Create table
CREATE TABLE world (
    name VARCHAR(100),
    continent VARCHAR(100),
    area BIGINT,
    population BIGINT,
    gdp BIGINT
);

-- Exercise 1: Countries in South America ordered by population
SELECT name, population
FROM world
WHERE continent = 'South America'
ORDER BY population DESC;

-- Exercise 2: Countries with GDP over 1 trillion, in billions
SELECT name, ROUND(gdp / 1000000000, 2) AS gdp_billions
FROM world
WHERE gdp > 1000000000000
ORDER BY gdp DESC;

-- Exercise 3: Population density for Asian countries
SELECT name, ROUND(population / area, 2) AS density
FROM world
WHERE continent = 'Asia'
ORDER BY density DESC;
