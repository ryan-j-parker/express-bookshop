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
};
