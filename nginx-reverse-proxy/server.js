const express = require("express");
const app = express();
const port = process.env.PORT;
const server = process.env.SERVER;

app.get("${server}", (req, res) => {
  res.send(`Hello from ${server} Node.js`);
});

app.listen(`${port}`, () => {
  console.log(`${server} running on port ${port}`);
});
