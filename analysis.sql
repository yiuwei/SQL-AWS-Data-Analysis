-- Data Analysis --

-- List all items from the users table --
SELECT * FROM social.users
ORDER BY username DESC;

-- Count the number of posts created by users--
SELECT users.username, COUNT(posts.post_id) AS total_posts
FROM social.users
LEFT JOIN social.posts ON users.user_id = posts.user_id
GROUP BY users.username;

-- Count the number of comments made by users --
SELECT users.username, COUNT(comments.comment_id) AS comment_item
FROM social.users
LEFT JOIN social.comments ON users.user_id = comments.user_id
GROUP BY users.username;

-- Show the most liked posts per category --
SELECT posts.post_id, posts.category, likes.num_likes AS like_item
FROM social.posts
JOIN social.likes ON posts.post_id = likes.post_id
WHERE likes.num_likes >= 600
ORDER BY like_item DESC;

-- Show the number of accepted request by username --
SELECT u.username, COUNT(f.followers_id) AS num_followers
FROM social.followers f
JOIN social.users u ON f.user_id = u.user_id
WHERE f.status = 'accepted'
GROUP BY u.username
ORDER BY num_followers DESC;