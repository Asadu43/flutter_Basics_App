import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  @override
  _PersonState createState() => _PersonState();
}

class _PersonState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Gallery"),
      ),
    );
  }
}
