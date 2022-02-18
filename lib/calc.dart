import 'dart:io';

import 'package:calculator/helper/button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  String eq = "0";
  String result = "0";
  String exception = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        title: const Text(
          "Calculator",
          style: TextStyle(
            color: Colors.green,
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Container(
          color: Colors.black54,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 120,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        eq,
                        style: const TextStyle(
                            color: Colors.green,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 80,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        result,
                        style: const TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // ignore: deprecated_member_use
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: const EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              eq = "0";
                              result = "0";
                            });
                          },
                          child: const Text(
                            "C",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: const EdgeInsets.all(10),
                          onPressed: () {
                            exit(0);
                          },
                          child: const Text(
                            "off",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              eq = eq.substring(0, eq.length - 1);
                            });
                          },
                          child: const Text(
                            "⌫",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              exception = eq;
                              exception = exception.replaceAll("÷", '/');
                              exception = exception.replaceAll("×", '*');
                              Parser p = Parser();
                              Expression exp = p.parse(exception);
                              ContextModel cm = ContextModel();
                              result =
                                  '${exp.evaluate(EvaluationType.REAL, cm)}';
                            });
                          },
                          child: const Text(
                            "=",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // ignore: deprecated_member_use
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              eq += "7";
                            });
                          },
                          child: Text(
                            "7",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              eq += "8";
                            });
                          },
                          child: Text(
                            "8",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              eq += "9";
                            });
                          },
                          child: Text(
                            "9",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              eq += "+";
                            });
                          },
                          child: Text(
                            "+",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              eq += "4";
                            });
                          },
                          child: Text(
                            "4",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              eq += "5";
                            });
                          },
                          child: Text(
                            "5",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              eq += "6";
                            });
                          },
                          child: Text(
                            "6",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              eq += "-";
                            });
                          },
                          child: Text(
                            "-",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              eq += "1";
                            });
                          },
                          child: Text(
                            "1",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              eq += "2";
                            });
                          },
                          child: Text(
                            "2",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              eq += "3";
                            });
                          },
                          child: Text(
                            "3",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              eq += "×";
                            });
                          },
                          child: Text(
                            "×",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              eq += "0";
                            });
                          },
                          child: const Text(
                            "0",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: const EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              if (eq.indexOf("0") == "0") {
                                eq = eq.replaceFirst("0", '-');
                              }
                            });
                          },
                          child: const Text(
                            "+/-",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: const EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              // ignore: unrelated_type_equality_checks
                              if (eq.endsWith(".")) {
                                eq += "";
                              } else {
                                eq += ".";
                              }
                            });
                          },
                          child: const Text(
                            ".",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            setState(() {
                              eq += "÷";
                            });
                          },
                          child: Text(
                            "÷",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
