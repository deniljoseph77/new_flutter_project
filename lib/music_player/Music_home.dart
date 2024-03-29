import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_flutter_project/music_player/Music_Login.dart';
import 'package:new_flutter_project/music_player/music_search.dart';

import 'music_Playlist.dart';
import 'music_settings.dart';

class Music_home extends StatefulWidget {
  @override
  State<Music_home> createState() => _Music_homeState();
}

class _Music_homeState extends State<Music_home> {
  var index = 0;
  var pages = [Music_search(), MusicLibraryScreen()];

  var genre = [
    "Music",
    "Podcast",
    "Live Event",
    "",
  ];

  var image = [
    "assets/musicimage/abstractpiano.jpg",
    "assets/musicimage/airpods.jpg",
    "assets/musicimage/blueguitar.jpg",
  ];

  var albumImage = [
    "assets/musicalbum/BebeRexhaSacrifice.png",
    "assets/musicalbum/ExtremeWays.jpg",
    "assets/musicalbum/GetLucky.jpg",
    "assets/musicalbum/HiiiPoWeR.jpg",
    "assets/musicalbum/MartinGarrixPressure.jpg",
    "assets/musicalbum/TheWeekndStarboy.png",
    "assets/musicalbum/TravisScottUtopia.png",
    "assets/musicalbum/UltraviolenceLDR.png",
  ];

  var songName = [
    "Sacrifice",
    "Extreme Ways",
    "Get Lucky",
    "HiipoWer",
    "Pressure",
    "Starboy",
    "CircusMaximus",
    "UltravioLence"
  ];

  var artist = [
    "Bebe Rexha",
    "Moby",
    "Daft Punk, Pharrell Williams, Nile Rodgers",
    "Kendrik Lamar",
    "Martin Garrix",
    "The Weekend",
    "Travis Scott",
    "Lana Del Rey"
  ];

  var bottomNavBarIcon = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.magnifyingGlass,
    FontAwesomeIcons.plus,
    // FontAwesomeIcons.ellipsis,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blueAccent),
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.more_vert,
        //         color: Colors.blueAccent,
        //       ))
        // ],
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(
        //     FontAwesomeIcons.music,
        //     size: 30,
        //   ),
        //   color: Colors.blueGrey,
        // ),
        backgroundColor: Colors.black,
        title: Text(
          "JukeBox",
          style: GoogleFonts.bebasNeue(
              color: Colors.grey,
              fontSize: 40,
              letterSpacing: 3,
              fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/mush.jpg"),
                ),
                accountName: Text("Zion"),
                accountEmail: Text("Zion@gmail.com")),
            ListTile(
              leading: Icon(Icons.person,color: Colors.grey,),
              title: Text("Profile",style: TextStyle( color: Colors.grey),),
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.grey),
              title: Text("Settings",style: TextStyle(color: Colors.grey   ),),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, top: 20),
            child: Text(
              "Suggested Playlist",
              style: GoogleFonts.bebasNeue(
                  color: Colors.blueAccent,
                  fontSize: 30,
                  letterSpacing: 3,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 210,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(image.length, (index) {
                return InkWell(
                  onTap: () {},
                  splashColor: Colors.blueGrey,
                  child: Stack(
                    children: [
                      Card(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(image[index]),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 181),
                        child: Text(
                          genre[index],
                          style: GoogleFonts.bebasNeue(
                              color: Colors.black26,
                              fontSize: 20,
                              letterSpacing: 3,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 30),
            child: Text(
              "Recommended for You",
              style: GoogleFonts.bebasNeue(
                  fontSize: 25,
                  letterSpacing: 3,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: albumImage.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {},
                  leading: Image.asset(albumImage[index]),
                  title: Text(songName[index],
                      style: GoogleFonts.bebasNeue(
                        color: Colors.blueAccent,
                        fontSize: 20,
                        letterSpacing: 2,
                      )),
                  subtitle: Text(
                    artist[index],
                    maxLines: 1,
                    style: GoogleFonts.bebasNeue(
                      color: Colors.blueGrey,
                      fontSize: 12,
                      letterSpacing: 2,
                    ),
                  ),
                  trailing: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          highlightColor: Colors.purple,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.star_border,
                            color: Colors.blueAccent,
                          )),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
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
            } else if (index == 3) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Music_settings()));
            }
          });
        },
      ),
    );
  }
}
