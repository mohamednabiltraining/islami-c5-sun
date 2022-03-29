import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami_c5_sun/layout/cubit/cubit.dart';
import 'package:islami_c5_sun/layout/cubit/states.dart';
import 'package:islami_c5_sun/layout/home_layout.dart';
import 'package:islami_c5_sun/modules/quran/sura_details.dart';
import 'package:islami_c5_sun/shared/styles/theme.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeLayoutCubit(),
      child: BlocConsumer<HomeLayoutCubit, HomeLayoutStates>(
        listener: (context, state) => {},
        builder: (context, state) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'islamic',
          routes: {
            HomeLayout.routeName: (buildContext) => HomeLayout(),
            SuraDetails.routeName: (buildContext) => SuraDetails(),
          },
          initialRoute: HomeLayout.routeName,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: HomeLayoutCubit.get(context).isDefaultTheme ? ThemeMode.light : ThemeMode.dark,
        ),
      ),
    );
  }
}
