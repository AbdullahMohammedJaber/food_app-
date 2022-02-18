import 'package:flutter/material.dart';
import 'package:mealapp/screen/detailOrder.dart';
import 'package:mealapp/screen/home.dart';
import 'package:mealapp/screen/showcategory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const Home(),
      routes: {
        'Show': (context) => Show(),
        'Home': (context) => Home(),
        'OrderDetail': (context) => OrderDetail(),
      },
    );
  }
}
