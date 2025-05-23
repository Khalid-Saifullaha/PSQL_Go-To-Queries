-- Active: 1747451077721@@127.0.0.1@5432@psql_queries
CREATE DATABASE psql_queries

CREATE TABLE publishers (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE books(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  author_name TEXT,
  published_year INT,
  price NUMERIC(6,2),
  in_stock BOOLEAN,
  publisher_id INT,
  FOREIGN KEY (publisher_id) REFERENCES publishers(id)
);

SELECT * FROM publishers;

SELECT * FROM books;