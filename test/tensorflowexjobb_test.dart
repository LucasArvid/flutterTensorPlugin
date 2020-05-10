import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tensorflowexjobb/tensorflowexjobb.dart';

void main() {
  const MethodChannel channel = MethodChannel('tensorflowexjobb');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Tensorflowexjobb.platformVersion, '42');
  });
}
