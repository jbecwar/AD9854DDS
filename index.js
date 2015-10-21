var serial = require("./lib/serial.js");
var ad = require("./lib/ad9854.js");

serial.listPorts().then(function(ports) {
    console.log(ports);
  })
  .then(function() {
    serial.setPort("/dev/cu.wchusbserial1410")
      .then(function() {
        return serial.open();
      })
      .then(function() {
        //ad.setMultiplier(10);
        //return serial.write(ad.buildConfigCommand());

      })
      .then(function() {
        return serial.write(ad.setFreq(40));
      })
      .then(function() {
        return serial.close();
      })
      .catch(function(err) {
        console.log(err);
      });
  });
