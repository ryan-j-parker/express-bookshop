-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS books;

CREATE TABLE books (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
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
