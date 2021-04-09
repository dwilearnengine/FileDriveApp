import 'package:flutter/material.dart';

import 'File.dart';

class FileList extends StatefulWidget {
  @override
  _FileListState createState() => _FileListState();
}

class _FileListState extends State<FileList> {
  var _showedFile = <File>[for (int i = 0; i < 50; ++i) File()];

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 100,
      padding: EdgeInsets.all(10),
      children: _showedFile,
    );
  }

  void AddFile(File file){
    setState(() {
      _showedFile.add(file);
    });
  }

}