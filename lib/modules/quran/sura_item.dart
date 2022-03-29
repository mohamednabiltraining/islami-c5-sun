import 'package:flutter/material.dart';
import 'package:islami_c5_sun/modules/quran/sura_details.dart';
import 'package:islami_c5_sun/shared/styles/theme.dart';

class SuraItem extends StatelessWidget {
  String suraName;
  int index;

  SuraItem({
    required this.suraName,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
              '${250}',
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          width: 2,
          height: 40,
          child: Container(
            color: AppTheme.secColor,
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                SuraDetails.routeName,
                arguments: SuraDetailsArgs(
                  suraName: suraName,
                  index: index
                )
              );
            },
            child: Text(
              suraName,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
