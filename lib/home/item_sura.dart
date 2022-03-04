import 'package:flutter/material.dart';

class ItemSura extends StatelessWidget {
  String suraName;

  ItemSura(this.suraName);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Text(
        suraName,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
