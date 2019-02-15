import 'package:design_ui/pages/pages.dart';
import 'package:flutter/material.dart';

Widget getGrid() {
  return Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            height: 150.0,
            width: 150.0,
            color: Color.fromARGB(255, 36, 36, 55),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.whatshot,
                  color: Colors.white54,
                ),
                Text(
                  'Fire',
                  style: TextStyle(
                      color: Colors.white54, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: 150.0,
            width: 150.0,
            color: Color.fromARGB(255, 36, 36, 55),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: Colors.white54,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.white54, fontWeight: FontWeight.w600),
                )
              ],
            ),
          )
        ],
      ),
      Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            height: 150.0,
            width: 150.0,
            color: Color.fromARGB(255, 36, 36, 55),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.gamepad,
                  color: Colors.white54,
                ),
                Text(
                  'Game',
                  style: TextStyle(
                      color: Colors.white54, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: 150.0,
            width: 150.0,
            color: Color.fromARGB(255, 36, 36, 55),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.book,
                  color: Colors.white54,
                ),
                Text(
                  'Reading',
                  style: TextStyle(
                      color: Colors.white54, fontWeight: FontWeight.w600),
                )
              ],
            ),
          )
        ],
      )
    ],
  );
}

Widget listCard() {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: <Widget>[
      Container(
        padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
        height: 200.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            itemCard(title: 'Living Room', light: 4, icons: 3, desc: 'Dry'),
            itemCard(title: 'Beautiful view', light: 3, icons: 6, desc: 'Cool'),
            itemCard(title: 'Native core', light: 2, icons: 4, desc: 'Hot')
          ],
        ),
      ),
    ],
  );
}

Widget itemCard({String title, int light, int icons, String desc}) {
  return GestureDetector(
    onTap: () {},
    child: Padding(
      padding: EdgeInsets.all(5.0),
      child: Material(
        type: MaterialType.card,
        elevation: 2.0,
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          height: 150.0,
          width: 250.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color.fromARGB(255, 41, 41, 59)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 25.0,
                color: Color.fromARGB(250, 50, 50, 66),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '$light lights',
                    style: TextStyle(color: Colors.white54),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: getCloud(icons),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    desc,
                    style: TextStyle(color: Colors.white54),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}

List<Widget> getCloud(int nb) {
  List<Widget> clouds = [];
  for (var i = 0; i < nb; i++) {
    clouds.add(Icon(
      Icons.wb_cloudy,
      color: Colors.blueAccent,
    ));
  }
  return clouds;
}

Widget inVisioListH(BuildContext context) {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            inVisioItemCard(
                ctx: context,
                url:
                    'https://cdn.pixabay.com/photo/2017/03/27/11/58/robot-2178244_960_720.jpg',
                month: 2,
                tag: "t1",
                date: "Jan 2019"),
            inVisioItemCard(
                ctx: context,
                url:
                    'https://cdn.pixabay.com/photo/2017/03/27/13/04/robot-2178590_960_720.jpg',
                month: 4,
                tag: "t2",
                date: "Avr 2019"),
            inVisioItemCard(
                ctx: context,
                url:
                    'https://cdn.pixabay.com/photo/2017/03/28/12/14/chairs-2181976_960_720.jpg',
                month: 5,
                tag: "t3",
                date: "May 2019"),
          ],
        ),
      )
    ],
  );
}

Widget inVisioItemCard(
    {BuildContext ctx, String url, int month, String tag, String date}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        ctx,
        MaterialPageRoute(
            builder: (context) => InVisioDetails(
                  tag: tag,
                  url: url,
                  month: month,
                  date: date,
                )),
      );
    },
    child: Hero(
        tag: tag,
        //transitionOnUserGestures: true,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(8.0),
              width: 130.0,
              height: 130.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                      image: NetworkImage(url, scale: 0.9), fit: BoxFit.cover)),
              child: Center(
                child: Text(
                  '$month',
                  style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Text('$date')
          ],
        )),
  );
}

Widget todoItemCard(BuildContext context, String title, int tasks,
    double progress, IconData icon, String tag) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TodoDetails(
                  tag: tag,
                  icon: icon,
                  progress: progress,
                  title: title,
                )),
      );
    },
    child: Hero(
      tag: tag,
      child: Container(
          height: 300.0,
          width: 250.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.white),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
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
                  SizedBox(
                    height: 190.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("$tasks tasks"),
                      Text(
                        "$title",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      SizedBox(
                        height: 2.0,
                        child:  LinearProgressIndicator(
                        backgroundColor: Colors.yellow,
                        value: progress,
                        valueColor: new AlwaysStoppedAnimation<Color>(
                            Colors.blueAccent),
                      ),
                      )
                     
                    ],
                  )
                ],
              ),
            ),
          )),
    ),
  );
}
