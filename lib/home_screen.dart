import 'package:flutter/material.dart';
import 'package:islami_c5_sun/MyThemeData.dart';
import 'package:islami_c5_sun/home/hadeth/hadeth_tab.dart';
import 'package:islami_c5_sun/home/quran_tab.dart';
import 'package:islami_c5_sun/home/radio_tab.dart';
import 'package:islami_c5_sun/home/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          bottomNavigationBar: Theme(
            data:
                Theme.of(context).copyWith(canvasColor: MyThemeData.colorGold),
            child: BottomNavigationBar(
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              currentIndex: currentIndex,
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                    label: 'Hadeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                    label: 'Tasbeh'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                    label: 'Radio'),
              ],
            ),
          ),
          body: tabs[currentIndex],
        )
      ],
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), TasbehTab(), RadioTab()];
}
