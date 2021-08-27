import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  @override
  _AnimatedPaddingExampleState createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  double paddingAllValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedPaddingExample"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Padding: $paddingAllValue'),
          AnimatedPadding(
            padding: EdgeInsets.all(paddingAllValue),
            duration: Duration(milliseconds: 1000),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.blue,
            ),
            onEnd: () {
              print("动画结束时的回调");
            },
          ),
          ElevatedButton(
              child: Text('改变padding的值'),
              onPressed: () {
                setState(() {
                  paddingAllValue = paddingAllValue == 0.0 ? 50.0 : 0.0;
                });
              }),
        ],
      ),
    );
  }
}