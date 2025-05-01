const db = require('./db');

// Get all products
const getAllProducts = (callback) => {
  const sql = 'SELECT * FROM products';
  db.query(sql, callback);
};

// Get a single product by ID
const getProductById = (id, callback) => {
  const sql = 'SELECT * FROM products WHERE id = ?';
  db.query(sql, [id], callback);
};

// Create a new product
const createProduct = (productData, callback) => {
  const sql = 'INSERT INTO products (name, description, price, quantity) VALUES (?, ?, ?, ?)';
  const { name, description, price, quantity } = productData;
  db.query(sql, [name, description, price, quantity], callback);
};

// Update an existing product
const updateProduct = (id, productData, callback) => {
  const sql = 'UPDATE products SET name = ?, description = ?, price = ?, quantity = ? WHERE id = ?';
  const { name, description, price, quantity } = productData;
  db.query(sql, [name, description, price, quantity, id], callback);
};

// Delete a product
const deleteProduct = (id, callback) => {
  const sql = 'DELETE FROM products WHERE id = ?';
  db.query(sql, [id], callback);
};

module.exports = {
  getAllProducts,
  getProductById,
  createProduct,
  updateProduct,
  deleteProduct,
};
