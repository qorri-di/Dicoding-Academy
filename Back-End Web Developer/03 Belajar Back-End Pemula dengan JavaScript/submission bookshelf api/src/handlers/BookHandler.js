import { nanoid } from 'nanoid';
import books from '../models/BookModel.js';
import GenericResponse from '../dto/GenericResponse.js'
// import db from '../config/db.js';

/*Create Book*/
// export const addBookHandler = async (request, h) => {
export const addBookHandler = (request, h) => {
  const {
    name,
    year,
    author,
    summary,
    publisher,
    pageCount,
    readPage,
    reading,
  } = request.payload;

  if (!name) {
    return h
      .response(GenericResponse.error('Gagal menambahkan buku. Mohon isi nama buku'
      )).code(400);
  }

  if (readPage > pageCount) {
    return h
      .response(GenericResponse.error('Gagal menambahkan buku. readPage tidak boleh lebih besar dari pageCount'
      )).code(400);
  }

  const id = nanoid(16);
  const finished = pageCount === readPage;
  const insertedAt = new Date().toISOString();
  const updatedAt = insertedAt;

  // const query = {
  //   text: 'INSERT INTO books(id, name, year, author, summary, publisher, pageCount, readPage, finished, reading, insertedAt, updatedAt) VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING id',
  //   values: [id, name, year, author, summary, publisher, pageCount, readPage, finished, reading, insertedAt, updatedAt],
  // };
  //
  // try {
  //   const result = await db.query(query);
  //
  //   return h.response(GenericResponse.success('Buku berhasil ditambahkan',
  //       { bookId: result.rows[0].id }
  //   )).code(201);
  // } catch (error) {
  //   return h.response(GenericResponse.error('Buku gagal ditambahkan',
  //   )).code(500);
  // }

  const newBook = {
    id,
    name,
    year,
    author,
    summary,
    publisher,
    pageCount,
    readPage,
    reading,
    finished,
    insertedAt,
    updatedAt,
  };

  books.push(newBook);

  const isSuccess = books.some((book) => book.id === id);
  if (isSuccess) {
    return h
      .response(GenericResponse.success('Buku berhasil ditambahkan',{ bookId: id }
      )).code(201);
  }

  return h
    .response(GenericResponse.error('Buku gagal ditambahkan'
    )).code(500);
};

/*Get All Book*/
// export const getAllBooksHandler = async (request, h) => {
export const getAllBooksHandler = (request, h) => {
  const { name, reading, finished } = request.query;
  const filteredBooks = books.filter((book) => {
    const bookName = book.name.toLowerCase();

    const isNameMatch = !name || bookName.includes(name.toLowerCase());

    const isReadingMatch = !reading || book.reading === (reading === '1');

    const isFinishedMatch = !finished || book.finished === (finished === '1');

    return isNameMatch && isReadingMatch && isFinishedMatch;
  });

  // let query = 'SELECT id, name, publisher FROM books WHERE true';
  //
  // if (name) {
  //   query += ` AND LOWER(name) LIKE LOWER('%${name}%')`;
  // }
  //
  // if (reading !== undefined) {
  //   query += ` AND reading = ${reading === '1'}`;
  // }
  //
  // if (finished !== undefined) {
  //   query += ` AND finished = ${finished === '1'}`;
  // }
  //
  // try {
  //   const result = await db.query(query);
  //   return h.response(GenericResponse.success(null, { result.rows }
  //   )).code(200);
  // } catch (error) {
  //   return h.response(GenericResponse.error('Gagal mengambil data buku'
  //   )).code(500);
  // }

  return h
    .response(GenericResponse.success(null,{
        books: filteredBooks.map((book) => ({
          id: book.id,
          name: book.name,
          publisher: book.publisher,
        })),
      }
    )).code(200);
};

/*Get Book by Id*/
export const getBookByIdHandler = (request, h) => {
  const { id } = request.params;

  // const query = {
  //   text: 'SELECT * FROM books WHERE id = $1',
  //   values: [id],
  // };
  //
  // const result = await fb.query(query);

  const book = books.filter((b) => b.id === id)[0];
  // if (result.rowCount === 0) {
  if (book === undefined) {
    return h
      .response(GenericResponse.error('Buku tidak ditemukan'
      )).code(404);
  }

  return h
    .response(GenericResponse.success(null,{ book }
    )).code(200);
};

/*Update Book*/
// export const editBookHandler = async (request, h) => {
export const editBookHandler = (request, h) => {
  const { id } = request.params;
  const {
    name,
    year,
    author,
    summary,
    publisher,
    pageCount,
    readPage,
    reading,
  } = request.payload;
  const updatedAt = new Date().toISOString();

  if (!name) {
    return h
      .response(GenericResponse.error('Gagal memperbarui buku. Mohon isi nama buku'
      )).code(400);
  }

  if (readPage > pageCount) {
    return h
      .response(GenericResponse.error('Gagal memperbarui buku. readPage tidak boleh lebih besar dari pageCount'
      )).code(400);
  }

  // const query = {
  //   text: 'UPDATE books SET name=$1, year=$2, author=$3, summary=$4, publisher=$5, pageCount=$6, readPage=$7, finished=$8, reading=$9, updatedAt=$10 WHERE id=$11 RETURNING id',
  //   values: [name, year, author, summary, publisher, pageCount, readPage, finished, reading, updatedAt, bookId],
  // };
  //
  // const result = await db.query(query);

  const index = books.findIndex((b) => b.id === id);
  // if (result.rowCount === 0) {
  if (index === -1) {
    return h
      .response(GenericResponse.error('Gagal memperbarui buku. Id tidak ditemukan'
      )).code(404);
  }

  books[index] = {
    ...books[index],
    name,
    year,
    author,
    summary,
    publisher,
    pageCount,
    readPage,
    reading,
    updatedAt,
  };

  return h
    .response(GenericResponse.success('Buku berhasil diperbarui',null
    )).code(200);
};

/*Delete Book by Id*/
// export const deleteBookByIdHandler = async (request, h) => {
export const deleteBookByIdHandler = (request, h) => {
  const { id } = request.params;

  // const query = {
  //   text: 'DELETE FROM books WHERE id = $1 RETURNING id',
  //   values: [id],
  // };
  //
  // const result = await db.query(query);

  const index = books.findIndex((b) => b.id === id)
  // if (result.rowCount === 0) {
  if (index === -1) {
    return h
      .response(GenericResponse.error('Buku gagal dihapus. Id tidak ditemukan'
      )).code(404);
  }

  books.splice(index, 1);
  return h
    .response(GenericResponse.success('Buku berhasil dihapus',null
    )).code(200);
};