#!/usr/bin/env node
// http://programmingpraxis.com/2014/11/25/thou-impertinent-urchin-faced-miscreant/

function wordsmanship(code) {
  var c0 = ["integrated","total","systematized","parallel","functional",
            "responsive","optional","synchronized","compatible","balanced"];
  var c1 = ["management","organizational","monitored","reciprocal","digital",
            "logistical","transitional","incremental","third-generation", "policy"];
  var c2 = ["options","flexibility","capability","mobility","programming",
            "concept","time-phase","projection","hardware","contingency"];
  if (code > 999 || code < 0) {
    console.log("Enter a three digit code between 000 and 999")
  } else {
    var value = (code + "").split("").map(function(a) { return Number(a) });
    var result = c0[value[0]] + " " + c1[value[1]] + " " + c2[value[2]];
    console.log(result);
  }
}

wordsmanship(543);
wordsmanship(590);
wordsmanship(182);
wordsmanship(333);
