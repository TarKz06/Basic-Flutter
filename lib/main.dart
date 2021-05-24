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
      theme: ThemeData(primaryColor: Colors.orange[200]),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<FoodMenu> menu = [
    FoodMenu("pizza", "300"),
    FoodMenu("somtam", "90"),
    FoodMenu("kapao", "450"),
    FoodMenu("padtai", "200")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Choose manu"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
                title: Text(
                  food.name,
                  style: TextStyle(fontSize: 39),
                ),
                subtitle: Text("price : " + food.price + " Bath "),
              );
            }));
  }
}
