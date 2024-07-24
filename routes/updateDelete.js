'use strict';

const express = require('express');
const udRoute = express.Router();
const connection = require('../db');

// Update book information
udRoute.put('/books/:bid', function (req, res, next) {
    const { title, author, published_year } = req.body;
    const bookId = req.params.bid;
    connection.execute("UPDATE books SET title=?, author=?, published_year=? WHERE id=?;", 
        [title, author, published_year, bookId])
        .then(() => {
            res.status(200).send("Update Successfully.");
        }).catch((err) => {
            console.error(err);
            res.status(500).send("Error updating the book.");
        });
});

// Delete a book
udRoute.delete('/books/:bid', function (req, res, next) {
    const bookId = req.params.bid;
    connection.execute("DELETE FROM books WHERE id=?;", [bookId])
        .then(() => {
            res.status(200).send("Delete Successfully.");
        }).catch((err) => {
            console.error(err);
            res.status(500).send("Error deleting the book.");
        });
});

// 404 handler
udRoute.use('/', function (req, res, next) {
    res.sendStatus(404);
});

module.exports = udRoute;
