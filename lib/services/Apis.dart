import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart'as http;

import '../model/CatFetch.dart';

// final apigetCateg = ChangeNotifierProvider<getCategory>((ref)=> getCategory());
// class getCategory extends ChangeNotifier{
//   List<Category>listDataModel = [];
//
//   GetProducts(){
//     getdatacategors();
//   }
//   Future getdatacategors () async{
//     listDataModel=[] ;
//     listDataModel.clear();
//     try {
//       var url = Uri.parse("https://5742-196-205-94-85.eu.ngrok.io/api/v1/categories");
//       var response = await http.get(url);
//       var responsebody = jsonDecode(response.body)["data"];
//       print(responsebody);
//       for (int i= 0 ; i <responsebody.length; i++){
//         listDataModel.add(Category.fromMap(responsebody[i]));
//       }
//
//     }catch(e){
//       print("error = > $e");
//     }
//     notifyListeners();
//   }
//
// }

final apigetCateg = ChangeNotifierProvider<getCategory>((ref) => getCategory());

class getCategory extends ChangeNotifier {
  List<Category> listDataModel = [];

  String token =
      "eyJjZG5CYXNlIjoiaHR0cHM6Ly9jZG4ubmdyb2suY29tLyIsImNvZGUiOiIzMjAwIiwibWVzc2FnZSI6IlR1bm5lbCA1NzQyLTE5Ni0yMDUtOTQtODUuZXUubmdyb2suaW8gbm90IGZvdW5kIiwidGl0bGUiOiJOb3QgRm91bmQifQ";

  GetProducts() {
    getdatacategors();
  }

  Future getdatacategors() async {
    print('before');
    listDataModel = [];
    listDataModel.clear();
    try {
      var url =
      Uri.parse("https://d67c-196-205-94-85.eu.ngrok.io/api/v1/categories");
      var response = await http.get(url, headers: {
        'Authorization': 'Bearer $token',
      });
      var responsebody = jsonDecode(response.body)["data"];
      print('here');
      print(response.body.toString());
      print(responsebody);
      for (int i = 0; i < responsebody.length; i++) {
        listDataModel.add(Category.fromMap(responsebody[i]));
      }
      notifyListeners();
    } catch (e) {
      print("error = > $e");
      notifyListeners();
    }
    notifyListeners();
  }
}