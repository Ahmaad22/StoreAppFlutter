import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/ProductModel.dart';
import 'package:store_app/screens/widgets/ButtonComp.dart';
import 'package:store_app/screens/widgets/TextFieldComp.dart';
import 'package:store_app/services/updateProduct.dart';
class UpdateProduct extends StatefulWidget {
   UpdateProduct({required this.product,super.key});
final ProductModel product;

  @override
  State<UpdateProduct> createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {
String? name,image,description,category;
  late ProductModel updatedProduct;
void initState() {
    super.initState();
    updatedProduct = widget.product; // Store the received product in the state
  }

bool isLoading=false;

  String? price;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,

      child: Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.white,
           elevation: 0,
          centerTitle: true,
          
          title: Text("Update Product",style:
           TextStyle(color: Colors.black),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              TextFieldComp(hint: "Product name",
              onChanged: (data){
                name=data;
              },
              ),
        SizedBox(height: 15,
        ),
              TextFieldComp(textInputType: TextInputType.number,hint: "Price"  
              ,  onChanged: (data){
                price= data;
              },),
        SizedBox(height: 15,),
              TextFieldComp(hint: "Description",   
               onChanged: (data){
                description=data;
              },),
        SizedBox(height: 15,),
              TextFieldComp(hint: "Image",   
               onChanged: (data){
                image=data;
              },),
      
        SizedBox(height: 25,),
        
              ButtonComp(
                onTap: ()async{
                  isLoading=true;
                  setState(() {
                    
                  });
                  
                  try {
  await updateProductServices().updateProductS(
    id: updatedProduct.id,
    title: name==null?updatedProduct.title:name!,
   price: price== null? updatedProduct.price.toString()! :price!,
    image: image==null?updatedProduct.image:image!,
     description: description==null?updatedProduct.description:description!,
      category: updatedProduct.category);

} 

on Exception catch (e) {
print(e);
}
isLoading=false;
setState(() {
  
});
                },
                buttonText: 'Submit',)
            ],
          ),
        ),
      ),
    );
  }
}