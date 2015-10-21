var Long = require("long");

var multiplier = 10;
var clock = 30; //mhz
var prefix = "$WR";
var suffix = "*";
var amplifer = false;
var I = 0;
var Q = 0;
var triangle = false;


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

  //The last 00 is the ECC code.  Its ignored...
  return (prefix + "02" + s[10] + s[11] + s[8] + s[9] + s[6] + s[7] + s[4] + s[5] + s[2] + s[3] + s[0] + s[1] + "00" + suffix).toUpperCase();
};

module.exports.setMultiplier = function(newMult) {
  if (newMult >= 1 && newMult <= 10) {
    multiplier = Number.parseInt(newMult);
  }
};

module.exports.setAmplifer = function(amp) {
  if (amp) {
    amplifer = true;
    return;
  }
  amplifer = false;
};

module.exports.setTriangle = function(tri) {
  if (tri) {
    triangle = true;
    return;
  }
  triangle = false;
};

module.exports.setIQ = function(it, qt) {
  if (it >= 0 && it <= 255) {
    I = it;
  }
  if (qt >= 0 && qt <= 255) {
    Q = qt;
  }
};

module.exports.buildConfigCommand = function() {
  var a = "40";
  if (amplifer) {
    a = "60";
  }

  var mult = "20";

  if (multiplier > 1) {
    mult = multiplier.toString(16);
    if (mult.length === 1) {
      mult = "0" + mult;
    }
  }

  if (clock * multiplier > 200) {
    mult = (multiplier + 0x40).toString(16);
  }

  return (prefix + "07" + a + "80" + mult + "00" + "00" + "00" + "00" + suffix).toUpperCase();
};
