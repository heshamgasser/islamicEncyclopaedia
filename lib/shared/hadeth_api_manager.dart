import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:quran/constants/app_const.dart';
import 'package:quran/models/hadeth_category.dart';

class HadithAPIFucnction {
  static Future<List<HadethCategory>> getHadithCategory(String lang) async {
    Uri url = Uri.https(
      hadethBaseUrl,
      hadethCategoryEndPoint,
      {'language': lang},
    );
    Response response = await http.get(url);
    var jsonResponse = (jsonDecode(response.body) as List)
        .map((e) => HadethCategory.fromJson(e))
        .toList();
    List<HadethCategory> hadithCategory = jsonResponse;

    return hadithCategory;
  }

  void getHadithList() async {
    Uri url = Uri.https(
      hadethBaseUrl,
      hadethCategoryEndPoint,
      {'language': 'en'},
    );
    Response response = await http.get(url);
  }
}
