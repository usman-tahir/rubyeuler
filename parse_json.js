#!/usr/bin/env node
"use strict";

var request = require('request');
var url = 'http://www3.septa.org/hackathon/RRSchedules/458';
request(url, function (error, response, body) {
  if (!error && response.statusCode === 200) {
    var septaJSON = JSON.parse(body);
    for (var i in septaJSON) {
      var train = septaJSON[i].station
      var time = septaJSON[i].sched_tm
      console.log(train + " at " + time)
    }
  } else {
    console.log(error + " : " + response.statusCode);
  }
});
