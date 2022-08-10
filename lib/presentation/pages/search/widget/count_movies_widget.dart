import 'package:flutter/material.dart';

import '../../../../infra/theme/default_colors.dart';

class CountMoviesWidget extends StatelessWidget {
  final int totalMovies;
  const CountMoviesWidget({
    Key? key,
    required this.totalMovies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.redColor,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 20,
      ),
      alignment: Alignment.center,
      child: Text(
        'Total movies: $totalMovies',
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
