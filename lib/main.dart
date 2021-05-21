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
        child: ListView(
          children: getData(12),
        ),
      ),
    );
  }

  void addnumBer() {
    setState(() {
      number++;
    });
  }
}

List<Widget> getData(int count) {
  List<Widget> data = [];
  for (var i = 0; i < count; i++) {
    var menu = ListTile(title: Text("mamu ${i+1}"),subtitle: Text("subyiyle"),);
    data.add(menu);
  }
  return data;
}
