import 'dart:io';
import 'package:path/path.dart' as p;

Future<void> main() async {
  await fixBaseTags();
}

/// Changes each sample's `<base href="/">` tag in index.html to
/// `<base href="/samples/web/<SAMPLE_DIR_NAME>/">`
///
/// For example, after building using `build_ci.dart,
/// `../samples_index/public/web/navigation_and_routing/index.html` should
/// contain `<base href="/samples/web/navigation_and_routing/">
Future<void> fixBaseTags() async {
  print('currentDir = ${Directory.current.path}');
  var builtSamplesDir = Directory(p.joinAll([
    // Parent directory
    ...p.split(Directory.current.path),
    // path to built samples
    ...p.split('samples_index/public/web')
  ]));
  if (!await builtSamplesDir.exists()) {
    print('${builtSamplesDir.path} does not exist.');
    exit(1);
  }

  await for (var builtSample in builtSamplesDir.list()) {
    if (builtSample is Directory) {
      var index = File(p.join(builtSample.path, 'index.html'));
      if (!await index.exists()) {
        throw ('no index.html file found in ${builtSample.path}');
      }

      var sampleDirName = p.split(builtSample.path).last;

      if (await index.exists()) {
        final regex = RegExp('<base href="(.*)">');
        var contents = await index.readAsString();
        if (!contents.contains(regex)) {
          continue;
        }
        var newContents = contents.replaceFirst(
            regex, '<base href="/samples/web/$sampleDirName/">');
        await index.writeAsString(newContents);
      }
    }
  }
}
