import {
  addBookHandler,
  getAllBooksHandler,
  getBookByIdHandler,
  editBookHandler,
  deleteBookByIdHandler,
} from '../handlers/BookHandler.js';

const routes = [
  {
    method: 'POST',
    path: '/books',
    handler: addBookHandler,
  },{
    method: 'GET',
    path: '/books',
    handler: getAllBooksHandler,
  },
  {
    method: 'GET',
    path: '/books/{id}',
    handler: getBookByIdHandler,
  },
  {
    method: 'PUT',
    path: '/books/{id}',
    handler: editBookHandler,
  },
  {
    method: 'DELETE',
    path: '/books/{id}',
    handler: deleteBookByIdHandler,
  },
];

export default routes;