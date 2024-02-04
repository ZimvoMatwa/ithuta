import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ithuta/app.dart';

import 'package:ithuta/service_locator.dart' as service_locator;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await service_locator.registerServices();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const Ithuta());
}
