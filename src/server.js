const express = require('express');
// const router = require('./routes/index.js');
const app = express();
var bodyParser = require('body-parser')

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
			
// parse application/json
app.use(bodyParser.json())

// app.use('/flights', router)

app.listen(3000, () =>
    console.log('Example app listening on port 3000!'),
);

module.exports = app;