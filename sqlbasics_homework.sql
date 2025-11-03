-- SQL Basics Homework

-- 1. How many users have 'travel' in their bio? 2 travel users.
SELECT COUNT(*) AS travel_users
FROM users
WHERE bio LIKE '%travel%';

-- 2. How many posts were created between May 1st and May 10th, 2023? 1 Post
SELECT COUNT(*) AS may_posts
FROM posts
WHERE created_at BETWEEN '2023-05-01' AND '2023-05-10';

-- 3. What user has the most comments? user_id = 2, comment_count = 6
SELECT user_id, COUNT(*) AS comment_count
FROM comments
GROUP BY user_id
ORDER BY comment_count DESC
LIMIT 1;

-- 4. How many users have usernames that end with 'er'? 2
SELECT COUNT(*) AS usernames_end_with_er
FROM users
WHERE username LIKE '%er';

-- 5. What post has the most comments? post_id = 1, comment_count = 5
SELECT post_id, COUNT(*) AS comment_count
FROM comments
GROUP BY post_id
ORDER BY comment_count DESC
LIMIT 1;

-- 6. How many different user IDs have posted content? 50
SELECT COUNT(user_id) AS users_with_posts
FROM posts;

-- 7. What user has the most people following them? user_id = 1, followers_count = 7
SELECT followed_id AS user_id, COUNT(*) AS followers_count
FROM following
GROUP BY followed_id
ORDER BY followers_count DESC
LIMIT 1;