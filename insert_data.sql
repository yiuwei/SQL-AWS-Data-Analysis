-- INSERT INTO TABLES
-- Insert into users table 
INSERT INTO social.users (user_id, username, email, profile_changed, created_at) VALUES 
(101, 'joe_smith', 'joe@gmail.com', 2, '2021-11-12'),
(201, 'logan_miller', 'logan@yahoo.com', 3, '2022-12-30'),
(301, 'jackson_brown', 'jackson@outlook.com', 5, '2023-12-10'),
(401, 'daniel_jones', 'daniel@gmail.com', 9, '2024-08-20'),
(501, 'jeffrey_davis', 'jeffrey@yahoo.com', 2,'2022-09-30'),
(601, 'david_brown', 'david@outlook.com', 1, '2024-12-10');

-- Insert into posts table
INSERT INTO social.posts (post_id, user_id, category, content, tags, posted_at) VALUES 
('PO10', 101, 'music', 'List of billboard 100 music', '#music', '2021-12-30'),
('PO20', 301, 'sport', 'NFL Games this afternoon ', '#football', '2024-12-31'),
('PO30', 501, 'film', 'Watch Titanic in theater ', '#romance', '2024-12-30'),
('PO40', 601, 'drama', 'Join us for a musical play', '#musical', '2024-12-15'),
('PO50', 201, 'movie', 'Best movie for all ages, IF', '#cartoon', '2023-12-10'),
('PO60', 101, 'business', 'Come for a business event', '#ai', '2024-12-15'),
('PO70', 401, 'computers', 'Talk to our robots', '#tech', '2025-12-10'),
('PO80', 201, 'lifestyle', 'Hike in the park this morning', '#workout','2024-12-28');

-- Insert into comments table
INSERT INTO social.comments (comment_id, user_id, post_id, messages, commented_at) VALUES 
('CO10', 101, 'PO10', 'Nice music post', '2022-1-10'),
('CO20', 101, 'PO10', 'Wow, great list', '2022-1-15'),
('CO30', 301, 'PO20', 'Great NFL game', '2025-02-20'),
('CO40', 301, 'PO20', 'Close game', '2025-01-10'),
('CO50', 301, 'PO20', 'Best match', '2025-01-15'),
('CO60', 501, 'PO30', 'Best oscar film', '2024-12-31'),
('CO70', 601, 'PO40', 'Amazing musical play', '2024-12-20'),
('CO80', 601, 'PO40', 'One in a lifetime play', '2024-12-30'),
('CO90', 201, 'PO50', 'Good and funny movie', '2023-12-11'),
('CO100', 101, 'PO60', 'Fantastic network event', '2024-12-16'),
('CO110', 401, 'PO70', 'Talk to robots', '2025-12-20'),
('CO120', 401, 'PO70', 'Met sophia the robot', '2025-12-22'),
('CO130', 201, 'PO80', 'Good exercise in the park', '2024-12-30');

-- Insert into likes table
INSERT INTO social.likes (like_id, user_id, post_id, num_likes) VALUES 
('LI10', 101,'PO10', 200),
('LI20', 301,'PO20', 100),
('LI30', 501,'PO30', 500),
('LI40', 601,'PO40', 600),
('LI50', 201,'PO50', 600),
('LI60', 101,'PO60', 800),
('LI70', 401,'PO70', 600),
('LI80', 201,'PO80', 200);

-- Insert into followers table
INSERT INTO social.followers (followers_id, user_id, followers, status) VALUES 
('FO10', 101, 8000, 'requested'),
('FO20', 201, 3000, 'accepted'),
('FO30', 301, 3000, 'accepted'),
('FO40', 201, 3000, 'accepted'),
('FO50', 301, 3000, 'accepted'),
('FO60', 401, 5000, 'removed'),
('FO70', 501, 6000, 'accepted'),
('FO80', 601, 2000, 'requested');