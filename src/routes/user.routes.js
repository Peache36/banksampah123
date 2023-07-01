const { signUp, signIn, uploudPhoto } = require('../controller/user.controller')
const userRouter = require('express').Router()
const { verifyToken } = require('../middleware/verifyToken');
const { avatarPhoto } = require('../middleware/fileUploud');
userRouter.post('/signup', signUp)
userRouter.get('/signin',signIn)
userRouter.put('/profile/uploud-avatar',verifyToken, avatarPhoto.single('avatar'),uploudPhoto)


module.exports = userRouter