import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName = 'homeScreenRoute';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'app bar name',
        ),
        centerTitle: true,
      ),
    );
  }
}
