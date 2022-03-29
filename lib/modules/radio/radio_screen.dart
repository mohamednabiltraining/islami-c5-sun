import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Image(
          image: AssetImage('assets/images/radio_image.png'),
        ),
        const SizedBox(height: 20.0),
        Text(
          'إذاعة القرآن الكريم',
          style: Theme.of(context).textTheme.headline1,
        ),
        Row(
          children: [
            Icon(Icons.play_arrow_sharp),
            Icon(Icons.play_arrow_sharp),
          ],
        ),
      ],
    );
  }
}
