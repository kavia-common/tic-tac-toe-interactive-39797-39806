import 'dart:io';

/// PUBLIC_INTERFACE
void main(List<String> args) {
  /** Programmatically verifies this directory is a Flutter app root for CI. */
  final here = Directory.current;

  final checks = <String>[
    'pubspec.yaml',
    'lib/main.dart',
    'android/app/src/main/AndroidManifest.xml',
  ];

  var missing = <String>[];
  for (final path in checks) {
    final f = File(path);
    if (!f.existsSync()) {
      missing.add(path);
    }
  }

  if (missing.isNotEmpty) {
    stderr.writeln('Root verification FAILED. Missing: ${missing.join(', ')}');
    stderr.writeln('Tip: cd to tic-tac-toe-interactive-39797-39806/tic_tac_toe_frontend.');
    exit(2);
  }

  stdout.writeln('Verified Flutter app root at: ${here.path}');
  exit(0);
}
