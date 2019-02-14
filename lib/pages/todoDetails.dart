import 'package:flutter/material.dart';

class TodoDetails extends StatelessWidget {
  final String tag;

  const TodoDetails({Key key, this.tag}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Container(
          width: MediaQuery.of(context).size.width,
          height: 450.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
          child: Hero(
            tag: tag,
            child: Column(
              children: <Widget>[],
            ),
          )),
    ]));
  }
}
