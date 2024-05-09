CREATE DATABASE IF NOT EXISTS youtube;

USE youtube;

-- ------------------------------------------------------------- USERS
CREATE TABLE IF NOT EXISTS users (
  user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(45) NOT NULL,
  password VARCHAR(30) NOT NULL,
  username VARCHAR(45) NOT NULL UNIQUE,
  birthdate DATE NOT NULL,
  gender VARCHAR(20) NOT NULL,
  country VARCHAR(45) NOT NULL,
  postal_code INT NOT NULL
);


-- ------------------------------------------------------------- VIDEOS
CREATE TABLE IF NOT EXISTS videos (
  video_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  upload_date DATETIME NOT NULL,
  title VARCHAR(60)  NOT NULL,
  description TEXT NOT NULL,
  size INT NOT NULL,
  video_name VARCHAR(60) NOT NULL,
  video_length VARCHAR(30) NOT NULL,
  thumbnail VARCHAR(200) NOT NULL,
  views INT NOT NULL,
  likes INT NULL,
  dislikes INT NULL,
  status ENUM("public", "private", "hidden") NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);


-- ------------------------------------------------------------- TAGS
CREATE TABLE IF NOT EXISTS tags (
  tag_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(45) NOT NULL,
  video_id INT NOT NULL,
  FOREIGN KEY (video_id) REFERENCES videos (video_id)
);


-- ------------------------------------------------------------- COMMENTS
CREATE TABLE IF NOT EXISTS comments (
  comment_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  video_id INT NOT NULL,
  comment_text TEXT NULL,
  comment_date DATETIME NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (video_id) REFERENCES videos (video_id)
);


-- ------------------------------------------------------------- COMMENTS_LIKE_DISLIKES
CREATE TABLE IF NOT EXISTS comment_likes_dislikes (
  comment_id INT NOT NULL,
  user_id INT NOT NULL,
  comment_action ENUM("like", "dislike") NULL,
  comment_like_data DATETIME NOT NULL,
  PRIMARY KEY (comment_id, user_id),
  FOREIGN KEY (comment_id) REFERENCES comments (comment_id),
  FOREIGN KEY (user_id) REFERENCES users (user_id)
  );


-- ------------------------------------------------------------- CHANNELS 
CREATE TABLE IF NOT EXISTS channels (
  channel_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(60) NOT NULL,
  description TEXT NOT NULL,
  creation_date DATETIME NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);


-- ------------------------------------------------------------- SUBSCRIPTIONS
CREATE TABLE IF NOT EXISTS subscriptions (
  subscription_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT NULL,
  channel_id INT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (channel_id) REFERENCES channels (channel_id)
);


-- ------------------------------------------------------------- VIDEOS_LIKE_DISLIKE
CREATE TABLE IF NOT EXISTS video_likes_dislikes (
  like_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  video_id INT NOT NULL,
  video_action ENUM("like", "dislike") NULL,
  like_date DATETIME NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (video_id) REFERENCES videos (video_id)
);


-- ------------------------------------------------------------- PLAYLISTS
CREATE TABLE IF NOT EXISTS playlists (
  playlist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  creation_date DATETIME NOT NULL,
  status ENUM("public", "private") NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);


-- -------------------------------------------------------------  PLAYLIST_VIDEOS
CREATE TABLE IF NOT EXISTS playlist_videos (
  videos_video_id INT NOT NULL, 
  playlists_playlist_id INT NOT NULL,
  PRIMARY KEY (videos_video_id, playlists_playlist_id),
  FOREIGN KEY (playlists_playlist_id) REFERENCES playlists (playlist_id),
  FOREIGN KEY (videos_video_id) REFERENCES videos (video_id)
);
