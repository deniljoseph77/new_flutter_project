import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Music_home.dart';
import 'music_Playlist.dart';
import 'music_search.dart';

class Music_settings extends StatefulWidget {
  @override
  State<Music_settings> createState() => _Music_settingsState();
}

class _Music_settingsState extends State<Music_settings> {
  int index = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Account",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Languages",
                  style: TextStyle(color: Colors.blueAccent),
                )),
            SizedBox(height: 8.0),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "About",
                  style: TextStyle(color: Colors.blueAccent),
                )),
            SizedBox(height: 8.0),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        elevation: 0,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                FontAwesomeIcons.house,
                color: Colors.blueAccent,
              ),
              label: ""),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.blueAccent,
              ),
              label: ""),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                FontAwesomeIcons.plus,
                color: Colors.blueAccent,
              ),
              label: ""),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                FontAwesomeIcons.ellipsis,
                color: Colors.blueAccent,
              ),
              label: ""),
        ],
        onTap: (tapIndex) {
          setState(() {
            index = tapIndex;
            if (index == 0) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Music_home()));
            } else if (index == 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Music_search()));
            } else if (index == 2) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MusicLibraryScreen()));
            // } else if (index == 3) {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => Music_settings()));
            }
          });
        },
      ),
    );
  }
}
