-- Create a book class table
CREATE TABLE book (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  publish_date DATE,
  archived bool,
  publisher TEXT,
  cover_state TEXT,
  label_id INT,
  FOREIGN KEY (label_id) REFERENCES label (id),
);

-- Create a label class table
CREATE TABLE label (
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	title TEXT,
	color TEXT
);