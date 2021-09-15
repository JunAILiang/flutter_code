import 'package:flutter/material.dart';
import 'package:flutter_code/container_widgets/ClipOvalExample/ClipStarPath.dart';
import 'package:flutter_code/container_widgets/ClipOvalExample/ClipperOvalPath.dart';

class ClipOvalExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRectExample"),
      ),
      backgroundColor: Colors.red.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ClipOval(
            //   /// 自定义裁剪路径
            //   clipper: ClipperOvalPath(),
            //   child: Image.network("https://img1.baidu.com/it/u=2324541312,3167046558&fm=253&fmt=auto&app=120&f=JPEG?w=601&h=400"),
            // ),
            ClipPath(
              clipper: ClipStarPath(),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
