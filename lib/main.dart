import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_c5_sun/MyThemeData.dart';
import 'package:islami_c5_sun/home/hadeth/hadeth_details.dart';
import 'package:islami_c5_sun/home_screen.dart';
import 'package:islami_c5_sun/providers/language_provider.dart';
import 'package:islami_c5_sun/providers/theme_provider.dart';
import 'package:islami_c5_sun/suraDetails/sura_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ThemeProvider()),
    ChangeNotifierProvider(create: (_) => LanguageProvider()),
  ], child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    var languageProvider = Provider.of<LanguageProvider>(context);
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
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale(languageProvider.code),
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
