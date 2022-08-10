import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movies/infra/theme/default_colors.dart';

import '../../../../di/injectable.dart';
import '../../../shared/loading_widget.dart';
import '../controller/search_controller.dart';
import 'count_movies_widget.dart';
import 'list_tile_widget.dart';

class BodySearchWidget extends StatelessWidget {
  BodySearchWidget({Key? key}) : super(key: key);
  final controller = getIt<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (controller.isLoading) {
          return const LoadingWidget(
            message: 'We are organizing the movies',
          );
        } else if (controller.isLoading == false &&
            controller.totalMovies == 0) {
          return Center(
            child: Text(
              "We didn't find anything related \n:(",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
          );
        }
        return CustomScrollView(
          slivers: [
            SliverVisibility(
              visible:
                  controller.totalMovies != null && controller.totalMovies != 0,
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    CountMoviesWidget(
                      totalMovies: controller.totalMovies ?? 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Movies by year: ',
                            style:
                                Theme.of(context).textTheme.headline1!.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                          PopupMenuButton<int>(
                            icon: const Icon(Icons.filter_alt_sharp),
                            onSelected: (value) {
                              if (value == 1 && controller.isOrderAsceding) {
                                controller.sortByAscending();
                              } else if (value == 1 &&
                                  !controller.isOrderAsceding) {
                                controller.sortByDescending();
                              }
                              if (value == 2 && controller.isOrderSmallest) {
                                controller.sortBySmallestMovies();
                              } else if (value == 2 &&
                                  !controller.isOrderSmallest) {
                                controller.sortByLargestMovies();
                              }
                            },
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                value: 1,
                                child: Row(
                                  children: [
                                    const Icon(Icons.sort_by_alpha_sharp),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      controller.isOrderAsceding
                                          ? "Ascending"
                                          : "Descending",
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: 2,
                                child: Row(
                                  children: [
                                    Icon(
                                      controller.isOrderSmallest
                                          ? Icons.arrow_upward
                                          : Icons.arrow_downward,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Number of films",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                            color: AppColors.backgroundAlertDark,
                            elevation: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: controller.listMoviesByYear.length,
                (context, index) {
                  final movie = controller.listMoviesByYear[index];

                  return ListTileWidget(movie: movie);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
