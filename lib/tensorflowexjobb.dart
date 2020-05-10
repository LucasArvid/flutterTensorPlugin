import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' show Color;
import 'package:meta/meta.dart';
import 'package:flutter/services.dart';

class Tensorflowexjobb {
  static const MethodChannel _channel = const MethodChannel('tflite');

  static Future<String> loadModel({
    @required String model,
    String labels = "",
    int numThreads = 1,
    bool isAsset = true,
  }) async {
    return await _channel.invokeMethod(
      'loadModel',
      {
        "model": model,
        "labels": labels,
        "numThreads": numThreads,
        "isAsset": isAsset,
      },
    );
  }

  static Future<List> runModelOnImage(
      {@required String path,
      double imageMean = 117.0,
      double imageStd = 1.0,
      int numResults = 5,
      double threshold = 0.1,
      bool asynch = true}) async {
    return await _channel.invokeMethod(
      'runModelOnImage',
      {
        "path": path,
        "imageMean": imageMean,
        "imageStd": imageStd,
        "numResults": numResults,
        "threshold": threshold,
        "asynch": asynch,
      },
    );
  }

  static Future<List> loadImageBitmap(
      {@required String path,
      bool asynch = true}) async {
    return await _channel.invokeMethod(
      'loadImageBitmap',
      {
        "path": path,
        "asynch": asynch,
      },
    );
  }

  static Future close() async {
    return await _channel.invokeMethod('close');
  }

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
  