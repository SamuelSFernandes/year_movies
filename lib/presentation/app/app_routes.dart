import 'package:flutter/material.dart';
import 'package:movies/presentation/pages/search/search_page.dart';

import '../../infra/constants/named_routes.dart';
import '../pages/home/home_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  NamedRoutes.home: (context) => const HomePage(),
  NamedRoutes.search: (context) => const SearchPage(),
};
