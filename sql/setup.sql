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
('Optimized high-level open system', 'Phebe Smithe', 1996),
('Streamlined optimal pricing structure', 'Guntar Levet', 1984),
('Team-oriented optimizing website', 'Colline Storcke', 1997),
('Re-engineered scalable challenge', 'Paulina Jolliffe', 2000),
('Digitized homogeneous interface', 'Tim Fulger', 2005),
('Advanced systemic neural-net', 'Tricia Kaley', 1995),
('Down-sized discrete conglomeration', 'Eddi Burchmore', 2011),
('Assimilated object-oriented extranet', 'Nicola Ubee', 2009),
('Virtual mission-critical project', 'Nicholle Melland', 1989),
('Up-sized intermediate circuit', 'Wayne Beglin', 1993),
('Team-oriented foreground benchmark', 'Pascale Fenelow', 1990),
('Persevering composite standardization', 'Waylon Reiners', 1994),
('Enhanced maximized framework', 'Davidson Loosely', 2005),
('Multi-lateral object-oriented open architecture', 'Florence Henzley', 2009),
('Fundamental mobile system engine', 'Rochester Langley', 2012),
('Intuitive heuristic hardware', 'Malynda McKeney', 2007),
('Grass-roots contextually-based core', 'Tommi Nise', 2004),
('Enhanced 5th generation architecture', 'Lamar Raphael', 1989),
('Stand-alone contextually-based approach', 'Peadar Ryley', 1997),
('Ameliorated real-time standardization', 'Marie Melesk', 2010);
