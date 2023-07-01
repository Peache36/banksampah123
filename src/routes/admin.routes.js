const adminRouter = require('express').Router()
const { getAllRubbish, getRubbishById, addRubbish, editRubbish, deleteRubbish, depositRubbish } = require('../controller/admin.controller')
const { verifyTokenAdmin } = require('../middleware/verifyToken')

adminRouter.get('/',getAllRubbish)
adminRouter.get('/:id',getRubbishById)
adminRouter.post('/rubbish/add',verifyTokenAdmin,addRubbish)
adminRouter.put('/rubbish/:id',verifyTokenAdmin,editRubbish)
adminRouter.delete('/rubbish/:id',verifyTokenAdmin,deleteRubbish)
adminRouter.post('/rubbish-deposit/:id',verifyTokenAdmin,depositRubbish)

module.exports = adminRouter