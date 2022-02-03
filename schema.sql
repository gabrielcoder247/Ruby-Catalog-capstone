CREATE TABLE book(
    id SERIAL PRIMARY KEY,
    publisher VARCHAR(100),
    cover_state VARCHAR(100),
    published_date date,
    archived boolean,
    label_id INT,
    genre_id INT,
    CONSTRAINT label_id FOREIGN KEY(label_id) REFERENCES label(id),
    CONSTRAINT genre_id FOREIGN KEY(genre_id) REFERENCES genre(id)
);