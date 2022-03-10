import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c5_sun/home/hadeth/item_hadeth.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeth.length == 0) {
      loadHadethFile();
    }
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Center(
                child: Image.asset('assets/images/hadeth_header.png'))),
        Expanded(
          flex: 2,
          child: Container(
            child: allHadeth.length == 0
                ? Center(
              child: CircularProgressIndicator(),
            )
                : ListView.builder(
              itemBuilder: (_, index) {
                return ItemHadeth(allHadeth[index]);
              },
              itemCount: allHadeth.length,
            ),
          ),
        ),
      ],
    );
  }

  void loadHadethFile() async {
    List<Hadeth> allHadeth = [];
    String fileContent =
    await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> singleHadethList = fileContent.trim().split('#');
    for (int i = 0; i < singleHadethList.length; i++) {
      String hadethContent = singleHadethList[i].trim();
      if (hadethContent.isEmpty) continue;
      List<String> lines = hadethContent.split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join();
      allHadeth.add(Hadeth(title, content));
    }
    this.allHadeth = allHadeth;
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth(this.title, this.content);
}
