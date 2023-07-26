SELECT FirstName, LastName, Country, 
    CASE 
        WHEN Country = 'Brazil' or Country = 'Canada' or Country = 'USA' or Country = 'Argentina' or Country = 'Chile' THEN 'America'
        WHEN Country = 'Australia' THEN 'Oceania'
        WHEN Country = 'India' THEN 'Asia'
        ELSE 'Europe'
    END AS 'Continent'
FROM customers
