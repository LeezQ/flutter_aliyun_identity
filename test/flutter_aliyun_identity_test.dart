import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_aliyun_identity/flutter_aliyun_identity.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_aliyun_identity');

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
    expect(await FlutterAliyunIdentity.platformVersion, '42');
  });
}
