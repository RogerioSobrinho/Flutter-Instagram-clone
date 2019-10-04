import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var text = new RichText(
      text: new TextSpan(
        // Note: Styles for TextSpans must be explicitly defined.
        // Child text spans will inherit styles from parent
        style: new TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          new TextSpan(
              text: 'Curtido por ', style: TextStyle(color: Colors.white)),
          new TextSpan(
              text: 'rogerioa.sobrinho ',
              style: new TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white)),
          new TextSpan(text: 'e ', style: TextStyle(color: Colors.white)),
          new TextSpan(
            text: 'outras pessoas',
            style:
                new TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );

    Widget _buildProgrammCard() {
      return Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Animais_oficial",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  Text(
                    "São Paulo - Brazil",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: Card(
              child: Image.asset(
                'assets/cat.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.heart,
                  color: Colors.white,
                  size: 18,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.message,
                  color: Colors.white,
                  size: 18,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 18,
                ),
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.flag,
                  color: Colors.white,
                  size: 18,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: <Widget>[text],
          ),
        ],
      );
    }

    var _stories = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://www.seekpng.com/png/full/43-432878_select-template-instagram-story-circle-png.png'),
                backgroundColor: Colors.transparent,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "Seu story",
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://www.seekpng.com/png/full/43-432878_select-template-instagram-story-circle-png.png'),
            backgroundColor: Colors.transparent,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://www.seekpng.com/png/full/43-432878_select-template-instagram-story-circle-png.png'),
            backgroundColor: Colors.transparent,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://www.seekpng.com/png/full/43-432878_select-template-instagram-story-circle-png.png'),
            backgroundColor: Colors.transparent,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://www.seekpng.com/png/full/43-432878_select-template-instagram-story-circle-png.png'),
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    );
    var _topBar = AppBar(
      backgroundColor: Color(0xff191919),
      leading: IconButton(
        icon: Icon(
          FontAwesomeIcons.camera,
        ),
        onPressed: () {},
      ),
      title: Text("Instagram"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.live_tv),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.send),
          onPressed: () {},
        )
      ],
    );
    var _bottomBar = BottomNavigationBar(
      backgroundColor: Color(0xff191919),
      type: BottomNavigationBarType.fixed,
      currentIndex: 0, // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(
            icon: new Icon(Icons.home, color: Colors.white),
            title: Container()),
        BottomNavigationBarItem(
            icon: new Icon(Icons.search, color: Colors.white),
            title: Container()),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_box, color: Colors.white), title: Container()),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart, color: Colors.white),
            title: Container()),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white), title: Container()),
      ],
    );
    return Scaffold(
      appBar: _topBar,
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: ListView(
          children: <Widget>[
            _stories,
            _buildProgrammCard(),
            _buildProgrammCard(),
            _buildProgrammCard(),
            _buildProgrammCard(),
            _buildProgrammCard(),
          ],
        ),
      ),
      bottomNavigationBar: _bottomBar,
    );
  }
}
