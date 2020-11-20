const {generateValues} = require('../handlers')
const db = require('../db')


class UserController {
    static async createUser(req, res) {
        try {
            const {name, lastName, phone, countries} = req.body
            if (!name.trim() || !lastName.trim() || !phone.trim() || !countries.length) {
                res.status(500).json({message: 'Invalid user data.'})
                return
            }
            const values = [name, lastName, +phone, countries]
            console.log('VALUES: ', values)
            await  db.query(`INSERT INTO users (name, last_name, phone, countries) VALUES(${generateValues(values.length)})`, values)
            res.status(201).json({message: 'User created.'})

        } catch (e) {
            res.status(500).json({message: 'Something went wrong...', error: e})
        }
    }

    static async getStatistics(req, res) {
        try {
            const id = req.params.id
            const countries = await db.query(`SELECT countries FROM users WHERE id=${id}`)
            // const statistics = countries.reduce((acc, el) => {
            //
            // },  [])
        } catch (e) {
            res.status(500).json({message: 'Something went wrong...', error: e})
        }
    }
}

module.exports = UserController
