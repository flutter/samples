// make sure to keep this as 'var'
// we don't want block scoping

var dartNodePreambleSelf = typeof global !== "undefined" ? global : window;

var self = Object.create(dartNodePreambleSelf);

self.scheduleImmediate = self.setImmediate
    ? function (cb) {
        dartNodePreambleSelf.setImmediate(cb);
      }
    : function(cb) {
        setTimeout(cb, 0);
      };

// CommonJS globals.
self.require = require;
self.exports = exports;

// Node.js specific exports, check to see if they exist & or polyfilled

if (typeof process !== "undefined") {
  self.process = process;
}

if (typeof __dirname !== "undefined") {
  self.__dirname = __dirname;
}

if (typeof __filename !== "undefined") {
  self.__filename = __filename;
}

// if we're running in a browser, Dart supports most of this out of box
// make sure we only run these in Node.js environment
if (!dartNodePreambleSelf.window) {
  // This line is to:
  // 1) Prevent Webpack from bundling.
  // 2) In Webpack on Node.js, make sure we're using the native Node.js require, which is available via __non_webpack_require__
  // https://github.com/mbullington/node_preamble.dart/issues/18#issuecomment-527305561
  var url = ("undefined" !== typeof __webpack_require__ ? __non_webpack_require__ : require)("url");

  self.location = {
    get href() {
      if (url.pathToFileURL) {
        return url.pathToFileURL(process.cwd()).href + "/";
      } else {
        // This isn't really a correct transformation, but it's the best we have
        // for versions of Node <10.12.0 which introduced `url.pathToFileURL()`.
        // For example, it will fail for paths that contain characters that need
        // to be escaped in URLs.
        return "file://" + (function() {
          var cwd = process.cwd();
          if (process.platform != "win32") return cwd;
          return "/" + cwd.replace(/\\/g, "/");
        })() + "/"
      }
    }
  };

  (function() {
    function computeCurrentScript() {
      try {
        throw new Error();
      } catch(e) {
        var stack = e.stack;
        var re = new RegExp("^ *at [^(]*\\((.*):[0-9]*:[0-9]*\\)$", "mg");
        var lastMatch = null;
        do {
          var match = re.exec(stack);
          if (match != null) lastMatch = match;
        } while (match != null);
        return lastMatch[1];
      }
    }

    var cachedCurrentScript = null;
    self.document = {
      get currentScript() {
        if (cachedCurrentScript == null) {
          cachedCurrentScript = {src: computeCurrentScript()};
        }
        return cachedCurrentScript;
      }
    };
  })();

  self.dartDeferredLibraryLoader = function(uri, successCallback, errorCallback) {
    try {
     load(uri);
      successCallback();
    } catch (error) {
      errorCallback(error);
    }
  };
}
