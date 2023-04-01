import 'dart:convert';
import 'package:asbeza/components/Food.dart';
import 'package:http/http.dart';

class Foodrepositery {
  String endpoint = 'https://fakestoreapi.com/products';
  Future<List<Food>> getFood() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map(((e) => Food.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
