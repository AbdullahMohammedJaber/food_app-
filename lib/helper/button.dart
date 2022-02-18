import 'package:flutter/material.dart';

class buildButton extends StatelessWidget {
  final String text;
  final VoidCallback function;

  const buildButton({Key? key, required this.text, required this.function})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(50),
        ),
        child: MaterialButton(
          onPressed: function,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              color: Colors.greenAccent[700],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
