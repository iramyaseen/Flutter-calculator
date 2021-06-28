import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController number1 = TextEditingController(text: "");
  TextEditingController number2 = TextEditingController(text: "");
  var num1 = 0.0, num2 = 0.0;
  double res = 0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator App"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Text(
                      "Answer = $res",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter first number",
                        border: OutlineInputBorder(),
                      ),
                      controller: number1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter second number",
                        border: OutlineInputBorder(),
                      ),
                      controller: number2,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                num1 = double.parse(number1.text);
                                num2 = double.parse(number2.text);
                                res = num1 + num2;
                              });
                            },
                            child: Text("+")),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                num1 = double.parse(number1.text);
                                num2 = double.parse(number2.text);
                                res = num1 - num2;
                              });
                            },
                            child: Text("-")),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                num1 = double.parse(number1.text);
                                num2 = double.parse(number2.text);
                                res = num1 * num2;
                              });
                            },
                            child: Text("*")),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                num1 = double.parse(number1.text);
                                num2 = double.parse(number2.text);
                                res = num1 / num2;
                              });
                            },
                            child: Text("/")),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  number1.text = "";
                                  number2.text = "";
                                  res = 0.0;
                                });
                              },
                              child: Text("Clear")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
