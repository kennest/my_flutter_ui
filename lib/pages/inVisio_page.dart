import 'package:flutter/material.dart';
import 'package:design_ui/pages/pages.dart';

class InVisioPage extends StatefulWidget {
  final PageController pageController;

  const InVisioPage({Key key, this.pageController}) : super(key: key);

  @override
  _InVisioPageState createState() => _InVisioPageState();
}

class _InVisioPageState extends State<InVisioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 60.0, 10.0, 0.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Latest Issues",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.white24,
                      elevation: 0.0,
                      child: Text(
                        "View all",
                        style: TextStyle(fontSize: 15.0, color: Colors.blue),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 270.0,
            padding: EdgeInsets.all(8.0),
            child: inVisioListH(context),
          ),
          Container(
            color: Colors.white24,
            height: MediaQuery.of(context).size.height - 250.0,
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Bookmarks",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  contentPadding: EdgeInsets.fromLTRB(35.0, 0.0, 15.0, 0.0),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Preferences",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  contentPadding: EdgeInsets.fromLTRB(35.0, 0.0, 15.0, 0.0),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Help",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  contentPadding: EdgeInsets.fromLTRB(35.0, 0.0, 15.0, 0.0),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "About Us",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  contentPadding: EdgeInsets.fromLTRB(35.0, 0.0, 15.0, 0.0),
                  onTap: () {},
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_upward),
          onPressed: () {
            widget.pageController
              ..animateToPage(
                0,
                duration: Duration(seconds: 1),
                curve: Curves.ease,
              );
          }),
    );
  }
}
