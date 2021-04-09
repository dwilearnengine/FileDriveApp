import 'package:flutter/material.dart';
//just testing LOL
class File extends StatefulWidget {
  String namaFile;

  File(this.namaFile);

  @override
  _FileState createState() => _FileState();
}

class _FileState extends State<File> {
  bool showOption = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Center(
            child: Column(
              children: [
                Icon(
                  Icons.folder,
                  size: 70,
                ),
                Text(widget.namaFile)
              ],
            ),
          ),
          GestureDetector(
            onDoubleTap: () {
              setState(() {
                showOption = !showOption;
              });
            },
          ),
          showOption
              ? Positioned(
            right: 0,
            top: 0,
            child: GestureDetector(
              child: Container(
                color: Colors.blue,
                child: Text('Download'),
              ),
              onTap: ()=> print('Downloading File...'),
            ),
          )
              : Text('')
        ],
      ),
      decoration: BoxDecoration(
        //border: Border.all(width: 1),
      ),
    );
  }
}
