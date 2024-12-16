import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rest_api/consts/api_consts.dart';
import 'package:rest_api/models/products_model.dart';

class APIHandler {
  static Future<List<ProductsModel>> getAllProduct() async {
    var uri = Uri.https(BASE_URL, 'api/v1/products');
    var response = await http.get(uri);
    // print('response ${jsonDecode(response.body)}');
    var data = jsonDecode(response.body);
    List templist = [];
    for (var v in data) {
      templist.add(v);
      print('V $v \n\n');
    }
    return ProductsModel.productsFromSnapshot(templist);
  }
}

// ignore_for_file: avoid_print

// import 'dart:convert'; // Import dart:convert for jsonDecode

// import 'package:http/http.dart' as http;

// import 'package:rest_api/consts/api_consts.dart';

// class APIHandler {
//   static Future<void> getAllProduct() async {
//     try {
//       var uri = Uri.https(BASE_URL, 'api/v1/products');
//       var response = await http.get(uri);

//       if (response.statusCode == 200) {
//         // var jsonResponse = jsonDecode(response.body);
//         // print('Response: $jsonResponse');
//       } else {
//         print('Request failed with status: ${response.statusCode}');
//         var data = jsonDecode(response.body);

//         for (var v in data) {
//           print('v $v \n\n');
//         }
//       }
//     } catch (e) {
//       print('Error: $e');
//       // Handle exception here
//     }
//   }
// }
