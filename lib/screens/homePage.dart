import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/ProductModel.dart';
import 'package:store_app/screens/widgets/CustomCard.dart';
import 'package:store_app/services/AllProducts.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.white,
         elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){},icon: Icon(FontAwesomeIcons.cartPlus),color: Colors.black,)
        ],
        title: Text("New Trend",style:
         TextStyle(color: Colors.black),),
      ),
      body:Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top:70 ),
        child: FutureBuilder<List<ProductModel>>(
           future: AllProducts().getAllProducts(),
          builder:(context, snapshot) 

          {
          

            if(snapshot.hasData){
             List<ProductModel> ProductList= snapshot.data!;
       return GridView.builder(
        itemCount: ProductList.length,
          clipBehavior: Clip.none,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 1.5,mainAxisSpacing: 100,crossAxisSpacing: 15, crossAxisCount: 2,)
        , itemBuilder: (context,index){
          return CustomCard(product: ProductList[index],);
        });
    
            }
            else{
              return Center(child: CircularProgressIndicator(),);
            }
          
          }
          )
            ),
   
   
  
  
  
   
    );
  }

}