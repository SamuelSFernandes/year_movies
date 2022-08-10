import 'package:flutter/material.dart';

import '../../../../data/models/result_year_movies_model.dart';
import '../../../../infra/theme/default_colors.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MoviesByYear movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 10,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: AppColors.backgroundDark.withOpacity(0.1),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Year: ${movie.year}',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'movies: ${movie.movies}',
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
