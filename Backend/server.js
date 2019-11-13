let express = require('express');
let cors = require('cors');
let bodyparser = require('body-parser');
let app = express();
app.use(cors());
app.use(bodyparser.json());

app.post('/login',(req,res)=>{
  res.end('login Successfull');
})

app.listen(1111,()=>{
    console.log('server runnng on 1111')
})