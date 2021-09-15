import 'package:flutter/material.dart';

class OverflowBoxExample extends StatefulWidget {
  @override
  _OverflowBoxExampleState createState() => _OverflowBoxExampleState();
}

class _OverflowBoxExampleState extends State<OverflowBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OverflowBoxExample"),
      ),
      body: Container(
        color: Colors.pink,
        // width: 200.0,
        // height: 200.0,
        padding: const EdgeInsets.all(5.0),
        // child: OverflowBox(
        //   alignment: Alignment.topLeft,
        //   maxWidth: 300.0,
        //   maxHeight: 500.0,
        //   child: Container(
        //     color: Colors.greenAccent,
        //     width: 1000.0,
        //     height: 1000.0,
        //   ),
        // ),
        child: SizedOverflowBox(
          size: Size(200.0, 200.0),
          child: Container(
            color: Colors.blueAccent,
            width: 300.0,
            height: 300.0,
          ),
        ),
      ),
    );
  }
}
