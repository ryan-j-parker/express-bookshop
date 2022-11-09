const { Router } = require('express');

const Author = require('../models/Author');

module.exports = Router()
  .get('/:id', async (req, res) => {
    const { name, dob, pob, books } = await Author.getAuthorById(req.params.id);
    const filtered = {
      name,
      dob,
      pob,
      books: books.map(({ id, title, published }) => ({
        id,
        title,
        published,
      })),
    };
    res.json(filtered);
  })
  .get('/', async (req, res) => {
    const authors = await Author.getAuthors();
    const filtered = authors.map(({ id, name }) => ({ id, name }));
    res.json(filtered);
  });

// when you go to a specific book, you need book and author
