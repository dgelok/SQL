
const URLstring = require('./password.js')
console.log(URLstring)
const pgp = require('pg-promise');
const db = pgp(`${URLstring}`);


db.any("SELECT * FROM tasks").then((r)=>{
    console.log(r)
});