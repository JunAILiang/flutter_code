import 'package:flutter/material.dart';

class AspectRatioExample extends StatefulWidget {
  @override
  _AspectRatioExampleState createState() => _AspectRatioExampleState();
}

class _AspectRatioExampleState extends State<AspectRatioExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AspectRatioExample"),
      ),
      body: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        width: 150,
        height: 100.0,
        // child: AspectRatio(
        //   aspectRatio: 16 / 16,
        //   child: Container(
        //     color: Colors.orangeAccent,
        //   ),
        // ),
        child: FractionallySizedBox(
          alignment: Alignment.topLeft,
          widthFactor: 1.5,
          heightFactor: 0.5,
          child: new Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
