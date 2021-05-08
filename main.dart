import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etFirstNum = new TextEditingController();
  TextEditingController etSecondNum = new TextEditingController();

  int nFirstNum = 0;
  int nSecondNum = 0;
  int answer = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.blueGrey, title: Text("Calculator")),
            body: Form(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                ),
                TextFormField(
                    controller: etFirstNum,
                    keyboardType: TextInputType.number,
                    decoration:
                        InputDecoration(hintText: "Enter first number")),
                TextFormField(
                    controller: etSecondNum,
                    keyboardType: TextInputType.number,
                    decoration:
                        InputDecoration(hintText: "Enter second number")),
                Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                            onPressed: () {
                              setState(() {
                                nFirstNum = int.parse(etFirstNum.text);
                                nSecondNum = int.parse(etSecondNum.text);
                                answer = nFirstNum + nSecondNum;
                              });
                            },
                            color: Colors.blueGrey,
                            textColor: Colors.white,
                            child: Text("+")),
                        MaterialButton(
                            onPressed: () {
                              setState(() {
                                nFirstNum = int.parse(etFirstNum.text);
                                nSecondNum = int.parse(etSecondNum.text);
                                answer = nFirstNum - nSecondNum;
                              });
                            },
                            color: Colors.blueGrey,
                            textColor: Colors.white,
                            child: Text("-")),
                        MaterialButton(
                            onPressed: () {
                              setState(() {
                                nFirstNum = int.parse(etFirstNum.text);
                                nSecondNum = int.parse(etSecondNum.text);
                                answer = nFirstNum * nSecondNum;
                              });
                            },
                            color: Colors.blueGrey,
                            textColor: Colors.white,
                            child: Text("x")),
                        MaterialButton(
                            onPressed: () {
                              setState(() {
                                nFirstNum = int.parse(etFirstNum.text);
                                nSecondNum = int.parse(etSecondNum.text);
                                double temp = nFirstNum / nSecondNum;
                                answer = temp.toInt();
                              });
                            },
                            color: Colors.blueGrey,
                            textColor: Colors.white,
                            child: Text("/"))
                      ],
                    )),
                Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(" = $answer",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold)),
                      ],
                    )),
              ],
            ))));
  }
}
