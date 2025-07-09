const express = require('express');
const routes = require('./source/routes/route');

const app = express();
app.use('/', routes);

const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Server running on http://localhost:${port}`));

