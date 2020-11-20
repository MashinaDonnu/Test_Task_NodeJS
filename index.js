const express = require('express')
const app = express()

const userRoute = require('./routes/user.route')

const TableDataController = require('./controllers/tableData.controller')
// const UserController = require('./controllers/user.controller')
//
// UserController.createUser().then(() => {
//     console.log('USER CREATED')
// })

const tdController = new TableDataController()
tdController.setDataInDB().then((res) => {
    tdController.getCountryStatistics('USA').then(stat => {
        console.log('STAT: ', stat)
    })
})

app.use('/user', userRoute)
app.get('/', (req, res) => {
    console.log(11111111111)
    // console.log(req.query)
    res.end('Hello')
})

// app.get('/test/:id', (req, res) => {
//     console.log(22222)
//     console.log(req.params.id)
//     res.end('TEST')
// })

const PORT = process.env.PORT || 5000
app.listen(PORT, () => {
    console.log(`App started on ${PORT}...`)
})

