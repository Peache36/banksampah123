const router = require('express').Router()
const { getAllRubbish, getRubbishById, addRubbish, editRubbish, deleteRubbish } = require('../controller/admin.controller')

router.get('/',getAllRubbish)
router.get('/:id',getRubbishById)
router.post('/create',addRubbish)
router.put('/:id',editRubbish)
router.delete('/:id',deleteRubbish)