const postRouter = require('express').Router()
const { makePost, getAllPost, makeAcomment } = require('../controller/post.controller');
const { verifyToken } = require('../middleware/verifyToken');


postRouter.post('/make-post',verifyToken,makePost)
postRouter.get('/',getAllPost)
postRouter.post('/:postId',verifyToken,makeAcomment)

module.exports = postRouter