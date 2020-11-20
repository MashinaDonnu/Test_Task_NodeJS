
function generateValues(count) {
    let res = []
    for (let i = 0; i < count; i++) {
        res.push('$' + (i + 1))
    }
    return res.join(',')
}

module.exports = {
    generateValues
}
