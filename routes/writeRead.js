'use strict';

const express = require('express');
const crypto = require('crypto');
const wrRoute = express.Router();
const connection = require('../db');

// Create a new book
wrRoute.post('/books', function (req, res, next) {
    connection.execute(`INSERT INTO books (title, author, published_year, genre, available, created_at, updated_at) VALUES (?, ?, ?, ?, ?, ?, ?);`,
        [req.body.title, req.body.author, req.body.published_year, req.body.genre, req.body.available, new Date(), new Date()])
        .then(() => {
            console.log('Insert Successfully');
            res.status(201).send("Insert Successfully");
        }).catch((err) => {
            console.error(err);
            res.status(500).send("Error inserting the book");
        });
});

// Get all books
wrRoute.get('/books', function (req, res, next) {
    connection.execute('SELECT * FROM books;')
        .then((result) => {
            var rawData = result[0];
            res.send(JSON.stringify(rawData));
        }).catch((err) => {
            console.error(err);
            res.status(500).send("Error retrieving the books");
        });
});

// Check book by title and author
wrRoute.post('/check', function (req, res, next) {
    connection.execute('SELECT * FROM books WHERE title=? AND author=?;',
        [req.body.title, req.body.author])
        .then((result) => {
            var data = result[0];
            if (data.length === 0) {
                res.sendStatus(400);
            } else {
                res.sendStatus(200);
            }
        }).catch((err) => {
            console.error(err);
            res.sendStatus(500);
        });
});

// 404 handler
wrRoute.use('/', function (req, res, next) {
    res.sendStatus(404);
});

module.exports = wrRoute;
