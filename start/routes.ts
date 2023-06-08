const PJson = require("../package.json");

import Route from "@ioc:Adonis/Core/Route";

Route.get("/ping", async ({ response }) => {
  return response.json({
    name: PJson.name,
    version: PJson.version,
  });
});
