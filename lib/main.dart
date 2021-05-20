import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: MyHomePage(),
      theme: ThemeData(primaryColor: Colors.orange[200]),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0; //crate state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Count number"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.toString(),
              style: TextStyle(fontSize: 60),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addnumBer,
        child: Icon(Icons.add),
      ),
    );
  }

  void addnumBer() {
    setState(() {
      number++;
    });
  }
}
