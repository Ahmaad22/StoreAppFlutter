import 'package:store_app/models/ProductModel.dart';
import 'package:store_app/services/Api.dart';

class AddProduct{
  Future<ProductModel> addProduct(
    {
      required String title,
      required String price,
      required String image,
      required String description,
      required String category,
    }
  )async{
  

Map<String,dynamic>data =await Api().post(
  url: 'https://fakestoreapi.com/products',
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