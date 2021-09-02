/*
Enter your query here.
*/

SELECT students.name
FROM (students
INNER JOIN friends
ON friends.id = students.id)
INNER JOIN packages
ON packages.id = students.id
WHERE (
    SELECT salary
    FROM packages
    WHERE packages.id = friends.friend_id
) > (
    SELECT packages.salary
    FROM packages
    WHERE packages.id = friends.id
)
ORDER BY (
    SELECT salary
    FROM packages
    WHERE packages.id = friends.friend_id
         );