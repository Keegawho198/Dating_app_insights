SELECT COUNT(*)
FROM dating;

SELECT *
FROM dating;

-- Project Name: "MatchMaster Insights"
-- FOR learning purposes

-- What is the average age of the users?
SELECT AVG(Age)
FROM dating;

-- What is the gender distribution of the users?
SELECT COUNT(Gender)
FROM dating
GROUP BY gender;

SELECT g.gender AS Gender, 
       COUNT(d.gender) AS Count
FROM (SELECT 'Male' AS gender 
      UNION ALL 
      SELECT 'Female') AS g
LEFT JOIN dating AS d
ON g.gender = d.gender
GROUP BY g.gender;


-- What are the most common interests among users?
SELECT DISTINCT interests, COUNT(interests) AS count
FROM dating
GROUP BY interests
ORDER BY count DESC;





-- How many users are looking for Casual Dating vs. Marriage?
-- Hint: Use COUNT() and GROUP BY on the Looking For column.

-- What is the most common occupation among users?
-- Hint: Use COUNT() and GROUP BY on the Occupation column.

-- What is the average swiping history of users based on their frequency of usage?
-- Hint: Use AVG() on the Swiping History column with GROUP BY on the Frequency of Usage column.

-- How many users have children?
-- Hint: Use COUNT() and GROUP BY on the Children column.

-- What is the average height of users?
-- Hint: Use AVG() on the Height column.

-- What is the education level distribution among users?
-- Hint: Use COUNT() and GROUP BY on the