-- Database --
SHOW DATABASE

-- Create a new database
CREATE DATABASE social;

-- Use the database
USE social;

-- CREATE THE TABLES ----
--- Create users table ---
CREATE TABLE social.users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
    profile_changed INT NOT NULL,
    created_at DATE NOT NULL
);

-- Create posts table -- 
CREATE TABLE social.posts (
    post_id VARCHAR(50) PRIMARY KEY,
    user_id INT NOT NULL,
    category VARCHAR(50) NOT NULL,
    content VARCHAR(50) NOT NULL,
    tags VARCHAR(100) NOT NULL,
    posted_at DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Create comments table
CREATE TABLE social.comments (
    comment_id VARCHAR(50) PRIMARY KEY,
    user_id INT NOT NULL,
    post_id VARCHAR(50) NOT NULL,
    messages VARCHAR(50) NOT NULL,
    commented_at DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id)
);

-- Create likes table
CREATE TABLE social.likes (
    like_id VARCHAR(50) PRIMARY KEY,
    user_id INT NOT NULL,
    post_id VARCHAR(50) NOT NULL,
    num_likes INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id)
);

-- Create followers table
CREATE TABLE social.followers (
    followers_id VARCHAR(50) PRIMARY KEY,
    user_id INT NOT NULL,
    followers INT NOT NULL,
    status ENUM('requested', 'accepted', 'removed') DEFAULT 'requested',
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);