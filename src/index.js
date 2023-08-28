import express from 'express'
import employeesRoutes from './routes/employees.routes.js'
import indexRoutes from './routes/index.routes.js'

import app from './app.js'
import {PORT} from './config.js'


const app = express()

app.use(express.json())


app.use(indexRoutes)
app.use('/api',employeesRoutes)

app.use((req, res, next) => {
    res.status(404).json({
        message: 'EndoPoint No Encontrado'
    })
})

export default app

app.listen(PORT)
console.log('Servidor en puerto', PORT)