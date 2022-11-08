const { Router } = require('express');

const Book = require('../models/Book');

module.exports = Router().get('/', async (req, res) => {
  const books = await Book.getBooks();
  res.json(books);
});
