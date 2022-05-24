import 'dart:convert';

import 'package:hackathonapp/model/CatFetch.dart';
import 'package:http/http.dart' as http;

class Apis {
  static getAllCat() async {
    List<CatFetch> cat = [];
    var token =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjUzMzUzMzEyLCJleHAiOjE2NTMzNTY5MTJ9._aSBWsjT-rUJXTZrlN7R1iourrKK_rtxNlhJv34QuRw';

    var url =
        Uri.parse('https://5742-196-205-94-85.eu.ngrok.io/api/v1/categories');
    var response = await http.get(
      url,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    var responseBody = jsonDecode(response.body)["data"] as List;
    print(responseBody);
    for (var i in responseBody) {
      var x = CatFetch(
          category_name: i["category_name"], image_url: i["image_url"],id:i["id"] );
      cat.add(x);
      print(cat.length);
    }
    return cat;
  }
}
