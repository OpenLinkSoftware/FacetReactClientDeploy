const config = require('./config.js');
const express = require('express');
const path = require('path');

const app = express();

const appRouter = express.Router();
appRouter.use(express.static(path.join(__dirname, 'dist')));
appRouter.get('/*', function(req, res) {
  res.sendFile(path.join(__dirname, 'dist', 'index.html'));
});

app.use(config.baseUrl, appRouter);

app.listen(config.port, () => {
  console.log(`FacetReactClient running as http://host:${config.port}${config.baseUrl} ...`);
});

