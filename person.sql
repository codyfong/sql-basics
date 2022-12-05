CREATE TABLE person (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    height FLOAT NOT NULL,
    city VARCHAR(50) NOT NULL,
    favorite_color VARCHAR(50) NOT NULL
);

INSERT INTO person(name, age, height, city, favorite_color)
VALUES 
('Cody', 24, 178, 'Salt Lake City', 'Purple'), 
('Sean', 25, 180, 'Los Angeles', 'Blue'), 
('John', 21, 160, 'Memphis', 'Red'), 
('Andrew', 27, 190, 'Layton', 'Red'), 
('Levi', 30, 200, 'Salt Lake City', 'Green');

SELECT * FROM person ORDER BY height DESC;
SELECT * FROM person ORDER BY height ASC;

SELECT * FROM person ORDER BY age DESC;

SELECT * FROM person WHERE age > 20;

SELECT * FROM person WHERE age = 18;

SELECT * FROM person WHERE age < 20 OR age > 30;

SELECT * FROM PERSON WHERE age != 27;

SELECT * FROM person WHERE favorite_color != 'Red';

SELECT * FROM person WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

SELECT * FROM person WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green');

SELECT * FROM person WHERE favorite_color IN ('Yellow', 'Purple');
