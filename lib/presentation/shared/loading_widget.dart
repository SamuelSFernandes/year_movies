import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends StatelessWidget {
  final String message;
  const LoadingWidget({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: Theme.of(context).textTheme.headline1,
          ),
          Lottie.asset(
            'assets/animation/movie_loading.json',
            height: 180,
            width: 180,
          ),
        ],
      ),
    );
  }
}
