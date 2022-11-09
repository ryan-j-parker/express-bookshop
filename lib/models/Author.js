const pool = require('../utils/pool');

module.exports = class Author {
  constructor(row) {
    this.id = row.id;
    this.name = row.name;
    this.dob = row.dob;
    this.pob = row.pob;
    this.books = row.books;
  }

  static async getAuthors() {
    const { rows } = await pool.query('SELECT * from authors');
    return rows.map((author) => new Author(author));
  }

  static async getAuthorById(id) {
    const { rows } = await pool.query(
      `
    SELECT
  authors.*,
  coalesce(json_agg(to_jsonb(books))
  filter (WHERE books.id IS NOT NULL), '[]') as books
  from
  authors left join authors_books on authors.id = authors_books.author_id
  left join books on books.id = authors_books.book_id
  WHERE authors.id = $1
  group by authors.id
    `,
      [id]
    );
    return new Author(rows[0]);
  }
};

// join table: authors --> join, books --> join