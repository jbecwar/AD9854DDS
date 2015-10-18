var SerialPort = require("serialport").SerialPort;


var port = new SerialPort("/dev/tty-usbserial1", {
  baudrate: 9600,
  databits: 8,
  stopbits: 1,
  parity: "none",
}, false);

module.exports.listPorts = function() {
  var p = new Promise(function(resolve, reject) {
    var serialPort = require("serialport");
    serialPort.list(function(err, ports) {
      if (err) {
        return reject(err);
      }
      return resolve(ports);
    });

  });
  return p;
};

module.exports.setPort = function(port) {
  var p = new Promise(function(resolve, reject) {
    module.exports.close()
      .then(function() {
        port = new SerialPort(port, {
          baudrate: 9600,
          databits: 8,
          stopbits: 1,
          parity: "none",
        }, false);
        resolve();
      })
      .catch(function(err) {
        reject(err);
      });
  });
  return p;
};


module.exports.open = function() {
  var p = new Promise(function(resolve, reject) {
    port.open(function(error) {
      if (error) {
        return reject(error);
      }
      return resolve();
    });
  });
  return p;
};

module.exports.close = function() {
  var p = new Promise(function(resolve, reject) {
    if (port === null || port.isOpen() === false) {
      return resolve();
    }

    port.drain(function(err) {

      if (err) {
        return reject(err);
      }

      port.close(function(err) {
        if (err) {
          return reject(err);
        }
        return resolve();
      });

    });

  });
  return p;

};

module.exports.write = function(buffer) {
  var p = new Promise(function(resolve, reject) {
    if (port.isOpen() === false) {
      return reject("Serial port is not open.");
    }

    port.write(buffer, function(err) {

      if (err) {
        return reject(err);
      }

      port.drain(function(err) {
        if (err) {
          return reject(err);
        }
        return resolve();
      });

    });

  });
  return p;


};
