import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0, index = 0;
  List<String> azkar = [
    "سبحان الله",
    "الحمدلله",
    "لا إله إلا الله",
    "الله أكبر",
    "لا حول ولا قوة إلا بالله"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(children: [
        Container(
          margin: EdgeInsets.only(left: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/head_sebha_logo.png',)
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
            width: 60,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(183, 147, 95, 0.5),
              border: Border.all(
                color: Color.fromRGBO(183, 147, 95, 0.1),
              ),
            ),
            child:
                Center(child: Text("$counter", style: TextStyle(fontSize: 25))),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(183, 147, 95, 1.0)),
              onPressed: () {
                counter++;
                if (counter == 33) {
                  index++;
                  counter = 0;
                }
                if (index == 5) {
                  index = 0;
                }
                setState(() {});
              },
              child: Text(
                "${azkar[index]}",
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
