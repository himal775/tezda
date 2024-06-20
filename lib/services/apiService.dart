import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tezda/model/productModel.dart';

class ApiService {
  final String apiUrl = "https://fakestoreapi.com/products";

  Future<List<Product>> fetchProducts() async {
    final dio = Dio();
    final response = await dio.get(apiUrl);
    print(response.data);
    if (response.statusCode == 200) {
      List jsonResponse = response.data;
      print(jsonResponse);
      return jsonResponse.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
