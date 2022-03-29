import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c5_sun/layout/cubit/cubit.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'suraDetailsRoute';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {

    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;

    if (verses.isEmpty) {
      loadFile(args.index);
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(HomeLayoutCubit.get(context).isDefaultTheme ? 'assets/images/default_bg.png' : 'assets/images/dark_bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0.00,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(args.suraName),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20.00),
            verses.isEmpty ?
            const Center(child: CircularProgressIndicator()) :
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    verses.join(' '),
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void loadFile(int index) async {
    String file = await rootBundle.loadString('assets/files/${index + 1}.txt');
    setState(() {
      print('stated');
      verses = file.split('\n');
    });
  }
}


class SuraDetailsArgs {
  String suraName;
  int index;

  SuraDetailsArgs({
    required this.suraName,
    required this.index
  });
}