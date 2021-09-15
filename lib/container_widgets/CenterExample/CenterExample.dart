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
        widthFactor: 3,
        heightFactor: 2,
        child: Container(
          color: Colors.orange,
          child: Text("Jimi"),
        ),
      )
    );
  }
}