import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';

//import 'FileMe.dart';
//import 'HomePage.dart';
import 'package:http/http.dart' as http;
//import 'dart:typed_data';

void main() => runApp(TestApp());

// class DriverApp extends MaterialApp {
//   DriverApp()
//       : super(
//           title: 'Driver App',
//           debugShowCheckedModeBanner: false,
//           home: HomePage(),
//           theme: ThemeData(),
//         );
// }

class TestApp extends StatefulWidget {
  @override
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TestApp',
      home: Scaffold(
        body: Text(text),
        floatingActionButton: Column(
          children: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () async {
                var respons = await http.get(
                  Uri.parse('http://localhost:4040'),
                );
                setState(() {
                  text = respons.body;
                });
              },
            ),
            FloatingActionButton(
              child: Icon(Icons.cloud_download_rounded),
              backgroundColor: Colors.red,
              onPressed: ()async{
                var file = await http.get(
                  Uri.parse('http://localhost:4040')
                );

                var realFile = Base64Encoder().convert(file.body);

                final anchor = AnchorElement(
                    href: "data:text/plain;base64,${realFile}")
                  ..setAttribute("download", "text2.txt")
                  ..click();
              },
            )
          ],
        )
      ),
    );
  }
}
