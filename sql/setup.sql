-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS authors_books;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;

CREATE TABLE books (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title VARCHAR NOT NULL,
    author VARCHAR NOT NULL,
    published INT NOT NULL
);

INSERT INTO books (title, author, published)
VALUES
('Fully-configurable foreground project', 'Albertine Jeffries', 2004),
('Adaptive bifurcated encoding', 'Gran Cheake', 2012),
('Mandatory stable pricing structure', 'Arleen MacAindreis', 2012),
('Balanced 24/7 ability', 'Mercie Savery', 2012),
('Sharable needs-based instruction set', 'Minna Nockells', 2011),
('Distributed upward-trending alliance', 'Catha Ocurrane', 1996),
('Intuitive reciprocal orchestration', 'Devonna Philp', 2003),
('Configurable intermediate circuit', 'Reinwald Fleeman', 2008),
('Assimilated multi-tasking matrices', 'Catharine Ormeilly', 2173),
('Expanded grid-enabled methodology', 'Coralyn Thorowgood', 2216),
('Persevering discrete parallelism', 'Garrek Jutson', 2009),
('Robust intermediate process improvement', 'Rebe Johnston', 1992),
('Reverse-engineered 5th generation open architecture', 'Elsie MacDuff', 2012),
('Cross-platform hybrid hardware', 'Cooper Wharf', 1987),
('Enhanced discrete data-warehouse', 'Henrie Batrip', 2061),
('Stand-alone systemic success', 'Berton Dymock', 2094),
('Realigned multi-state complexity', 'Lanie Hurler', 1993),
('Customizable dynamic internet solution', 'Ianthe Crackel', 2012),
('Multi-channelled neutral secured line', 'Thane Taye', 2212),
('Optional even-keeled open system', 'Anthe Ormston', 2106);

CREATE TABLE authors (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR NOT NULL,
    dob VARCHAR NOT NULL,
    pob VARCHAR NOT NULL
);

INSERT INTO authors (name, dob, pob)
VALUES
('Albertine Jeffries', '1979-08-22', 'Canada'),
('Gran Cheake', '1989-11-14', 'Burma'),
('Arleen MacAindreis', '1987-09-12', 'France'),
('Mercie Savery', '1992-04-05', 'Thailand'),
('Minna Nockells', '1996-02-01', 'Japan'),
('Catha Ocurrane', '1997-03-12', 'Oahu'),
('Devonna Philp', '1991-05-16', 'Russia'),
('Reinwald Fleeman', '1987-08-22', 'Spain'),
('Catharine Ormeilly', '2144-09-18', 'Scotland'),
('Coralyn Thorowgood', '2198-06-19', 'Kosovo'),
('Garrek Jutson', '1986-03-12', 'Mongolia'),
('Rebe Johnston', '1998-02-12', 'Vietnam'),
('Elsie MacDuff', '1984-12-05', 'Norway'),
('Cooper Wharf', '1997-08-22', 'Nepal'),
('Henrie Batrip', '2004-07-19', 'Macedonia'),
('Berton Dymock', '2027-03-12', 'Pakistan'),
('Lanie Hurler', '1977-04-09', 'Colombia'),
('Ianthe Crackel', '1987-06-23', 'Ohio'),
('Thane Taye', '2188-04-19', 'Mars'),
('Anthe Ormston', '2084-12-01', 'New Tokyo');

CREATE TABLE authors_books (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    author_id BIGINT,
    book_id BIGINT,
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

INSERT INTO
    authors_books (author_id, book_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);