CREATE DATABASE IF NOT EXISTS spotify;

USE spotify;


-- ---------------------------------------------------------------- USERS
CREATE TABLE IF NOT EXISTS users (
  user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(45) NOT NULL,
  password VARCHAR(30) NOT NULL,
  username VARCHAR(30) NOT NULL UNIQUE,
  birthdate DATE NOT NULL,
  gender VARCHAR(30) NOT NULL,
  country VARCHAR(30) NOT NULL,
  postal_code INT NOT NULL,
  status ENUM("free", "premium") NOT NULL
);


-- ---------------------------------------------------------------- SUBSCRIPTIONS
CREATE TABLE IF NOT EXISTS subscriptions (
  subscription_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  start_date DATE NOT NULL,
  renewal_date DATE NOT NULL,
  payment_method ENUM("Credit Card", "PayPal") NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);


-- ---------------------------------------------------------------- CREDIT_CARDS
CREATE TABLE IF NOT EXISTS credit_cards (
  credit_card_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  subscription_id INT NOT NULL,
  card_number VARCHAR(19) NOT NULL UNIQUE,
  expiration_month INT NOT NULL,
  expiration_year YEAR NOT NULL,
  security_code INT NOT NULL,
  FOREIGN KEY (subscription_id) REFERENCES subscriptions (subscription_id)
);


-- ---------------------------------------------------------------- PAYPALS
CREATE TABLE IF NOT EXISTS paypals (
  paypal_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  subscription_id INT NOT NULL,
  username VARCHAR(45) NOT NULL,
  FOREIGN KEY (subscription_id) REFERENCES subscriptions (subscription_id)
);


-- ---------------------------------------------------------------- PAYMENTS
CREATE TABLE IF NOT EXISTS payments (
  payment_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  subscription_id INT NOT NULL,
  payment_date DATETIME NOT NULL,
  amount DECIMAL(8,2) NOT NULL,
  FOREIGN KEY (subscription_id) REFERENCES subscriptions (subscription_id)
);


-- ---------------------------------------------------------------- PLAYLISTS
CREATE TABLE IF NOT EXISTS playlists (
  playlist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  title VARCHAR(100) NOT NULL,
  total_songs INT NOT NULL,
  creation_date DATETIME NOT NULL,
  status ENUM("active", "deleted") NOT NULL,
  shared BOOLEAN NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);


-- ---------------------------------------------------------------- ARTISTS
CREATE TABLE IF NOT EXISTS artists (
  artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  photo TEXT NOT NULL
);


-- ---------------------------------------------------------------- RELATED_ARTISTS
CREATE TABLE IF NOT EXISTS related_artists (
  relation_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  artist_id INT NOT NULL,
  related_artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists (artist_id),
  FOREIGN KEY (related_artist_id) REFERENCES artists (artist_id)
);


-- ---------------------------------------------------------------- ALBUMS
CREATE TABLE IF NOT EXISTS albums (
  album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  artist_id INT NOT NULL,
  title VARCHAR(100) NOT NULL,
  year YEAR NOT NULL,
  cover TEXT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
);


-- ---------------------------------------------------------------- SONGS
CREATE TABLE IF NOT EXISTS songs (
  song_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  duration VARCHAR(10) NOT NULL,
  play_count INT NOT NULL,
  album_id INT NULL,
  FOREIGN KEY (album_id) REFERENCES albums (album_id)
);


-- ---------------------------------------------------------------- PLAYLIST_SONGS
CREATE TABLE IF NOT EXISTS playlist_songs (
  playlist_id INT NOT NULL,
  song_id INT NOT NULL,
  user_id INT NOT NULL,
  add_date DATETIME NOT NULL,
  PRIMARY KEY (playlist_id, song_id),
  FOREIGN KEY (playlist_id) REFERENCES playlists (playlist_id),
  FOREIGN KEY (song_id) REFERENCES songs (song_id),
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);


-- ---------------------------------------------------------------- FOLLOWS
CREATE TABLE IF NOT EXISTS follows (
  follow_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
);


-- ---------------------------------------------------------------- FAVORITE_SONGS
CREATE TABLE IF NOT EXISTS favorite_songs (
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (song_id) REFERENCES songs (song_id)
);

-- ---------------------------------------------------------------- FAVORITE_ALBUMS
CREATE TABLE IF NOT EXISTS favorite_albums (
  user_id INT NOT NULL,
  album_id INT NOT NULL,
  PRIMARY KEY (user_id, album_id),
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (album_id) REFERENCES albums (album_id)
);



