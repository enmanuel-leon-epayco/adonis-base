import Route from '@ioc:Adonis/Core/Route';
import Config from '@ioc:Adonis/Core/Config';

Route.get('/ping', async ({ response }) => {
  return response.json({
    name: Config.get('app.name'),
    version: Config.get('app.version'),
  });
});
