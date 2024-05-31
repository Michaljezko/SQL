/*

SELECT COUNT(DISTINCT(population)) FROM europa
WHERE population > 10000000;

SELECT * FROM europa
ORDER BY area DESC;

SELECT country, population FROM europa
WHERE population BETWEEN 5000000 AND 10000000
ORDER BY population;

SELECT * FROM europa
WHERE capital_city LIKE 'V%';

SELECT SUM(area) FROM europa;

SELECT currency_id, COUNT(currency_id) FROM europa
GROUP BY currency_id
ORDER BY currency_id;

SELECT language_id, language, COUNT(language_id) FROM language_in_country
GROUP BY language_id, language
ORDER BY language_id;

SELECT country_id, COUNT(language) FROM language_in_country
GROUP BY country_id
HAVING COUNT(language) >=2;

SELECT country, language, currency 
FROM language_in_country
INNER JOIN europa
ON language_in_country.country_id = europa.country_id
INNER JOIN currency
ON europa.currency_id = currency.currency_id;

SELECT country, language 
FROM language_in_country
INNER JOIN europa
ON language_in_country.country_id = europa.country_id;

SELECT country, COUNT(language) 
FROM language_in_country
INNER JOIN europa
ON language_in_country.country_id = europa.country_id
GROUP BY country
HAVING COUNT(language) >=2;

SELECT join_to_eu, country FROM eu
FULL OUTER JOIN europa
ON eu.country_id = europa.country_id
WHERE eu.join_to_eu IS null;

INSERT INTO language(language_id, language)
VALUES ('39', 'Macedonsky');

INSERT INTO language_in_country(language_id, language, country_id)
VALUES('39', 'Macedonsky', '35');


*/









