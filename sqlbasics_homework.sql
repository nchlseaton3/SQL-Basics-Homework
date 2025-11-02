-- SQL Basics Homework

-- 1. How many users have 'travel' in their bio? 2 travel users.
SELECT COUNT(*) AS travel_users
FROM users
WHERE bio LIKE '%travel%';

-- 2. How many posts were created between May 1st and May 10th, 2023? 1 Post
SELECT COUNT(*) AS may_posts
FROM posts
WHERE created_at BETWEEN '2023-05-01' AND '2023-05-10';