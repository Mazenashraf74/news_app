import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled/config/constant_page.dart';
import 'package:untitled/models/SourceDateModel.dart';
import 'package:untitled/network/soures_model.dart';

class ApiManger {
  static Future<List<SouresModel>?> fetchDateSoures(String categoriId) async {
    var url = Uri.https(Constant.Url, "/v2/top-headlines/sources",
        {"apiKey": Constant.apikey, "category": categoriId});
    List<SouresModel> sourcesDatelist = [];
    final respons = await http.get(url);
    if (respons.statusCode == 200) {
      var date = jsonDecode(respons.body);
      var sourceslist = date["sources"] as List;

      for (var element in sourceslist) {
        sourcesDatelist.add(SouresModel.formjson(element));
      }
      return sourcesDatelist;
    } else {
      throw Exception('Failed to load album');
    }
  }

  static Future<List<Articles>> fetchArtical(String souresid) async {
    Map<String, dynamic> queryparams = {
      "apiKey": Constant.apikey,
      "sources": souresid
    };
    var url = Uri.https(Constant.Url, "/v2/everything", queryparams);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var date = jsonDecode(response.body);

      SourceDateModel sourceDateModel = SourceDateModel.fromJson(date);
      return sourceDateModel.articles ?? [];
    } else {
      throw Exception("erorr");
    }
  }
}
