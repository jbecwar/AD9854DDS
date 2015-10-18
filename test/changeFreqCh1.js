var Code = require('code'); // assertion library
var Lab = require('lab');
var lab = exports.lab = Lab.script();
var lib = require('../lib/ad9854.js');

lab.test('Tests changing freq on Ch1', function(done) {

  lib.setMultiplier(10);

  var result = lib.setFreq(1);
  Code.expect(result).to.equal("$WR0240A70D74DA0000*");

  result = lib.setFreq(10);
  Code.expect(result).to.equal("$WR0288888888880800*");

  result = lib.setFreq(100);
  Code.expect(result).to.equal("$WR0255555555555500*");

  //Not sure if I copyed down the wrong value... calculates 0x07 for ecc
  result = lib.setFreq(0.1);
  Code.expect(result).to.equal("$WR02ECC367D8150000*");

  lib.setMultiplier(1);

  result = lib.setFreq(1);
  Code.expect(result).to.equal("$WR0288888888880800*");

  result = lib.setFreq(10);
  Code.expect(result).to.equal("$WR0255555555555500*");

  // result = lib.setFreq(100);
  // Code.expect(result).to.equal("crash in example...");

  lib.setMultiplier(5);

  result = lib.setFreq(1);
  Code.expect(result).to.equal("$WR02814E1BE8B40100*");

  //this fails  it calculates 67
  result = lib.setFreq(10);
  Code.expect(result).to.equal("$WR0211111111111100*");

  //this fails  result is 01 for the ecc byte
  result = lib.setFreq(100);
  Code.expect(result).to.equal("$WR02AAAAAAAAAAAA00*");



  done();
});
