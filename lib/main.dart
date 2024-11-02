import 'package:flutter/material.dart';
import 'package:widget_text/pages/HomePage.dart';
import 'package:widget_text/widgets/BarBawah.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbhak Mart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white10
      ),
      routes: {
        '/': (context) =>   BarBawah(),
      },

    );
  }
}