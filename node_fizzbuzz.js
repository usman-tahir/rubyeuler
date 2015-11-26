#!/usr/bin/env node
"use strict";

var http = require("http");
var fs = require("fs");
fs.readFile('node_fizzbuzz.html', function (err, html) {
  if (err) {
    throw err;
  } else {
    http.createServer(function (request, response) {
      response.writeHeader(200, {"Content-Type": "text/html"});
      response.write(html)
      response.end();
    }).listen(8081);
  }
})

console.log("Server running at localhost:8081");
