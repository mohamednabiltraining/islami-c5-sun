import 'package:flutter/material.dart';
import 'package:islami_c5_sun/modules/quran/sura_item.dart';
import 'package:islami_c5_sun/shared/styles/theme.dart';

class QuranScreen extends StatelessWidget {

  static const String routeName = 'quranRoute';

  List<String> suraNames = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/images/qur2an_screen_logo.png'),
            height: 200,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            decoration: const BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: AppTheme.secColor,
                  width: 2
                )
              )
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'عدد الآيات',
                    style: Theme.of(context).textTheme.headlineLarge,
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
                  child: Text(
                    'اسم السورة',
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ]
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return SuraItem(
                  suraName: suraNames[index],
                  index: index,
                );
              },
              itemCount: suraNames.length,
            ),
          )
        ]
      )
    );
  }
}
