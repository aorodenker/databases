const {connection} = require('../db');

module.exports = {
  getAll: function () {
    connection.query('SELECT * FROM users', (err, res)=>{
      if (err) {
        return console.error(err);
      }
      console.log(res);
    });
  },
  create: function (username) {
    connection.query('INSERT INTO users (username) VALUES (?)', [usernamme], (err, res)=>{
      if (err) {
        return console.error(err);
      }
      console.log(res);
    });
  }
};
