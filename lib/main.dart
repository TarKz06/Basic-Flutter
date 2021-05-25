import 'package:flutter/material.dart';
import 'MoneyBox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: MyHomePage(),
      theme: ThemeData(primaryColor: Colors.purple[400]),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Account",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MoneyBox("Balance", 200000000000, Colors.blue, 120),
              SizedBox(
                height: 5,
              ),
              MoneyBox("Income", 400000000000, Colors.green, 100),
              SizedBox(
                height: 5,
              ),
              MoneyBox("Expend", 50000000, Colors.red, 100),
              SizedBox(
                height: 5,
              ),
              MoneyBox("Debt", 9000000000, Colors.orange, 100),
            ],
          ),
        ));
  }
}
