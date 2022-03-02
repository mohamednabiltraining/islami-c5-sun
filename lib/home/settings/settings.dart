import 'package:flutter/material.dart';
import 'package:islami_c5_sun/home/settings/theme_bottom_sheet.dart';
import 'package:islami_c5_sun/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Theme'),
          InkWell(
            onTap: () {
              showThemeSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child:
                  Text(provider.themeMode == ThemeMode.dark ? 'Dark' : 'Light'),
            ),
          )
        ],
      ),
    );
  }

  void showThemeSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return ThemeBottomSheet();
        });
  }
}
