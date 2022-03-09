import 'package:flutter/material.dart';
import 'package:islami_c5_sun/providers/language_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var langProvider = Provider.of<LanguageProvider>(context);
    return Column(
      children: [
        InkWell(
          onTap: () {
            langProvider.changeLanguage('ar');
          },
          child: Container(
            padding: EdgeInsets.all(12),
            child: getLanguageItem('العربيه', langProvider.code == 'ar'),
          ),
        ),
        InkWell(
          onTap: () {
            langProvider.changeLanguage('en');
          },
          child: Container(
            padding: EdgeInsets.all(12),
            child: getLanguageItem('English', langProvider.code == 'en'),
          ),
        )
      ],
    );
  }

  Widget getLanguageItem(String langName, bool isSelected) {
    if (isSelected) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            langName,
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
        Text(langName, style: Theme.of(context).textTheme.subtitle1),
      ],
    );
  }
}
