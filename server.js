"use strict";

var express = require("express");

var cors = require("cors");
var bodyParser = require("body-parser");
var fs = require("fs");

const app = express();
app.use(cors());
app.use(bodyParser.json());
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
);

app.get("/", (req, res, next) => {
  try {
    const buffer = fs.readFileSync("./README.html");
    res.status(200).send(buffer.toString());
  } catch (err) {
    next(err);
  }
});

app.use((err, req, res, next) => {
  res.status(err.status || 500).send(err.message);
});

const port = process.env.PORT || 8080;

app.listen(port, async () => {
  console.log(`Restaurant api listening on port ${port}`);
});

module.exports = {
  app: app,
};
