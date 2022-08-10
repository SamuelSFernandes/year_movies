import 'package:flutter/material.dart';

import '../../infra/constants/named_routes.dart';
import '../../infra/theme/default_theme.dart';
import 'app_routes.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomThemes.defaultTheme,
      initialRoute: NamedRoutes.home,
      routes: appRoutes,
    );
  }
}
