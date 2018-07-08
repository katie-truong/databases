var db = require('../db');

module.exports = {
  messages: {
    get: function (data, cb) {
      
      
    }, // rya function which produces all the messages
    post: function (data, cb) {
      console.log('model message post');
      db.connection.connect();
      // db.query to insert into users user name
      db.query('INSERT INTO users SET ?', {userName: data[username]}, (err, results, field) => {
        if (err) {
          throw err;
        }
        callback(null, results);
      });
      
      db.connection.end();
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {
      console.log('model user get');
    },
    post: function (data, callback) {
      db.connection.connect();
      db.connection.query('INSERT INTO users SET ?', {userName: data['username']}, (err, results, field) => {
        if (err) {
          throw err;
        }
        callback(null, results);
        console.log('SUCCESS');
      })
      db.connection.end();
    }
  }  
}

var defCallback = (err, results, field) => {
  
}
