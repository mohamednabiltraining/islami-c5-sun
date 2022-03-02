import 'package:flutter/material.dart';

class ItemVerse extends StatelessWidget {
  String text;
  int index;

  ItemVerse(this.text, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Text(
        '$text {${index + 1}}',
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
