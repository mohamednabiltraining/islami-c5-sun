import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami_c5_sun/layout/cubit/cubit.dart';
import 'package:islami_c5_sun/layout/cubit/states.dart';
import 'package:islami_c5_sun/modules/hadeth/hadeth_screen.dart';
import 'package:islami_c5_sun/modules/quran/quran_screen.dart';
import 'package:islami_c5_sun/modules/radio/radio_screen.dart';
import 'package:islami_c5_sun/modules/sebha/sebha_screen.dart';
import 'package:islami_c5_sun/shared/styles/theme.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName = 'homeLayoutRoute';

  List<dynamic> screens = [RadioScreen(), SebhaScreen(), HadethScreen(), QuranScreen()];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeLayoutCubit, HomeLayoutStates>(
      listener: (context, state) => {},
      builder: (context, state) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(HomeLayoutCubit.get(context).isDefaultTheme ? 'assets/images/default_bg.png' : 'assets/images/dark_bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0.00,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text('إسلامي'),
            actions: [
              IconButton(
                onPressed: () => null,
                icon: const Icon(Icons.language)
              ),
              IconButton(
                onPressed: () => HomeLayoutCubit.get(context).changeTheme(),
                icon: const Icon(Icons.brightness_2_outlined)
              ),

            ],
          ),
          body: screens[HomeLayoutCubit.get(context).currentTabIndex],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: HomeLayoutCubit.get(context).isDefaultTheme ? AppTheme.secColor : AppTheme.darkColor,
            ),
            child: BottomNavigationBar(
              currentIndex: HomeLayoutCubit.get(context).currentTabIndex,
              iconSize: 32.0,
              selectedLabelStyle: const TextStyle(
                fontSize: 12.00,
                fontWeight: FontWeight.w500,
              ),
              onTap: (idx) => HomeLayoutCubit.get(context).changeTabIndex(idx),
              items: const [
                BottomNavigationBarItem(
                  label: 'Radio',
                  icon: ImageIcon(AssetImage("assets/images/icon_radio.png"),),
                ),
                BottomNavigationBarItem(
                  label: 'Sebha',
                  icon: ImageIcon(AssetImage("assets/images/icon_sebha.png"),),
                ),
                BottomNavigationBarItem(
                  label: 'Hadeth',
                  icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png"),),
                ),
                BottomNavigationBarItem(
                  label: 'Quran',
                  icon: ImageIcon(AssetImage("assets/images/icon_quran.png"),),
                ),
              ],
            ),
          ),
        )
      )
    );
  }
}
