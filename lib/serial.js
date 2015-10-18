var SerialPort = require("serialport").SerialPort;
var port = null;

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

module.exports.setPort = function(path) {
  var p = new Promise(function(resolve, reject) {

    module.exports.close()
      .then(function() {
        port = new SerialPort(path, {
          baudrate: 9600,
          databits: 8,
          stopbits: 1,
          parity: "none",
        }, false);

        return resolve();
      })
      .catch(function(err) {
        return reject(err);
      });
  });
  return p;
};


module.exports.open = function() {
  var p = new Promise(function(resolve, reject) {
    if (port === null) {
      return reject("Port is not set.");
    }
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
    if (port === null || port.isOpen() === false) {
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
