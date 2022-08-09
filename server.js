//require('dotenv').config()
const express = require('express')
const app = express()
const mongoose = require('mongoose')
const hostname = '0.0.0.0';
const port = process.env.PORT || 3000;
const connString = process.env.MONGODB_CONNSTRING || 'mongodb://127.0.0.1:27017/my_database';

//Set up default mongoose connection
mongoose.connect(connString, {useNewUrlParser: true, useUnifiedTopology: true});
//Get the default connection
var db = mongoose.connection;

//mongoose.connect(process.env.DATABASE_URL, { useNewUrlParser: true})
//const db = mongoose.connection
//db.on('error', (error) => console.error(error))
//db.once('open', () => console.log('Connected to Database'))

//Set up API transactions 
app.use(express.json())
const subscribersRouter = require('./routes/subscribers')
app.use('/subscribers', subscribersRouter)

app.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}/`);
  });