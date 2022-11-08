const pool = require('../utils/pool');

module.exports = class Book {
  constructor(row) {
    this.id = row.id;
    this.title = row.title;
    this.author = row.author;
    this.published = row.published;
  }

  static async getBooks() {
    const { rows } = await pool.query('SELECT * from books');
    return rows.map((book) => new Book(book));
  }
};
