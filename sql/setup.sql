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

DROP TABLE IF EXISTS authors;

CREATE TABLE authors (
    id BIGINT GENERATED ALWAYS AS IDENTITY;
    name VARCHAR NOT NULL;
    dob VARCHAR NOT NULL;
    pob VARCHAR NOT NULL;
    books VARHCAR NOT NULL;
)

INSERT INTO authors (name, dob, pob, books)
VALUES
('Albertine Jeffries', '1979-08-22', 'Canada', 'Fully-configurable foreground project'),
('Gran Cheake', '1989-11-14', 'Burma', 'Adaptive bifurcated encoding'),
('Arleen MacAindreis', '1987-09-12', 'France', 'Mandatory stable pricing structure'),
('Mercie Savery', '1992-04-05', 'Thailand', 'Balanced 24/7 ability'),
('Minna Nockells', '1996-02-01', 'Japan', 'Sharable needs-based instruction set'),
('Catha Ocurrane', '1997-03-12', 'Oahu', 'Distributed upward-trending alliance'),
('Devonna Philp', '1991-05-16', 'Russia', 'Intuitive reciprocal orchestration'),
('Reinwald Fleeman', '1987-08-22', 'Spain', 'Configurable intermediate circuit'),
('Catharine Ormeilly', '2144-09-18', 'Scotland', 'Assimilated multi-tasking matrices'),
('Coralyn Thorowgood', '2198-06-19', 'Kosovo', 'Expanded grid-enabled methodology'),
('Garrek Jutson', '1986-03-12', 'Mongolia', 'Persevering discrete parallelism'),
('Rebe Johnston', '1998-02-12', 'Vietnam', 'Robust intermediate process improvement'),
('Elsie MacDuff', '1984-12-05', 'Norway', 'Reverse-engineered 5th generation open architecture'),
('Cooper Wharf', '1997-08-22', 'Nepal', 'Cross-platform hybrid hardware'),
('Henrie Batrip', '2004-07-19', 'Macedonia', 'Enhanced discrete data-warehouse'),
('Berton Dymock', '2027-03-12', 'Pakistan', 'Stand-alone systemic success'),
('Lanie Hurler', '1977-04-09', 'Colombia', 'Realigned multi-state complexity'),
('Ianthe Crackel', '1987-06-23', 'Ohio', 'Customizable dynamic internet solution'),
('Thane Taye', '2188-04-19', 'Mars', 'Multi-channelled neutral secured line'),
('Anthe Ormston', '2084-12-01', 'New Tokyo', 'Optional even-keeled open system');
