const {Router} = require('express')
const router = Router()
const UserController = require('../controllers/user.controller')

router.get('/', (req, res) => {
    res.end('hello node')
})

module.exports = router
