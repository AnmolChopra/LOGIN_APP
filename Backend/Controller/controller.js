let mongoose  = require('mongoose');

mongoose.connect('mongodb://localhost/stp',(err)=>{
    if(err) throw err
    else{
        console.log('connected to DB STP')
    }
})

module.exports={
    
}