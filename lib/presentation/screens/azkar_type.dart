import 'package:flutter/material.dart';

import '../../services/assets.dart';
import '../../utils/constaint.dart';
import '../widgets/custom_app_bar_zkar.dart';
import '../widgets/my_zekr.dart';

class AzkarType extends StatefulWidget {
  const AzkarType({super.key});

  @override
  State<AzkarType> createState() => _AzkarTypeState();
}

class _AzkarTypeState extends State<AzkarType> {
  int counter = 0;
  Color counterColor = kPrimaryColor;

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
        if (counter == 0) {
          counterColor = Colors.red;
        }
      }
    });
  }

  Assets assets = Assets();
  List<Map<String, dynamic>> athkars = [];

  void getAzkarData() async {
    athkars = await assets.featchAthkarData();
    setState(() {});
    for (var azkar in athkars) {
      if (azkar['category'] == 'أذكار المساء') {
        print('Zekr: ${azkar['zekr']}');
        print('Count: ${azkar['count']}');
        print('Count: ${azkar['description']}');
      }
    }
  }

  @override
  void initState() {
    decrementCounter();
    getAzkarData();
    super.initState();
  }

  final PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    dynamic arg = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: customAppBar(arg),
      body: PageView.builder(
        controller: controller,
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: athkars.length,
        itemBuilder: (context, index) {
          var azkar = athkars[index];
          String zekr = azkar['zekr'];
          int count = azkar['count'];
          String description = azkar['description'];
          String reference = azkar['reference'];
          //count = counter;
          print('donnnnnneee');
          if (azkar['category'] == arg) {
            return MyZekr(
              color: counterColor,
              count: count,
              onTap: decrementCounter,
              zekr: zekr,
              description: description,
              reference: reference,
              bookmark: () {},
            );
          }
          return null;
        },
      ),
    );
  }
}
