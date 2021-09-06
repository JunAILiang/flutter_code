import 'package:flutter/material.dart';

class CenterExample extends StatefulWidget {
  @override
  _CenterExampleState createState() => _CenterExampleState();
}

class _CenterExampleState extends State<CenterExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CenterExample"),
      ),
      body: Center(
        child: Text("Jimi"),
      ),
    );
  }
}