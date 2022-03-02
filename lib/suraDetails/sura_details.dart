import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c5_sun/suraDetails/item_verse.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.length == 0) {
      loadFile(args.index);
    }
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.suraName,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: verses.length == 0
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                itemBuilder: (_, index) {
                  return ItemVerse(verses[index], index);
                },
                itemCount: verses.length,
                separatorBuilder: (buildContext, index) {
                  return Container(
                    color: Theme.of(buildContext).primaryColor,
                    height: 1,
                  );
                },
              ),
      )
    ]);
  }

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    print(fileContent);
    List<String> ayat = fileContent.split('\n');
    verses = ayat;
    setState(() {});
  }
}

class SuraDetailsArgs {
  int index;
  String suraName;

  SuraDetailsArgs(this.index, this.suraName);
}
