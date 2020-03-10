// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

var fs = require('fs');
var vm = require('vm');

function __load(path) {
  var data = fs.readFileSync(path);
  var script = vm.createScript(data.toString(), path);
  script.runInThisContext();
}

var args = process.argv.slice(2);
var argc = args.length;

for (var i = 0; i < argc-1; ++i) {
  __load(args[i]);
}

var main = vm.createScript(args[argc-1] + '.main()', 'main');
main.runInThisContext();
