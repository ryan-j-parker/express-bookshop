const { Router } = require('express');

const Book = require('../models/Book');

module.exports = Router()
  .get('/:id', async (req, res) => {
    const { title, published, authors } = await Book.getBookById(req.params.id);
    const filtered = {
      title,
      published,
      authors: authors.map(({ id, name }) => ({ id, name })),
    };
    res.json(filtered);
  })
  .get('/', async (req, res) => {
    const books = await Book.getBooks();
    res.json(books);
  });
