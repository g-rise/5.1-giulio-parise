USE spotify;

INSERT INTO users (email, password, username, birthdate, gender, country, postal_code, status) 
VALUES
("carlo.martello@gmail.com", "carma23", "car-ma", "1980-03-16", "uomo", "Italia", 35100, "premium"),         -- user_id 1
("giacomo.agostini@gmail.com", "agooorf", "ago", "1955-06-14", "uomo", "Italia", 02030, "premium"),          -- user_id 2
("valentino-rossi@gmail.com", "carma23", "vale46", "1979-05-11", "uomo", "Italia", 04300, "premium");        -- user_id 3


INSERT INTO subscriptions (user_id, start_date, renewal_date, payment_method)
VALUES
(1, "2022-01-01", "2025-01-01", "Credit Card"),               -- subscription_id 1
(2, "2023-02-02", "2025-02-02", "Credit Card"),               -- subscription_id 2
(3, "2024-04-04", "2025-04-04", "PayPal");                    -- subscription_id 3


INSERT INTO paypals (subscription_id, username)
VALUES
(3, "Valente46");


INSERT INTO credit_cards (subscription_id, card_number, expiration_month, expiration_year, security_code)
VALUES
(1, "3030 4000 1845 7200", 12, 2024, 565),
(2, "3031 4000 1845 5322", 09, 2024, 321);


INSERT INTO payments (subscription_id, payment_date, amount)
VALUES
(1, "2022-01-01 03:02:21", 87.50),
(1, "2023-01-01 00:00:01", 88.50),
(1, "2024-01-01 00:00:01", 90.50),
(2, "2023-02-02 15:23:21", 88.50),
(2, "2024-02-02 00:00:01", 90.50),
(3, "2024-04-04 17:00:27", 90.50);


INSERT INTO playlists (user_id, title, total_songs, creation_date, status, shared)
VALUES
(1, "canzoni italiane", 5, "2024-01-16 16:18:20", "active", true);               -- playlist_id 1


INSERT INTO artists (name, photo)
VALUES
("Francesco De Gregori", "link1234"),                                    -- artist_id 1 
("Lucio Dalla", "link232234"),                                           -- artist_id 2
("Ornella Vanoni", "link32323"),                                         -- artist_id 3 
("Equipe 84", "link2222");                                               -- artist_id 4 


INSERT INTO related_artists (artist_id, related_artist_id)
VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 3),
(2, 4),
(4, 3);


INSERT INTO albums (artist_id, title, year, cover)
VALUES
(1, "Alice no lo sa", 1970, "linkimg1"),                              -- album_id 1
(2, "Storie di casa mia", 1970, "linkimg2"),                          -- album_id 2
(3, "Abbracciami forte", 2000, "linkimg3"),                           -- album_id 3
(4, "CAsa mia", 1971, "linkimg4");                                    -- album_id 4


INSERT INTO songs (title, duration, play_count, album_id)
VALUES
("Alice", "03:43", 1008702, 1),                                                         -- song_id 1
("Le strade di lei", "04:14", 2345000, 1),                                              -- song_id 2
("Itaca", "04:08", 324500, 2),                                                          -- song_id 3
("La casa in riva al mare", "03:58", 235980, 2),                                        -- song_id 4
("Anche se", "03:52", 1008347, 3),                                                      -- song_id 5
("CHe barba amore mio", "03:27", 245087, 3),                                            -- song_id 6
("Casa mia", "04:01", 320087, 4),                                                       -- song_id 7
("Paranoia", "07:01", 210087, 4);                                                       -- song_id 8


INSERT INTO playlist_songs (playlist_id, song_id, user_id, add_date)
VALUES
(1, 1, 1, "2024-03-03 17:02:59"),
(1, 5, 1, "2024-03-03 17:22:34"),
(1, 8, 1, "2024-03-03 17:33:12"),
(1, 7, 2, "2024-03-24 11:14:12"),
(1, 3, 3, "2024-05-08 15:02:46");


INSERT INTO follows (user_id, artist_id)
VALUES 
(1, 1),
(1, 3),
(2, 2),
(3, 4),
(3, 2);


INSERT INTO favorite_songs (user_id, song_id)
VALUES 
(1, 1),
(1, 2),
(1, 8),
(2, 7),
(2, 6),
(3, 1),
(3, 4),
(3, 2),
(3, 8);


INSERT INTO favorite_albums (user_id, album_id)
VALUES 
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3);

