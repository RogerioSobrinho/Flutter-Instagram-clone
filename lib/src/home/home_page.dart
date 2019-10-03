import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.camera,
            color: Colors.black54,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.black54),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.live_tv,
              color: Colors.black54,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.send,
              color: Colors.black54,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          ListView(
            children: <Widget>[],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: Container()),
          BottomNavigationBarItem(
              icon: new Icon(Icons.search), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart), title: Container()),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Container()),
        ],
      ),
    );
  }
}
