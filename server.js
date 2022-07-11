const express = require('express');

// Constants
const PORT = 8081; //Changed prot number to 8081 as Jenkins is running on port 8080
const HOST = '127.0.0.1'; //ip address for localhost

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello World');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
