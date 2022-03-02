import 'package:flutter/material.dart';
import 'package:islami_c5_sun/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);

    return Column(
      children: [
        InkWell(
          onTap: () {
            provider.changeTheme(ThemeMode.light);
          },
          child: Container(
            padding: EdgeInsets.all(12),
            child:
                getThemeWidget('Light', provider.themeMode == ThemeMode.light),
          ),
        ),
        InkWell(
          onTap: () {
            provider.changeTheme(ThemeMode.dark);
          },
          child: Container(
            padding: EdgeInsets.all(12),
            child: getThemeWidget('Dark', provider.themeMode == ThemeMode.dark),
          ),
        )
      ],
    );
  }

  Widget getThemeWidget(String themeName, bool isSelected) {
    if (isSelected) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            themeName,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Theme.of(context).primaryColor),
          ),
          Icon(Icons.check, color: Theme.of(context).primaryColor)
        ],
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(themeName, style: Theme.of(context).textTheme.subtitle1),
      ],
    );
  }
}
