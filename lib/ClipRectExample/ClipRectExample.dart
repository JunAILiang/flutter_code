import 'package:flutter/material.dart';
import 'package:flutter_code/ClipRectExample/ClipperPath.dart';
import 'package:flutter_code/ClipRectExample/ClipperRPath.dart';

class ClipRectExample extends StatefulWidget {
  @override
  _ClipRectExampleState createState() => _ClipRectExampleState();
}

class _ClipRectExampleState extends State<ClipRectExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRectExample"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ClipRect(
            //   /// 自定义裁剪路径
            //   clipper: ClipperPath(),
            //   child: Align(
            //     alignment: Alignment.topLeft,
            //     widthFactor: 1,
            //     child: Image.network("https://img1.baidu.com/it/u=2324541312,3167046558&fm=253&fmt=auto&app=120&f=JPEG?w=601&h=400"),
            //   ),
            // ),

            ClipRRect(
              // borderRadius: BorderRadius.all(Radius.circular(20)),
              clipper: ClipperRPath(),
              child: Container(
                color: Colors.purple,
                width: 300,
                height: 300,
              )
            ),

          ],
        ),
      ),
    );
  }
}
