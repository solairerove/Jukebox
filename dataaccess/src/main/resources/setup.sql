CREATE TABLE account(
  id SERIAL PRIMARY KEY NOT NULL,
  login TEXT UNIQUE NOT NULL,
  email TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  jukebox_id INTEGER
);

CREATE TABLE role(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT NOT NULL
);

CREATE TABLE account_role(
  id SERIAL PRIMARY KEY NOT NULL,
  account_id INTEGER NOT NULL,
  role_id INTEGER NOT NULL
);

CREATE TABLE track(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  duration TEXT NOT NULL,
  genre_id INTEGER NOT NULL,
  album TEXT NOT NULL,
  band TEXT NOT NULL,
  link TEXT NOT NULL
);

CREATE TABLE jukebox(
  id SERIAL PRIMARY KEY NOT NULL
);

CREATE TABLE jukebox_track(
  id SERIAL PRIMARY KEY NOT NULL,
  jukebox_id INTEGER NOT NULL REFERENCES jukebox ON DELETE CASCADE,
  track_id INTEGER NOT NULL REFERENCES track ON DELETE CASCADE
);

CREATE TABLE genre(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT NOT NULL
);

CREATE TABLE album(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  year TEXT,
  band TEXT,
  description TEXT
);

CREATE TABLE band(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT UNIQUE NOT NULL,
  year TEXT,
  description TEXT
);

CREATE TABLE member(
  id SERIAL PRIMARY KEY NOT NULL,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  biography TEXT
);

CREATE TABLE band_member(
  id SERIAL PRIMARY KEY NOT NULL,
  band_id INTEGER NOT NULL,
  member_id INTEGER NOT NULL
);

CREATE TABLE band_album(
  id SERIAL PRIMARY KEY NOT NULL,
  band_id INTEGER NOT NULL,
  album_id INTEGER NOT NULL
);

CREATE TABLE album_track(
  id SERIAL PRIMARY KEY NOT NULL,
  album_id INTEGER NOT NULL,
  track_id INTEGER NOT NULL
);

TRUNCATE TABLE account_role RESTART IDENTITY CASCADE;

TRUNCATE TABLE account RESTART IDENTITY CASCADE;

TRUNCATE TABLE role RESTART IDENTITY CASCADE;
