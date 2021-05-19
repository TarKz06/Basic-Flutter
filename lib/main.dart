import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello flutter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello tar"),
              Text("Hello Ice"),
              Text("Hello Tle")
            ],
          ),
        ),
      ),
      theme: ThemeData(primaryColor: Colors.orange[200]),
    );
  }
}
