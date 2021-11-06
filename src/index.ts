import express, { Request, Response, Express } from 'express'

const app: Express = express()
const port: number = 3000

app.get('/hello', (request: Request, response: Response) => {
  response.send('Hello world!')
})

app.listen(port, () => console.log(`Server running on port ${port}`))
