import 'package:flutter/material.dart';
import 'package:islami_c5_sun/layout/home_layout.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'islamic',
      routes: {HomeLayout.routeName: (buildContext) => HomeLayout()},
      initialRoute: HomeLayout.routeName,
    );
  }
}
