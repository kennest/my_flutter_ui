import 'package:flutter/material.dart';

class TodoDetails extends StatelessWidget {
  final String tag;
  final IconData icon;
  final double progress;
  final String title;

  const TodoDetails({Key key, this.tag, this.icon, this.progress, this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
          child: Hero(
            tag: tag,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      icon,
                      color: Colors.indigoAccent,
                    ),
                    Icon(Icons.more_vert),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "$title",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    SizedBox(
                      height: 2.0,
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.yellow,
                        value: progress,
                        valueColor: new AlwaysStoppedAnimation<Color>(
                            Colors.blueAccent),
                      ),
                    ),
                    getCheckBox(true, "Create Database"),
                    getCheckBox(false, "Write Api")
                  ],
                )
              ],
            ),
          )),
    ]));
  }

  _checked() {}

  Widget getCheckBox(bool checked, String checkTitle) {
    return Material(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Checkbox(
            activeColor: Colors.indigo,
            value: checked,
            onChanged: _checked(),
          ),
          Text("$checkTitle")
        ],
      ),
      )
      ,
    );
  }
}
