const express = require('express');
const socket = require('socket.io');
const http = require('http');
const app = express();
const server = http.createServer(app);
const io = socket(server);

let names = new Map();
let room = new Map();

io.on('connection', (socket) => {

    socket.on('joinRoom', (data) => {
      socket.join(data.room, () => {
        names.set(socket.id, data.name);
        room.set(socket.id, data.room);
        console.log(data.name + ' join a ' + data.room);
        io.to(data.room).emit('joinRoom', data, room.size, new Date().toLocaleString());
      });
    });

    socket.on('disconnect', () => {
      io.to(room.get(socket.id)).emit('leaveRoom', names.get(socket.id), room.size,new Date().toLocaleString());
      console.log(names.get(socket.id) + ' disconnected '+room.get(socket.id));
      names.delete(socket.id);
      room.delete(socket.id);
    });
  
    socket.on('chat message', (data) => {
      io.to(data.room).emit('chat message', data.name, data.msg, new Date().toLocaleString());
    });
  });
  


server.listen(3000, function(){
    console.log('서버 실행');
});

app.get('/',function(request,response){
    response.send('hello!');
});

