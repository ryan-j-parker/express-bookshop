const pool = require('../utils/pool');

module.exports = class Book {
  constructor(row) {
    this.id = row.id;
    this.title = row.title;
    this.author = row.author;
    this.published = row.published;
    this.authors = row.authors;
  }

  static async getBooks() {
    const { rows } = await pool.query('SELECT * from books');
    return rows.map((book) => new Book(book));
  }

  static async getBookById(id) {
    const { rows } = await pool.query(
      `
    SELECT
  books.*,
  coalesce(
    json_agg(to_jsonb(authors)) filter (
      WHERE
        authors.id IS NOT NULL
    ),
    '[]'
  ) as authors
from
  books
  left join authors_books on books.id = authors_books.book_id
  left join authors on authors.id = authors_books.author_id
WHERE
  books.id = $1
group by
  books.id
    `,
      [id]
    );
    return new Book(rows[0]);
  }
};
