import 'package:flutter/material.dart';
import 'package:my_first_app/pages/first.dart';
import 'package:my_first_app/pages/layout_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: LayoutPage(),
  ));
}
