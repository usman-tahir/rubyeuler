#!/usr/bin/env node
"use strict";

var request = require('request');
var number = 458
var url = 'http://www3.septa.org/hackathon/RRSchedules/' + number;
request(url, number, function (error, response, body) {
  if (body) {
    var septaJSON = JSON.parse(body);
    console.log("Train " + number + " Schedule")
    for (var i in septaJSON) {
      var train = septaJSON[i].station
      var time = septaJSON[i].sched_tm
      console.log(train + " at " + time)
    }
  } else {
    console.log(error);
  }
});
