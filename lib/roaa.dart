import 'package:calculator/helper/btn.dart';
import 'package:flutter/material.dart';

class Roaa extends StatefulWidget {
  const Roaa({Key? key}) : super(key: key);

  @override
  _RoaaState createState() => _RoaaState();
}

class _RoaaState extends State<Roaa> {
  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: btn(text: '5', function: () {}),
      ),
    );
  }
}
