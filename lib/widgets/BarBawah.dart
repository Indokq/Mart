import 'package:flutter/material.dart';
import 'package:widget_text/pages/AddPage.dart';
import 'package:widget_text/pages/HomePage.dart';
import 'package:widget_text/pages/CardPage.dart';

class Barbawah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BarBawah(),
    );
  }
}

class BarBawah extends StatefulWidget {
  @override
  _NavbarwidgetState createState() => _NavbarwidgetState();
}

class _NavbarwidgetState extends State<BarBawah> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Homepage(),
    Cardpage(),
    Addpage(),

  ];

  void onBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onBarTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'Pesanan',
          ),
        ],
      ),
    );
  }
}