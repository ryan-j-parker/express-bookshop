const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');
const { books } = require('../lib/books-data');
const { authors } = require('../lib/author-data');

describe('app routes', () => {
  beforeEach(() => {
    return setup(pool);
  });

  it('/books should return a list of books', async () => {
    const res = await request(app).get('/books');

    const expected = books.map((book) => {
      return {
        id: book.id,
        title: book.title,
        author: book.author,
        published: book.published,
      };
    });

    expect(res.body).toEqual(expected);
  });

  it('/authors should return a list of authors', async () => {
    const res = await request(app).get('/authors');

    const expected = authors.map((author) => {
      return { id: author.id, name: author.name };
    });

    expect(res.body).toEqual(expected);
  });

  it('/authors/:id should return an author by ID', async () => {
    const res = await request(app).get('/authors/1');
    const jeffries = {
      id: '1',
      name: 'Albertine Jeffries',
      dob: '1979-08-22',
      pob: 'Canada',
      books: [
        {
          id: 1,
          title: 'Fully-configurable foreground project',
          author: 'Albertine Jeffries',
          published: 2004,
        },
      ],
    };
    expect(res.body).toEqual(jeffries);
  });

  afterAll(() => {
    pool.end();
  });
});
