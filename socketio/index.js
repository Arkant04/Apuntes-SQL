const express = require('express');
const { createServer } = require('node:http');
const { join } = require('node:path');
const { Server } = require('socket.io');

const app = express();
const server = createServer(app);
const io = new Server(server);

app.get('/', (req, res) => {
  res.sendFile(join(__dirname, 'index.html'));
});

app.get('/paint', (req, res) => {
  res.sendFile(join(__dirname, 'paint.html'))
});

io.on('connection', (socket) => {
    socket.on('chat message', (msg) => {
      io.emit('chat message', msg);
    }),
    socket.on('paint', (datos) =>{
      console.log("La x es:", datos.x)
      console.log("La y es:", datos.y)
     io.emit('paint', datos);
    });
  });
  
server.listen(3000, () => {
  console.log('server running at http://localhost:3000');
});