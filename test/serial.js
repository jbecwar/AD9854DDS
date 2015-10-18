var Code = require('code'); // assertion library
var Lab = require('lab');
var lab = exports.lab = Lab.script();

var serial = require("../lib/serial.js");

lab.test('list ports', function(done) {

  serial.listPorts().then(function(ports) {
    Code.expect(ports).to.be.a.array();
    done();
  });

});
