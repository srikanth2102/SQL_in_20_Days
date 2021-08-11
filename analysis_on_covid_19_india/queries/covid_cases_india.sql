-- using the covid database
USE covid;

-- creating table according to the csv file
CREATE TABLE covidindia(
    s_no INT,
    date DATE,
    time TIME,
    state VARCHAR(255),
    confirmed_indians INT,
    confirmed_foreigners INT,
    cured INT,
    death INT,
    confirmed INT
);

-- checking if data got imported correctly
SELECT *
FROM covidindia;

-- postive cases, death, recovery state wise
SELECT state, SUM(cured), SUM(death), SUM(confirmed)
FROM covidindia
GROUP BY state
ORDER BY SUM(confirmed) DESC;

-- states with most deaths due to covid 
SELECT state, SUM(death)
FROM covidindia
GROUP BY state
ORDER BY SUM(death) DESC;

--states with highest recovery ratio
SELECT state, (SUM(cured)/SUM(confirmed))*100 AS PERCENTAGE_CURED
FROM covidindia
GROUP BY state
ORDER BY (SUM(cured)/SUM(confirmed))*100 DESC;