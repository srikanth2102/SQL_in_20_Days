CREATE TABLE test(
    date DATE,
    state VARCHAR(255),
    total_samples INT,
    positive INT
);

-- total positive cases in INDIA statewise
SELECT state, SUM(positive)
FROM test
GROUP BY state
ORDER BY SUM(positive) DESC;

-- testing done in INDIA statewise
SELECT state, SUM(total_samples) AS no_of_testing
FROM test
GROUP BY state
ORDER BY SUM(total_samples) DESC;

-- percentage of people diagonsed as positive among tested people
SELECT state, ((positive/total_samples)*100) as postive_percentage
FROM test 
GROUP BY state 
ORDER BY ((positive/total_samples)*100) DESC;
