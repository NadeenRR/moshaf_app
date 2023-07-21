import 'dart:convert';

import 'package:flutter/services.dart';

class Assets {
  Future<List<dynamic>> featchData(int page) async {
    String result = await rootBundle.loadString('assets/hafs_smart_v8.json');
    if (result.isNotEmpty) {
      List<dynamic> ayahs = jsonDecode(result);
      List<dynamic> pageAyah =
          ayahs.where((element) => element['page'] == page).toList();
      return pageAyah;
    }
    return Future.error('error');
  }

  Future<List<Map<String, dynamic>>> featchAthkarData() async {
    String result = await rootBundle.loadString('assets/azkar.json');
    if (result.isNotEmpty) {
      var athkar = jsonDecode(result);
      List<dynamic> typezekr = athkar['rows'];

      List<Map<String, dynamic>> athkars = [];

      for (var row in typezekr) {
        Map<String, dynamic> azkarData = {
          'category': row[0],
          'zekr': row[1],
          'description': row[2],
          'count': row[3],
          'reference': row[4],
          'search': row[5],
        };
        athkars.add(azkarData);
      }

      return athkars;
    }
    return Future.error('error');
  }
}
