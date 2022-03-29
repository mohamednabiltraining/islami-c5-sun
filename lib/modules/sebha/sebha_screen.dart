import 'package:flutter/material.dart';
import 'package:islami_c5_sun/layout/cubit/cubit.dart';
import 'package:islami_c5_sun/shared/styles/theme.dart';

class SebhaScreen extends StatefulWidget {

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int sebhaCount = 0;
  int currentWordIdx = 0;
  List<String> sebhaWord = ['سبحان الله', 'الحمد لله', 'الله اكبر'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(HomeLayoutCubit.get(context).isDefaultTheme ? 'assets/images/sebha_header.png' : 'assets/images/sebha_dark_header.png'),
            height: 200,
          ),
          const SizedBox(height: 20.00,),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 20.00,),
          Container(
            padding: const EdgeInsets.all(20.00),
            decoration: BoxDecoration(
              color: AppTheme.secColorLight,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Text(
              '${sebhaCount}',
              style: TextStyle(
                fontSize: 20.00,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          const SizedBox(height: 20.00),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.00),
            decoration: BoxDecoration(
              color: AppTheme.secColorLight,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (sebhaCount == 33) {
                    sebhaCount = 0;
                    if (currentWordIdx == sebhaWord.length - 1) {
                      currentWordIdx = 0;
                    } else {
                      currentWordIdx++;
                    }
                  }
                  sebhaCount++;
                });
              },
              child: Text(
                '${sebhaWord[currentWordIdx]}',
                style: TextStyle(
                  fontSize: 20.00,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.lightColor
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}
