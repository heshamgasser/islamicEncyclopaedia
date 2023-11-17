import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:quran/constants/app_const.dart';
import 'package:quran/models/hadith/hadith_category.dart';
import 'package:quran/models/hadith/hadith_detail_item.dart';
import 'package:quran/models/hadith/hadith_list.dart';
import 'package:quran/screen/views/hadeth_list.dart';


class HadithAPIFucnction {
  static Future<List<HadithCategory>> getHadithCategory(String lang) async {
    Uri url = Uri.https(
      hadethBaseUrl,
      hadethCategoryEndPoint,
      {'language': lang},
    );
    Response response = await http.get(url);
    var jsonResponse = (jsonDecode(response.body) as List)
        .map((e) => HadithCategory.fromJson(e))
        .toList();
    List<HadithCategory> hadithCategory = jsonResponse;

    return hadithCategory;
  }

  static Future<HadithList> getHadithList(String lang, String categoryId) async {
    Uri url = Uri.https(
      hadethBaseUrl,
      hadethListEndPoint,
      {'language': lang,
      'category_id' : categoryId
      },
    );
    Response response = await http.get(url);
    var jsonResponse = jsonDecode(response.body);
    HadithList hadithList = HadithList.fromJson(jsonResponse);
    return hadithList;
  }

  static Future<HadithDetailItems> getHadithDetail (String lang, String hadithId) async {
    Uri url = Uri.https(
      hadethBaseUrl,
      hadethDetailEndPoint,
      {'language': lang,
        'id' : hadithId,
      },
    );
    Response response  = await http.get(url);
    var jsonResponse = jsonDecode(response.body);
    HadithDetailItems hadithDetail = HadithDetailItems.fromJson(jsonResponse);
    return hadithDetail;

  }

}
