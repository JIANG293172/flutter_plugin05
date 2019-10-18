import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_plugin05/flutter_plugin05.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  String _testStringMake = "unInit";

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    String testStringMake;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await FlutterPlugin05.platformVersion;
      testStringMake = await FlutterPlugin05.testString;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
      _testStringMake = testStringMake;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(pubspec.yaml
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[

              Center(
                child: Text('Running on: taotaotaotaotaotaotaotaotao  $_platformVersion\n'),
              ),
              Center(
                child: Text('make Test on taotaotaotao $_testStringMake\n'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
