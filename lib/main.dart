import 'package:flutter/material.dart';
import 'package:islami_c5_sun/MyThemeData.dart';
import 'package:islami_c5_sun/home_screen.dart';
import 'package:islami_c5_sun/suraDetails/sura_details.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami',
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        SuraDetailsScreen.routeName: (buildContext) => SuraDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.theme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
