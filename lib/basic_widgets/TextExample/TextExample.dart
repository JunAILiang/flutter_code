import 'package:flutter/material.dart';

class TextExample extends StatefulWidget {
  @override
  _TextExampleState createState() => _TextExampleState();
}

class _TextExampleState extends State<TextExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextExample"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 基本使用
            Text("Jimi"),

            // TextStyle
            Text("Jimi",
              style: TextStyle(

              ),
            )

          ],
        ),
      ),
    );
  }
}
