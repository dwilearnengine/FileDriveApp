import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() => runApp(DriverApp());

class DriverApp extends MaterialApp {
  DriverApp()
      : super(
          title: 'Driver App',
          debugShowCheckedModeBanner: false,
          home: HomePage(),
          theme: ThemeData(),
        );
}







