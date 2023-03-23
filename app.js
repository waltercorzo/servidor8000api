import express from "express";
import cors from 'cors'
import db from "./database/db.js";

import pedidoRoutes from "./routes/routes.js";

const app= express();
app.use(cors())
app.use(express.json())
app.use('/pedidos', pedidoRoutes)

try {
    await db.authenticate()
    console.log("Conexion exitosa a la BD")
} catch (error) {
    console.log(`El error conexion a la BD es ${error}`)
    
}
/*
app.get('/', (req,res)=> {
    res.send('Hola Mundo')
})
*/

app.listen(8000, ()=>{
    console.log('Server UP en localhost 8000')
})

