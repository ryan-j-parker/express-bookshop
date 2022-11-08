const { Router } = require('express');

const Author = require('../models/Author');

module.exports = Router().get('/', async (req, res) => {
  const authors = await Author.getAuthors();
  res.json(authors);
});

// when you go to a specific book, you need book and author
