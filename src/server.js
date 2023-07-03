const express = require('express');
// const router = require('./routes/index.js');
const app = express();
var bodyParser = require('body-parser');
const userRouter = require('./routes/user.routes');
const adminRouter = require('./routes/admin.routes');
const postRouter = require('./routes/post.routes');

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
			
// parse application/json
app.use(bodyParser.json())
app.use('/admin',adminRouter)
app.use('/user', userRouter)
app.use('/post',postRouter)
app.listen(3001, () =>
    console.log('Example app listening on port 3001!'),
);

module.exports = app;