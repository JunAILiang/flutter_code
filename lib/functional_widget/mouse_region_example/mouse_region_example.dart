import 'package:flutter/material.dart';

class MouseRegionExample extends StatefulWidget {
  @override
  _MouseRegionExampleState createState() => _MouseRegionExampleState();
}

class _MouseRegionExampleState extends State<MouseRegionExample> {

  Color _color = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MouseRegion"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MouseRegion(
              onEnter: (event) {
                print("onEnter---$event");
                setState(() {
                  _color = Colors.green;
                });
              },
              onExit: (event) {
                print("onExit---$event");
                setState(() {
                  _color = Colors.orange;
                });
              },
              onHover: (event) {
                print("onHover---$event");
              },
              cursor: SystemMouseCursors.help,
              opaque: false,
              child: Container(
                width: 100,
                height: 100,
                color: _color,
              ),
            ),
          ],
        )
      ),
    );
  }
}