import 'package:flutter/material.dart';
import 'package:islami_c5_sun/MyThemeData.dart';
import 'package:islami_c5_sun/home/hadeth/hadeth_details.dart';
import 'package:islami_c5_sun/home_screen.dart';
import 'package:islami_c5_sun/providers/theme_provider.dart';
import 'package:islami_c5_sun/suraDetails/sura_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) {
        return ThemeProvider();
      },
      child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Islami',
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        HadethDetailsScreen.routeName: (buildContext) => HadethDetailsScreen(),
        SuraDetailsScreen.routeName: (buildContext) => SuraDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.theme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: themeProvider.themeMode,
    );
  }
}
