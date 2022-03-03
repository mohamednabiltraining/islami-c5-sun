import 'package:flutter/material.dart';



class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  int index=0;
  List<String>PrayString=['سبحان الله','الحمدلله','لا اله الا الله','الله اكبر','لا حول ولا قوة الا بالله'];
  @override
  void incrementCounter() {
    setState(() {
      counter++;
      if(index==0 && counter==34){
        index=1;
        counter=0;
      }else if(index==1 && counter==33) {
        index = 2;
        counter = 0;
      }else if(index==2 && counter==33){
        index = 3;
        counter = 0;
      }else if(index==3 && counter==33) {
        index = 4;
        counter = 0;
      }else if(index==4 && counter==33) {
        index = 0;
        counter = 0;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Column(
            children: [
              Image.asset('assets/images/head_of_seb7a.png',height:280,),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Column(
            children: [
              Text('Number Of Tasbeeh',
                  style: TextStyle(
                    fontSize: 25,
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(183, 147, 95, 100),
                ),
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                width: 65,
                height: 70,
                child: Text('$counter',
                    style:
                    TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),primary: Color.fromARGB(
                      255, 183, 147, 95),onPrimary: Colors.white,),

                  onPressed: (
                      ) {
                    incrementCounter();
                  },
                  child: Text(
                    PrayString[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
