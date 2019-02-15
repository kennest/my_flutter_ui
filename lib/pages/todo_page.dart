import 'package:design_ui/pages/ui/UI.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  TodoPage();

  factory TodoPage.forDesignTime() {
    return new TodoPage();
  }

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            tileMode: TileMode.mirror,
            colors: [Colors.white70, Colors.indigoAccent, Colors.indigo],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter),
      ),
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  iconSize: 25.0,
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
              Text(
                "TODO",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                iconSize: 25.0,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(50.0, 40.0, 50.0, 0.0),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://i.pinimg.com/originals/2d/0f/50/2d0f50e8e4f6b233c7cf70b4bd36f89c.png",
                  )
                      )
                    ),
                  
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ListTile(
                  title: Text(
                    "Hello, Jane.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 15.0,
                      ),
                      Text("Look like you feel good.",
                          style: TextStyle(color: Colors.white)),
                      Text("You Have 3 tasks to do today",
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
            height: 350.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                todoItemCard(context, "Work", 15, 0.5, Icons.work, "work"),
                todoItemCard(context, "Personal", 5, 0.9, Icons.account_box,
                    "personal"),
                     todoItemCard(context, "Home", 10, 0.6, Icons.home,
                    "home"),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
