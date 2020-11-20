const express = require('express')
const app = express()
const userRoute = require('./routes/user.route')
const homeRoute = require('./routes/home.route')
const TableDataController = require('./controllers/tableData.controller')

app.use(express.json())
app.use('/', homeRoute)
app.use('/user', userRoute)

const CronJob = require('cron').CronJob

const tdController = new TableDataController()

tdController.setDataInDB().then(() => {
    console.log('Data updated.')
})
const job = new CronJob('* * * * *', () => {
    tdController.setDataInDB().then(() => {
        console.log('Data updated.')
    })
}, null, true)
job.start();


const PORT = process.env.PORT || 5000
app.listen(PORT, () => {
    console.log(`App started on ${PORT}...`)
})

