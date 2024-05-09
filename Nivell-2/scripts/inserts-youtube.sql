USE youtube;

INSERT INTO users (email, password, username, birthdate, gender, country, postal_code)
VALUES
("gino.dueville@gmail.com", "gi44no", "gino", "1980-02-02", "home", "Italia", 35141),               -- user_id 1
("amedeo.ortiga@gmail.com", "amo17", "ame+deo", "1968-03-02", "home", "Italia", 35220),             -- user_id 2
("paolo.rossi72@gmail.com", "pr72vicenza", "paoloR", "1958-10-11", "home", "Italia", 31000);        -- user_id 3


INSERT INTO videos (user_id, upload_date, title, description, size, video_name, video_length, thumbnail, views, likes, dislikes, status)
VALUES
(1, "2024-05-03 08:28:17", "TÍTOL 1", "Lorem ipsum 1", 752, "video-1", "35:27", "link-thumbnail-1", 175, 13, 1, "public"),           -- video_id 1
(1, "2024-05-05 15:12:45", "TÍTOL 2", "Lorem ipsum 2", 543, "video-2", "27:33", "link-thumbnail-2", 34, 2, 0, "public"),             -- video_id 2
(2, "2024-05-05 19:04:59", "TÍTOL 3", "Lorem ipsum 3", 342, "video-3", "16:27", "link-thumbnail-3", 432, 34, 12, "public"),          -- video_id 3
(3, "2024-05-07 12:12:10", "TÍTOL 4", "Lorem ipsum 4", 854, "video-4", "42:27", "link-thumbnail-4", 323, 2, 0, "public");            -- video_id 4


INSERT INTO tags (name, video_id)
VALUES
("moto", 1),
("motocross", 1),
("enduro", 1),
("ducati", 1),
("moto", 2),
("viaggi", 2),
("prova su strada", 2),
("yamaha", 2),
("cucina italiana", 3),
("amatriciana", 3),
("calcio amatoriale", 4),
("torneo scapoli-ammogliati 2024", 4);


INSERT INTO comments (user_id, video_id, comment_text, comment_date)
VALUES
(1, 3, "Proprio un buon piatto! complimenti per la ricetta.", "2024-05-06 11:11:21"),                                           -- comment_id 1
(1, 4, "Che partita!! Mi sono quasi rotto un ginocchio, ma la vittoria è stata incredibile", "2024-05-08 10:54:32"),            -- comment_id 2
(2, 1, "Non vedo l'ora di comprarmi la Desert X", "2024-05-06 22:23:11"),                                                       -- comment_id 3
(3, 3, "Ho preparato il piatto per un pranzo con tutta la famiglia ed è stato un successo!", "2024-05-08 17:01:55");            -- comment_id 4


INSERT INTO comment_likes_dislikes (comment_id, user_id, comment_action, comment_like_data)
VALUES
(1, 2, "like", "2024-05-06 13:21:12"),
(4, 2, "like", "2024-05-09 13:00:12"),
(2, 3, "like", "2024-05-10 15:27:00");


INSERT INTO channels (name, description, creation_date, user_id)
VALUES
("In moto dappertutto", "lorem ipsum", "2024-05-01 23:21:12", 1),                     -- channel_id 1
("Ricette con Amedeo", "lorem ipsum etc etc", "2023-12-31 00:21:12", 2);              -- channel_id 2


INSERT INTO subscriptions (user_id, channel_id)
VALUES 
(3, 1),
(3, 2),
(2, 1),
(1, 2);


INSERT INTO video_likes_dislikes (user_id, video_id, video_action, like_date)
VALUES
(1, 3, "like", "2024-05-07 11:11:21"),
(3, 3, "like", "2024-05-08 21:00:21"),
(2, 1, "like", "2024-05-06 13:13:13"),
(3, 2, "like", "2024-05-06 13:56:21");


INSERT INTO playlists (name, creation_date, status, user_id)
VALUES 
("Ricette di cucina", "2024-05-08 09:41:23", "private", 3),       -- playlist_id 1
("Tutto sulle moto", "2024-05-07 14:33:51", "public", 2);         -- playlist_id 2


INSERT INTO playlist_videos (videos_video_id, playlists_playlist_id)
VALUES
(1, 2),
(2, 2),
(3, 1);