
import 'package:store_app/services/Api.dart';

import '../models/ProductModel.dart';

class updateProductServices{
  Future<ProductModel> updateProductS(
    {
      required dynamic id,
      required String title,
      required String price,
      required String image,
      required String description,
      required String category,
    }
  )async{
  

Map<String,dynamic>data =await Api().put(
  url: 'https://fakestoreapi.com/products/$id',
   body: {
'title':title,
'price':price,
'description':description,
'image': image,
'category':category
},
    );
return ProductModel.fromJson(data);
  }
}