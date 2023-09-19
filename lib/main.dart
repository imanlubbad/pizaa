import 'package:flutter/material.dart';
import 'package:ui1/pizza.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: PizzaOrderScreen()
    );
  }
}
