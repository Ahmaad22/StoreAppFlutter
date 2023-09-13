import 'package:flutter/material.dart';
import 'package:store_app/models/ProductModel.dart';
import 'package:store_app/screens/UpdateProduct.dart'; // Import correct path for ProductModel

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.product,
    Key? key,
  }) : super(key: key);

  final ProductModel product; 

  @override
  Widget build(BuildContext context) {
    
   return GestureDetector(
  onTap: () {
    Navigator.push(
      
      context,
      MaterialPageRoute(builder: (context) {
        return UpdateProduct(product: product);
      }),
    );
  },

      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(10, 10),
                  blurRadius: 10,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(0.2),
                )
              ],
            ),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${product.title}".substring(0,6),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$${product.price}',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -50,
            left: 50,
            child: Image.network(
              product.image,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}
