import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Music_Playlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Library",
            style:GoogleFonts.bebasNeue(color: Colors.grey,
                fontSize: 40,
                letterSpacing: 3,
                fontWeight: FontWeight.bold)
        ),
      ),
      body:Center(),
    );
  }
}
