const express=require("express");
const dotenv=require("dotenv");
const mongoose=require("mongoose");
const cors = require('cors');






dotenv.config();
const app=express();

const PORT= process.env.PORT || 8082

const LOCAL_IP = process.env.LOCAL_IP ;

const CORSORIGIN=process.env.CORS;




const corsOptions = {
    origin: CORSORIGIN, // Replace with your client domain
    origin:"*",
    optionsSuccessStatus: 200 // Some legacy browsers choke on 204
  };

  
  
  
  
  
  app.use(express.json())  // getting the data from client
  
app.use(cors(corsOptions));
app.use("/api/v1/task",require("./routers/TaskRoutes"));
app.use("/api/v1/user",require("./routers/UserRoutes"));

// app.use("/api/v1/user",require(""));

// mongoose.connect("mongodb://localhost:27017/to-do").then(()=>{
//     console.log("db is connected")
// }).catch((err)=>{
//     console.log(err)
// })



mongoose.connect("mongodb+srv://naresh:GF16QeEvGyy377PG@flutter.31o5v.mongodb.net/?retryWrites=true&w=majority&appName=flutter").then(()=>{
    console.log("db is connected")
}).catch((err)=>{
    console.log(err)
})

app.get("/hello",(req,res)=> res.send({
    name:"naresh"
}))


app.listen(3333,LOCAL_IP,()=>{
    console.log(`Server running on ${PORT}`);
})






