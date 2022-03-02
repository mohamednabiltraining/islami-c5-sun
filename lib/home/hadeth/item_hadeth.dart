import 'package:flutter/material.dart';
import 'package:islami_c5_sun/home/hadeth/hadeth_details.dart';
import 'package:islami_c5_sun/home/hadeth/hadeth_tab.dart';

class ItemHadeth extends StatelessWidget {
  Hadeth item;

  ItemHadeth(this.item);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: item);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text(
          item.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
