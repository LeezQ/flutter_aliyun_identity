import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAliyunIdentity {
  static const MethodChannel _channel =
      MethodChannel('flutter_aliyun_identity');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<Map> sdkInit() async {
    return await _channel.invokeMethod('init');
  }

  static Future<Map> sdkMetaInfos() async {
    return await _channel.invokeMethod('getMetaInfos');
  }

  static Future<Map> sdkVerify(Map params) async {
    return await _channel.invokeMethod('verify', params);
  }
}
