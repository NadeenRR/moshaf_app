
import 'package:flutter/material.dart';
import 'package:moshaf_api/services/assets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Assets assets = Assets();
  int pageNumber = 0;
  List<dynamic> ayahs = [];
  double _textSize = 20.0;

  void getData() async {
    ayahs = await assets.featchData(pageNumber);
    setState(() {});
    // Map<String, dynamic> pageData = await network.fetchData(pageNumber);
    // setState(() {
    //   ayahs = pageData['data']['ayahs'];
    // });

    //   print(ayahs);
  }

  // loadJson() async {
  //   String data = await DefaultAssetBundle.of(context)
  //       .loadString("assets/hafs_smart_v8.json");
  //   final jsonResult = jsonDecode(data);
  // }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onScaleUpdate: (ScaleUpdateDetails details) {
            double scale = details.scale;
            setState(() {
              _textSize = 16.0 * scale;
            });
          },
          child: PageView.builder(
            itemBuilder: (BuildContext context, int index) {
              pageNumber = index + 1;
              getData();
              return Row(
                mainAxisAlignment: pageNumber % 2 == 0
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                textDirection:
                    pageNumber % 2 == 0 ? TextDirection.rtl : TextDirection.ltr,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    width: 5,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xfffffec6),
                            Color.fromARGB(255, 254, 255, 194),
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  for (int i = 0; i < ayahs.length; i++) ...{
                                    TextSpan(
                                      text: '${ayahs[i]['aya_text']}',
                                      style: TextStyle(
                                          fontSize: _textSize,
                                          fontFamily: 'HafsSmart'),
                                    ),
                                  }
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(pageNumber.toString()),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
