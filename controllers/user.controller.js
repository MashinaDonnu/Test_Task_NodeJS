const {generateValues} = require('../handlers')
const db = require('../db')

class UserController {
    // метод для создания профиля пользователя.
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
    // метод для получения статистки по странам за которыми следит пользователь.
    static async getStatistics(req, res) {
        try {
            const id = req.params.id
            if (!id) {
                res.status(500).json({message: 'No user ID.'})
                return
            }
            let countries = await db.query(`SELECT countries FROM users WHERE id=${id}`)
            if (countries.rows.length) {
                res.status(500).json({message: 'Something went wrong...'})
                return
            }
            countries = countries.rows[0].countries

            const result = []
            countries.forEach(async el => {
                const statItem = await db.query(`SELECT * FROM data_table WHERE country='${el}'`)
                if (statItem.rows.length) {
                    result.push(statItem.rows[0])
                }
            },  [])
            res.json({result, message: 'Success'})
        } catch (e) {
            res.status(500).json({message: 'Something went wrong...', error: e})
        }
    }
}

module.exports = UserController
