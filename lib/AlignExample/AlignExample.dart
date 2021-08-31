import 'package:flutter/material.dart';

class AlignExample extends StatefulWidget {
  @override
  _AlignExampleState createState() => _AlignExampleState();
}

class _AlignExampleState extends State<AlignExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlignExample"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // width: 200,
              // height: 200,
              color: Colors.blueAccent,
              child: Align(
                alignment: Alignment.topRight,
                widthFactor: 3.0,
                heightFactor: 2.0,
                child: Text("Align"),
              ),
            )
          ],
        ),
      ),
    );
  }
}