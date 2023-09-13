import 'package:flutter/material.dart';


class ButtonComp extends StatelessWidget {
   ButtonComp({this.onTap,required this.buttonText});
String buttonText;
VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: const EdgeInsets.symmetric(horizontal: 8),
  child:   GestureDetector(
    onTap: onTap,
    child: Container(
      width: double.infinity,
      height: 40,
    decoration: BoxDecoration(
      color: Colors.black,borderRadius: BorderRadius.circular(8),
    ),
      child: Center(child: Text(buttonText,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white,),))),
  ),
);
  }
}