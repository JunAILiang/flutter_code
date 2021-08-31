import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  @override
  _AnimatedAlignExampleState createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedAlignExample"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250.0,
              height: 250.0,
              color: Colors.green,
              child: AnimatedAlign(
                alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
                duration: Duration(milliseconds: 1000),
                curve: Curves.fastOutSlowIn,
                child: Icon(Icons.ac_unit, size: 40,),
                widthFactor: 2.0,
                heightFactor: 2.0,
                onEnd: () {
                  print("动画结束时进入");
                },
              ),
            ),
            ElevatedButton(
                child: Text('改变alignment参数'),
                onPressed: () {
                  setState(() {
                    selected = !selected;
                  });
                }),
          ],
        ),
      ),
    );
  }
}