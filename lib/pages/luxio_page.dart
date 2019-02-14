import 'package:design_ui/pages/ui/UI.dart';
import 'package:flutter/material.dart';

class LuxioPage extends StatefulWidget {
  LuxioPage();

  factory LuxioPage.forDesignTime() {
    return new LuxioPage();
  }

  _LuxioPageState createState() => _LuxioPageState();
}

class _LuxioPageState extends State<LuxioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 28, 28, 48),
        title: Text(
          'LUXIO',
          style: TextStyle(
              fontSize: 45.0, color: Color.fromARGB(255, 172, 144, 128)),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 28, 28, 48),
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 200.0,
              child: listCard(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'What is Next?',
                style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: getGrid(),
            )
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromARGB(255, 39, 39, 56),
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: new TextStyle(color: Colors.white30)),
        ),
        child: BottomNavigationBar(
            fixedColor: Color.fromARGB(255, 28, 28, 48),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Color.fromARGB(255, 28, 28, 48)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_pizza),
                  title: Text('Customize'),
                  backgroundColor: Color.fromARGB(255, 28, 28, 48)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_time), title: Text('Automate')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.timeline), title: Text('Account'))
            ]),
      ),
    );
  }
}
