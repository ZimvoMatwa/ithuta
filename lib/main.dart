import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ithuta/app.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const Ithuta());
}
