import 'package:flutter/material.dart';
import 'package:islami_c5_sun/MyThemeData.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(children: [
        Container(
          margin: EdgeInsets.only(left: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/head_sebha_logo.png',
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 80, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/body_sebha_logo.png'),
            ],
          ),
        ),
      ]),
      Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: Text("عدد التسبيحات",
                  style: TextStyle(
                    fontSize: 25,
                  )),
            ),
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text('$counter',
                style: TextStyle(
                    fontSize: 25,
                    backgroundColor: Color.fromRGBO(183, 147, 95, 0.5))),
            decoration: BoxDecoration(
              border: Border.all(
                width: 20,
                color: Color.fromRGBO(183, 147, 95, 0.5),
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ],
      ),
    Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container (
    padding: EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(183, 147, 95, 1.0)),
              onPressed: () {
                counter++;
                setState(() {});
              },
              child: Text(
                "سبحان الله",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
        ),
          ],
      ),
    ]);
  }
}
