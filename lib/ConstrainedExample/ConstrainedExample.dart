import 'package:flutter/material.dart';

class ConstrainedExample extends StatefulWidget {
  @override
  _ConstrainedExampleState createState() => _ConstrainedExampleState();
}

class _ConstrainedExampleState extends State<ConstrainedExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedExample"),
        actions: [
          UnconstrainedBox(
            child: Container(
              width: 20,
              height: 20,
              color: Colors.pink,
              child: IconButton(onPressed: () {}, icon: Icon(Icons.alarm), iconSize: 20, padding: EdgeInsets.zero,),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              child: ConstrainedBox(
                // constraints: BoxConstraints(
                //   maxWidth: 200,
                //   minHeight: 30,
                // ),
                // constraints: BoxConstraints.tight(Size(100, 100)),
                // constraints: BoxConstraints.tightFor(width: 100, height: 100),
                // constraints: BoxConstraints.tightForFinite(width: 100, height: 100),
                // constraints: BoxConstraints.loose(Size(30, 30)),
                constraints: BoxConstraints.expand(width: 400, height: 400),
                child: Container(
                  color: Colors.orangeAccent,
                  child: Text("ConstrainedExample"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

