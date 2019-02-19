import 'package:flutter/material.dart';

class ListWheelPage extends StatefulWidget {
  _ListWheelPageState createState() => _ListWheelPageState();
}

class _ListWheelPageState extends State<ListWheelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: ListWheelScrollView(
        itemExtent: 50,
        perspective: 0.002,
        children: <Widget>[
          itemCard(number:1),
          itemCard(number:2),
          itemCard(number:3),
        ],
      ),
    );
  }

  Widget itemCard({int number}) {
    return Material(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.blueAccent,
      child: Center(
        child: Container(
          height: 150.0,
          width: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.blueAccent
          ),
          child: Text("$number",style: TextStyle(fontSize: 80.0,fontWeight: FontWeight.bold,color: Colors.white),),
        ),
      ),
    );
  }
}
