import 'package:flutter/material.dart';

import 'FileList.dart';

class HomePage extends Scaffold{
  HomePage() : super(
    appBar: AppBar(
      title: Text('DriverApp'),
      centerTitle: true,
    ),
    body: FileList(),
  );
}
