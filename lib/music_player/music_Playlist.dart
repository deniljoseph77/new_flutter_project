import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Music_home.dart';
import 'music_search.dart';
import 'music_settings.dart';

class MusicLibraryScreen extends StatefulWidget {
  @override
  State<MusicLibraryScreen> createState() => _MusicLibraryScreenState();
}

class _MusicLibraryScreenState extends State<MusicLibraryScreen> {
  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library',style: GoogleFonts.bebasNeue(color: Colors.blueAccent),),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
            },
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.blueAccent,
              ))
        ],
        backgroundColor:Colors.black ,
      ),backgroundColor: Colors.black,
      body: ListView(
        children: [
          // Library menu
          ListTile(
            leading: Icon(Icons.playlist_play),
            title: Text('Playlists',style: GoogleFonts.bebasNeue(color: Colors.blueAccent,fontSize: 20),),
            trailing: Icon(Icons.chevron_right),
            onTap: () {

            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Artists',style: GoogleFonts.bebasNeue(color: Colors.blueAccent,fontSize: 20)),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.album),
            title: Text('Albums',style: GoogleFonts.bebasNeue(color: Colors.blueAccent,fontSize: 20),),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text('Songs',style: GoogleFonts.bebasNeue(color: Colors.blueAccent,fontSize: 20),),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('Genres',style: GoogleFonts.bebasNeue(color: Colors.blueAccent,fontSize: 20),),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Composers',style: GoogleFonts.bebasNeue(color: Colors.blueAccent,fontSize: 20),),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.download),
            title: Text('Downloaded',style: GoogleFonts.bebasNeue(color: Colors.blueAccent,fontSize: 20),),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
            },
          ),
          // Recently added section
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Recently Added',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
          Container(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                RecentlyAddedItem(
                  image: 'assets/musiclibraryimage/amigo.jpg',
                  title: 'Hey Amigo',
                ),
                RecentlyAddedItem(
                  image: 'assets/musiclibraryimage/ilahi.jpeg',
                  title: 'Ilahi',
                ),
                RecentlyAddedItem(
                  image:'assets/musiclibraryimage/smooth crimnal.jpg',
                  title: 'Smooth Criminal',

                ),
                //Image.asset(
                    //'assets/musiclibraryimage/smooth crimnal.jpg',
                      //  width: 100,
                  //height:100,
                  // color:Colors.blue,
                  // fit:BoxFit.cover,
                    // shape:BoxShape,
                //),Text("Smooth Criminal",)
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.skip_previous,size: 30,),
                onPressed: () {
                },
              ),
              IconButton(
                icon: Icon(Icons.play_arrow,size: 30,),
                onPressed: () {
                },
              ),
              IconButton(
                icon: Icon(Icons.skip_next,size: 30,),
                onPressed: () {
                },
              ),

            ],
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
        // BottomNavigationBarItem(
        //     backgroundColor: Colors.black,
        //     icon: Icon(
        //       FontAwesomeIcons.ellipsis,
        //       color: Colors.blueAccent,
        //     ),
        //     label: ""),
        ],
        onTap: (tapIndex) {setState(() {
          index = tapIndex;
          if (index == 0) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Music_home()));
          } else if (index == 1) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Music_search()));
          }else if (index == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MusicLibraryScreen()));
          // }else if (index == 3) {
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => Music_settings()));
          }
        });
        },
      ),
    );
  }
}

class RecentlyAddedItem extends StatefulWidget {
  final String image;
  final String title;

  var Sizedbox;


   RecentlyAddedItem({
    Key? key,
    required this.image,
    required this.title,

  }) : super(key: key);

  @override
  State<RecentlyAddedItem> createState() => _RecentlyAddedItemState();
}

class _RecentlyAddedItemState extends State<RecentlyAddedItem> {
  int index =3;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              widget.image,
              fit: BoxFit.cover,
              height: 120.0,
              width: 130.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,


            ),
          ),
        ],
      ),
    );
  }
}