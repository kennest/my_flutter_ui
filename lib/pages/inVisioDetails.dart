import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class InVisioDetails extends StatelessWidget {
  final String tag;
  final String url;
  final int month;
  final String date;

  const InVisioDetails({Key key, this.tag, this.url, this.month, this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              height: 250.0,
              child: Hero(
                  tag: tag,
                  //transitionOnUserGestures: true,
                  child: Container(
                      width: 250.0,
                      height: 250.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(url, scale: 0.9),
                              fit: BoxFit.cover)),
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: FlatButton(
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '$month',
                                style: TextStyle(
                                    fontSize: 60.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                '$date',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      )))),
          Container(
              padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0.0),
              height: 80.0,
              child: ListTile(
                leading: Image.network(
                    'https://cdn.pixabay.com/photo/2017/03/27/15/09/waterfall-2179296_960_720.jpg'),
                title: Text("Title there!!"),
                subtitle: Text("Subtitle there!!"),
              )),
          CarouselSlider(
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 35.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.blue),
                        child: Center(
                          child: Text(
                            '$i',
                            style:
                                TextStyle(fontSize: 50.0, color: Colors.white),
                          ),
                        ));
                  },
                );
              }).toList(),
              height: 400.0,
              autoPlay: true)
        ],
      ),
    );
  }
}
