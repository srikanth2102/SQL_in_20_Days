-- SPECIFYING THE DATABASE WE USE  
USE covid;

-- creating table as in the csv file
CREATE TABLE vaccination(
    date DATE,
    state VARCHAR(255),
    doses_given INT,
    total_session INT,
    total_sites INT,
    first_dose INT,
    second_dose INT,
    male INT,
    female INT,
    transgender INT,
    covaxin INT,
    covishield INT,
    suptnik INT,
    AEFI INT,
    18_to_45 INT,
    45_to_60 INT,
    60_above INT,
    total_people_vaccinated INT
);

-- cehcking if data got imported correctly
SELECT *
FROM vaccination;

-- count of vaccines admistrated
SELECT state, SUM(covaxin) AS covaxin_adminstrated, SUM(covishield) AS covishield_adminstrated, SUM(suptnik) AS sputnik_adminstrated
FROM vaccination
GROUP BY state
ORDER BY state ASC;

-- vaccination by age group
SELECT state,SUM(18_to_45) AS 18_to_45, SUM(45_to_60) AS 45_to_60, SUM(60_above) AS 60_above
FROM vaccination
GROUP BY state
ORDER BY state ASC;


-- vaccination state wise
SELECT state,SUM(doses_given) AS total_doses, SUM(first_dose) AS first_dose, SUM(second_dose) AS fully_vaccinated
FROM vaccination
WHERE state<>'India'
GROUP BY state
ORDER BY SUM(doses_given) DESC;

-- GENDER WISE VACCINATION 
SELECT state,SUM(male) AS MALE, SUM(female) AS FEMALE, SUM(transgender) AS TRANSGENDER
FROM vaccination
WHERE state<>'India'
GROUP BY state
ORDER BY SUM(male)+SUM(female)+SUM(transgender) DESC; 

-- people who suffered from adverse side effects
SELECT state ,SUM(doses_given) AS DOSES_ADMINSTRATED, SUM(AEFI) AS PEOPLE_WITH_SIDE_EFFECTS, ((SUM(AEFI)/SUM(doses_given))*100) AS PERCENTAGE_OF_PEOPLE_WITH_SIDE_EFFECTS
FROM vaccination
WHERE state<>'India'
GROUP BY state
ORDER BY ((SUM(AEFI)/SUM(doses_given))*100) DESC;

-- STATEWISE POSITIVE AND VACCINATED PEOPLE
SELECT vaccination.state, SUM(vaccination.total_people_vaccinated) , SUM(test.positive)
FROM vaccination
INNER JOIN test
ON vaccination.state=test.state
GROUP BY vaccination.state
ORDER BY SUM(test.positive) DESC;
