import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movies/di/injectable.dart';
import 'package:movies/presentation/pages/search/widget/body_search_widget.dart';

import 'controller/search_controller.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final controller = getIt<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/image/logotipe.png',
                height: 30,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  autofocus: true,
                  decoration: const InputDecoration(
                      hintText: 'Search...',
                      contentPadding: EdgeInsets.only(left: 10)),
                  style: const TextStyle(color: Colors.white),
                  controller: controller.searchController,
                  onSubmitted: (value) {
                    controller.getMoviesByYear();
                  },
                ),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: controller.isLoading ? null : controller.getMoviesByYear,
                child: const Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.search),
                ),
              ),
            ],
          ),
        ),
        body: BodySearchWidget(),
      );
    });
  }
}
