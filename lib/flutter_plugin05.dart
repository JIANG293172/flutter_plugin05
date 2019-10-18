import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPlugin05 {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin05');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> get testString async {
    final String testString = await _channel.invokeMethod('testString');
    return testString;
  }

}
