import 'package:flutter/material.dart';
import 'package:store_app/screens/homePage.dart';

void main() {
  runApp(const store_app());
}

class store_app extends StatelessWidget {
  const store_app({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }

}
