import 'dart:convert';

import 'package:http/http.dart';
import 'package:store_app/services/Api.dart';
class AllCategories{

Future<List<dynamic>> getAllCategories()async{
  Response response = await Api().getResponse( url:'https://fakestoreapi.com/products/categories');
  List<dynamic> data = jsonDecode(response.body);
  
  return data;
}




}