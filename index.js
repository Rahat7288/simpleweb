const express = require('express');

const app = express();

app.get('/', (req, res)=>{
    res.send ('hi there rahat');
});

app.listen(8080, ()=>{
    console.log('listening on port 8080');
})