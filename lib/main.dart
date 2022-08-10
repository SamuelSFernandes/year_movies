import 'package:flutter/material.dart';
import 'package:movies/presentation/app/app_widget.dart';

import 'di/injectable.dart' as di;

void main() async {
  await di.init();

  runApp(const AppWidget());
}
