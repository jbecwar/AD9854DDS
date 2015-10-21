var Code = require('code'); // assertion library
var Lab = require('lab');
var lab = exports.lab = Lab.script();
var lib = require('../lib/ad9854.js');

lab.test('returns true when 1 + 1 equals 2', function(done) {
  lib.setAmplifer(false);
  lib.setTriangle(false);

  lib.setMultiplier(1);
  var result = lib.buildConfigCommand();
  Code.expect(result).to.equal("$WR0740802000000000*");

  lib.setMultiplier(5);
  result = lib.buildConfigCommand();
  Code.expect(result).to.equal("$WR0740800500000000*");

  lib.setMultiplier(10);
  result = lib.buildConfigCommand();
  Code.expect(result).to.equal("$WR0740804A00000000*");

  done();
});
