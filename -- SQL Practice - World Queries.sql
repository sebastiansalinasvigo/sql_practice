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

-- Exercise 4: Countries with 'o' in name and population over 50 million
SELECT name, population
FROM world
WHERE name LIKE '%o%' AND population > 50000000
ORDER BY name;

-- Exercise 5: Countries with area between 500,000 and 2,000,000 km²
SELECT name, area
FROM world
WHERE area BETWEEN 500000 AND 2000000
ORDER BY area DESC;