import Hapi from '@hapi/hapi';
import routes from './routes/BookRoute.js';

const init = async () => {
  const server = Hapi.server({
    port: 9000,
    host: 'localhost',
    routes: {
      cors: {
        origin: ['*'],
      },
    },
  });

  server.route(routes);

  try {
    await server.start();
    console.log(`Server running at: ${server.info.uri}`);
  } catch (err) {
    console.error('Error starting server:', err);
  }
};

init();