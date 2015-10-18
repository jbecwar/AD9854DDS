var Code = require('code'); // assertion library
var Lab = require('lab');
var lab = exports.lab = Lab.script();
var lib = require('../lib/ad9854.js');

lab.test('Tests changing freq on Ch1', function(done) {

  lib.setMultiplier(10);

  var result = lib.setFreq(1);
  Code.expect(result).to.equal("0240A70D74DA0045");

  result = lib.setFreq(10);
  Code.expect(result).to.equal("02888888888808B3");

  result = lib.setFreq(100);
  Code.expect(result).to.equal("0255555555555501");

  //Not sure if I copyed down the wrong value... calculates 0x07 for ecc
  result = lib.setFreq(0.1);
  Code.expect(result).to.equal("02ECC367D8150006");

  lib.setMultiplier(1);

  result = lib.setFreq(1);
  Code.expect(result).to.equal("02888888888808B3");

  result = lib.setFreq(10);
  Code.expect(result).to.equal("0255555555555501");

  // result = lib.setFreq(100);
  // Code.expect(result).to.equal("crash in example...");

  lib.setMultiplier(5);

  result = lib.setFreq(1);
  Code.expect(result).to.equal("02814E1BE8B4018A");

  //this fails  it calculates 67
  result = lib.setFreq(10);
  Code.expect(result).to.equal("0211111111111169");

  //this fails  result is 01 for the ecc byte
  result = lib.setFreq(100);
  Code.expect(result).to.equal("02AAAAAAAAAAAAFF");



  done();
});
