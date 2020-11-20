const axios = require('axios')
const cheerio = require('cheerio')
const db = require('../db')


const url = 'https://www.worldometers.info/coronavirus/#countries'


class TableDataController {
    async getTableContent() {
        const response = await axios.get(url)
        const content = response.data
        const $ = await cheerio.load(content)
        let tableData = []

        await $('#main_table_countries_today tr').not('tr[style="display: none"]').each( async(i, elem) => {
            const tableDataItem = []
            $(elem).children('td').not('td[style="display: none"]').each((index, td) => {
                if ($(td).attr('style')) {
                    if ($(td).attr('style').includes('font-weight: bold')) {
                        tableDataItem.push($(td).text().trim())
                    }
                }
            })
            if (tableDataItem.length) {
                tableData.push(tableDataItem)
            }
        })

        return tableData
    }

    async setDataInDB() {
        db.query('DELETE FROM data_table')
        const tableData = await this.getTableContent()
        const fields = [
            // 'id',
            'country',
            'total_cases',
            'new_cases',
            'total_deaths',
            'new_deaths',
            'total_recovered',
            'active_cases',
            'serious_critical',
            'tot_cases_1m_pop',
            'tot_deaths_1m_pop',
            'total_tests',
            'tests_1m_pop',
            'population',
        ]

        const insertItems = fields.reduce((acc, _, i) => {
            let s = '$' + (i + 1)
            acc.push(s)
            return acc
        }, []).join(',')
        console.log(insertItems)

        tableData.forEach( row => {
            db.query(`INSERT INTO data_table (${fields.join(',')}) VALUES(${insertItems})`, row)
        })
    }

    async getCountryStatistics(req, res) {

    }
}

module.exports = TableDataController
