import 'package:flutter/material.dart';

class PaddingExample extends StatefulWidget {
  @override
  _PaddingExampleState createState() => _PaddingExampleState();
}

class _PaddingExampleState extends State<PaddingExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padding example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 10,
                  right: 10
              ),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10
              ),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
            )
          ],
        ),
      ),
    );
  }
}