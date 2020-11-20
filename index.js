const express = require('express')
const app = express()

const userRoute = require('./routes/user.route')

const TableDataController = require('./controllers/tableData.controller')

const tdController = new TableDataController()
tdController.setDataInDB().then((res) => {
    console.log(res)
})

app.use('/', userRoute)

const PORT = process.env.PORT || 5000
app.listen(PORT, () => {
    console.log(`App started on ${PORT}...`)
})

