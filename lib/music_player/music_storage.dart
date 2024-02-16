

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class Songlist extends StatefulWidget {
  @override
  _SonglistState createState() => _SonglistState();
}

class _SonglistState extends State<Songlist> {
  List<FileSystemEntity> files = [];

  @override
  void initState() {
    super.initState();
    initList();
  }

  void initList() async {
    if (await Permission.storage.request().isGranted) {
      Directory? dir = await getExternalStorageDirectory();
      files = dir!.listSync(recursive: true, followLinks: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Media"),
        backgroundColor: Colors.blue, // Set your desired color
      ),
      body: ListView.builder(
        itemCount: files.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(files[index].path),
            // Customize the list item as needed
          );
        },
      ),
    );
  }
}



