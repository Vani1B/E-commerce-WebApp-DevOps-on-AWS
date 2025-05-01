const fs = require('fs');
const path = require('path');
const db = require('./db');

// Read the schema.sql file
const schema = fs.readFileSync(path.join(__dirname, 'schema.sql'), 'utf8');

// Function to initialize DB
function initDB() {
    db.query(schema, (err, results) => {
        if (err) {
            console.error('Error initializing database:', err);
        } else {
            console.log('Database initialized successfully ✅');
        }
    });
}

module.exports = initDB;
