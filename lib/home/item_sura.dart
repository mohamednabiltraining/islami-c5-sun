import 'package:flutter/material.dart';
import 'package:islami_c5_sun/suraDetails/sura_details.dart';

class ItemSura extends StatelessWidget {
  String suraName;
  int index;

  ItemSura(this.suraName, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraDetailsArgs(index, suraName));
      },
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text(
          suraName,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
