const express = require('express');
const router = express.Router();
const db = require('./db');

// Get all products
router.get('/products', (req, res) => {
  db.query('SELECT * FROM products', (err, results) => {
    if (err) {
      console.error(err);
      return res.status(500).json({ error: 'Failed to fetch products' });
    }
    res.json(results);
  });
});

// Create a new product
router.post('/products', (req, res) => {
  const { name, description, price, quantity } = req.body;
  const sql = 'INSERT INTO products (name, description, price, quantity) VALUES (?, ?, ?, ?)';
  db.query(sql, [name, description, price, quantity], (err, result) => {
    if (err) {
      console.error(err);
      return res.status(500).json({ error: 'Failed to create product' });
    }
    res.status(201).json({ message: 'Product created', id: result.insertId });
  });
});

// Export the router
module.exports = router;
