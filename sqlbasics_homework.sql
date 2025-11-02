-- SQL Basics Homework

-- 1. How many users have 'travel' in their bio? 2 travel users.
SELECT COUNT(*) AS travel_users
FROM users
WHERE bio LIKE '%travel%';