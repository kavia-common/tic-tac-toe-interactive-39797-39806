import 'dart:io';

/// PUBLIC_INTERFACE
void main() {
  /** Prints basic project info to help local debugging of paths in CI-like environments. */
  final cwd = Directory.current.path;
  final pubspec = File('pubspec.yaml').existsSync();
  final libDir = Directory('lib').existsSync();
  final androidDir = Directory('android').existsSync();
  final assetsDir = Directory('assets').existsSync();

  stdout.writeln('Current working directory: $cwd');
  stdout.writeln('pubspec.yaml exists: $pubspec');
  stdout.writeln('lib/ exists: $libDir');
  stdout.writeln('android/ exists: $androidDir');
  stdout.writeln('assets/ exists: $assetsDir');
  if (assetsDir) {
    final icons = Directory('assets/icons');
    stdout.writeln('assets/icons exists: ${icons.existsSync()}');
    if (icons.existsSync()) {
      stdout.writeln('assets/icons contents:');
      for (final f in icons.listSync()) {
        stdout.writeln(' - ${f.path}');
      }
    }
  }
}
