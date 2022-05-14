import express from 'express'
import cors from 'cors'

const server = express()

server.get(
    '/',
    (req, res) => res.send("foi")
)

export { server }