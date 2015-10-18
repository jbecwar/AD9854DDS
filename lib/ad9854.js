var Long = require("long");

var multiplier = 10;
var clock = 30; //mhz
var prefix = "$WR";
var suffix = "*";

module.exports.setFreq = function(mhz) {
  var fre_out = mhz * 1000000;

  var fre_std = multiplier * clock * 1000000;

  var twoTo48 = 281474976710656;

  var temp = (fre_out / fre_std) * twoTo48;

  var long = new Long.fromNumber(temp);

  var s = long.toString(16);

  while (s.length < 12) {
    s = "0" + s;
  }

  return withECC(("02" + s[10] + s[11] + s[8] + s[9] + s[6] + s[7] + s[4] + s[5] + s[2] + s[3] + s[0] + s[1])).toUpperCase();
};

module.exports.setMultiplier = function(newMult) {
  if (newMult >= 1 && newMult <= 10) {
    multiplier = Number.parseInt(newMult);
    //todo:  Send command...
  }
};


var withECC = function(bytesAsString) {

  var total = Long.fromNumber(1);
  for (var i = 0; i < bytesAsString.length - 1; i += 2) { //skip the first command byte
    total = total.add(Number.parseInt("0x" + bytesAsString[i] + bytesAsString[i + 1]));
  }
  var ecc = (total.modulo(255)).toString(16);

  while (ecc.length < 2) {
    ecc = "0" + ecc;
  }

  return bytesAsString + ecc;
};
