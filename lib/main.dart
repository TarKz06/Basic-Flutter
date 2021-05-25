import 'package:flutter/material.dart';
import 'FoodMenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: MyHomePage(),
      theme: ThemeData(primaryColor: Colors.blueAccent),
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
          title: Text("My Account"),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(10)),
              height: 100,
            ),
              Container(
              decoration: BoxDecoration(color: Colors.blue),
              height: 100,
            ),
              Container(
              decoration: BoxDecoration(color: Colors.orange),
              height: 100,
            )
          ],
        ));
  }
}
