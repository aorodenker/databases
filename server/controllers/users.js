const {users} = require('../models');

module.exports = {
  get: function (req, res) {
    try {
      let q = users.getAll();

      res.send('HIT');
    } catch (err) {
      console.log('SQL REQUEST ERROR', err);
      res.status(404).send('NOPE!');
    }
  },
  post: function (req, res) {}
};
