const express = require('express');
const cors = require('cors');
require('dotenv').config();

const app = express();
const initDB = require('./initDB'); // <-- Import this
const productRoutes = require('./productRoutes');

// Middlewares
app.use(cors());
app.use(express.json());

// Simple route
app.get('/api/test', (req, res) => {
    res.json({ message: 'Hello from backend 🔥' });
});

// Product routes
app.use('/api', productRoutes);

// Initialize the database
initDB();

// Start the server
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
