const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const app = require('express')();


app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({ extended: false }));

app.get('/', (req, res) =>{
    res.send("it's working :)")   
})

const port = 3000;
app.listen(port, () => console.log('Server running...'));