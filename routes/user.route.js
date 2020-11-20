const {Router} = require('express')
const router = Router()
const UserController = require('../controllers/user.controller')

router.get('/:id', UserController.getStatistics)
router.put('/create', UserController.createUser)

module.exports = router
