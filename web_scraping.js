#!/usr/bin/env node
// http://rosettacode.org/wiki/Web_scraping

var http = require('http');

var options = {
  host: 'tycho.usno.navy.mil',
  path: '/cgi-bin/timer.pl'
}

callback = function(response) {
  var str = '';

  response.on('data', function(chunk) {
    str += chunk;
  });

  response.on('end', function () {
    var arr = str.split("<BR>");
    console.log(arr[1])
  });
}

http.request(options, callback).end();
