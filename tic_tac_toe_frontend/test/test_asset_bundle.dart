import 'dart:async';
import 'package:flutter/services.dart';

/// A simple TestAssetBundle that can serve hardcoded assets for tests.
class TestAssetBundle extends CachingAssetBundle {
  final Map<String, String> _stringAssets;
  TestAssetBundle(this._stringAssets);

  @override
  Future<ByteData> load(String key) async {
    final asset = _stringAssets[key];
    if (asset == null) {
      throw FlutterError('Test asset not found: $key');
    }
    return ByteData.view(Uint8List.fromList(asset.codeUnits).buffer);
  }

  @override
  Future<String> loadString(String key, {bool cache = true}) async {
    final asset = _stringAssets[key];
    if (asset == null) {
      throw FlutterError('Test asset not found: $key');
    }
    return asset;
  }
}
