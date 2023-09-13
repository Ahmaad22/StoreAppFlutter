

class ProductModel{

final dynamic id;
final String title;
final dynamic price;
final String description;
final String image;
final String category;


  ProductModel( {
    required this.id,
    required this.category,

   required this.title,
    required this.price,
     required this.description,
      required this.image});


factory ProductModel.fromJson(JsonData){
return ProductModel(id: JsonData['id'],
 title: JsonData['title'],
  price: JsonData['price'],
   description: JsonData['description'],
   category: JsonData['category'],
    image: JsonData['image']);
}


}
