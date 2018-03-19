DROP TABLE rooms_and_songs;
DROP TABLE guests;
DROP TABLE songs;
DROP TABLE rooms;

CREATE TABLE rooms (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  capacity INT,
  till INT
);

CREATE TABLE songs (
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255),
  artist VARCHAR(255)
);

CREATE TABLE guests (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  wallet INT,
  room_id INT8 REFERENCES rooms(id),
  favourite_song_id INT8 REFERENCES songs(id)
);

CREATE TABLE rooms_and_songs (
  id SERIAL8 PRIMARY KEY,
  room_id INT8 REFERENCES rooms(id),
  song_id INT8 REFERENCES songs(id)
);


INSERT INTO rooms (name, capacity, till)
  VALUES ('Rock', 20, 10);
INSERT INTO rooms (name, capacity, till)
  VALUES ('Pop', 15, 10);


INSERT INTO songs (title, artist)
  VALUES ('Free Fallin', 'Tom Petty');
INSERT INTO songs (title, artist)
  VALUES ('My Heart Will Go on', 'Celine Dion');
INSERT INTO songs (title, artist)
  VALUES ('Every Breath You Take', 'The Police');
INSERT INTO songs (title, artist)
  VALUES ('Rolling In The Deep', 'Adele');
INSERT INTO songs (title, artist)
  VALUES ('Dancing Queen', 'Abba');
INSERT INTO songs (title, artist)
  VALUES ('The Show Must Do On', 'Queen');
INSERT INTO songs (title, artist)
  VALUES ('Zombie', 'The Cranberries');
INSERT INTO songs (title, artist)
  VALUES ('Sweet Child O Mine', 'Guns N Roses');


INSERT INTO guests (name, wallet, room_id, favourite_song_id)
  VALUES ('Daniel', 20, 1, 1);
INSERT INTO guests (name, wallet, room_id, favourite_song_id)
  VALUES ('Ewa', 20, 1, 7);
INSERT INTO guests (name, wallet, room_id, favourite_song_id)
  VALUES ('James', 15, 2, 8);
INSERT INTO guests (name, wallet, room_id, favourite_song_id)
  VALUES ('Emma', 20, 2, 4);
INSERT INTO guests (name, wallet, room_id, favourite_song_id)
  VALUES ('Brian', 100, 1, 5);
INSERT INTO guests (name, wallet, room_id, favourite_song_id)
  VALUES ('Daniel', 5, 2, 3);

INSERT INTO rooms_and_songs (room_id, song_id)
  VALUES (1, 1);
INSERT INTO rooms_and_songs (room_id, song_id)
  VALUES (2, 2);
INSERT INTO rooms_and_songs (room_id, song_id)
  VALUES (2, 3);
INSERT INTO rooms_and_songs (room_id, song_id)
  VALUES (2, 4);
INSERT INTO rooms_and_songs (room_id, song_id)
  VALUES (2, 5);
INSERT INTO rooms_and_songs (room_id, song_id)
  VALUES (1, 6);
INSERT INTO rooms_and_songs (room_id, song_id)
  VALUES (1, 7);
INSERT INTO rooms_and_songs (room_id, song_id)
  VALUES (1, 8);

SELECT * FROM rooms;
SELECT * FROM songs;
SELECT * FROM guests;
SELECT * FROM rooms_and_songs;
