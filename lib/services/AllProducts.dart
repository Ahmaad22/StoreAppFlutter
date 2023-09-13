import 'package:store_app/models/ProductModel.dart';
import 'package:store_app/services/Api.dart';
class AllProducts{
  Future<List<ProductModel>> getAllProducts() async{
List<dynamic> data = 
await  Api().getResponse(url: 'https://fakestoreapi.com/products');
  List<ProductModel> ListProducts =[];
  
  for(int i=0;i<data.length;i++){

    ListProducts.add(ProductModel.fromJson(data[i]) );
  }
  print(ListProducts);
  return ListProducts;
  }
}