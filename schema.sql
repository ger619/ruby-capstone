-- Create a item class table
CREATE TABLE item (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  genre TEXT,
  author TEXT,
  label TEXT,
  publish_date DATE,
  archived BOOLEAN,
);

-- Create a book class table
CREATE TABLE book (
  publisher TEXT,
  cover_state TEXT,
);

-- Create a label class table
CREATE TABLE label (
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	title TEXT,
	color TEXT
);

-- Create a game class table
CREATE TABLE game (
  id SERIAL PRIMARY KEY ,
  multiplayer VARCHAR,
  last_played_at DATE,
  publish_date DATE,
);

-- Create a author class table
CREATE TABLE author (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR
);