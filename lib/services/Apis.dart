import 'dart:convert';

import 'package:hackathonapp/model/CatFetch.dart';
import 'package:http/http.dart' as http;
class Apis{
  static getAllCat()async {
    var token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjUzMzE2OTAzLCJleHAiOjE2NTMzMjA1MDN9.4dpwcEvsojZJxu_HDdoUCHgUJDhZj-VPbOD6eiCShN4';
    List<CatFetch> cat=[];
    var url = Uri.parse('https://5742-196-205-94-85.eu.ngrok.io/api/v1/categories');
    print("url");
    print(url);
    try{
      var response = await http.get(url,
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      print("response");
      print(response.statusCode);
      var responseBody=jsonDecode(response.body)["data"];
      print("responseBody");
      print(responseBody);

      // for(var i in responseBody){
      //   var x = CatFetch(category_name: i["category_name"],image_url: i["image_url"]);
      //   print(x);
      //   cat.add(x);
      //
      // }
      return cat;
    }catch(e){
      print('hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh${e.toString()}');
    }




    //  var responseBody=jsonDecode(response.body)["data"];
    // print("responseBody");
    // print(responseBody);
    //
    // for(var i in responseBody){
    //    var x = CatFetch(category_name: i["category_name"],image_url: i["image_url"]);
    //    print(x);
    //    cat.add(x);
    //
    //  }
    //  return cat;

  }

}