import 'package:flutter/material.dart';

import '../../shared/text_form_field_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/logo_app.png',
                height: 80,
              ),
              const SizedBox(height: 20),
              TextFormFieldWidget(
                hintText: 'Search movies...',
                keyboardType: TextInputType.none,
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 35,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/search');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
