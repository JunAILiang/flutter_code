import 'package:flutter/material.dart';

class SizeBoxExample extends StatefulWidget {
  @override
  _SizeBoxExampleState createState() => _SizeBoxExampleState();
}

class _SizeBoxExampleState extends State<SizeBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("SizeBoxExample"),
      ),
      body: Container(
          // child: SizedBox(
          //   width: 300.0,
          //   height: 300.0,
          //   child: Card(child: Text('Hello Jimi!')),
          // )
        // child: SizedBox.expand(
        //   child: Card(child: Text('Hello Jimi!')),
        // ),
        // child: SizedBox.shrink(
        //   child: Card(child: Text('Hello Jimi!')),
        // ),
        // child: SizedBox.fromSize(
          // size: Size( 200, 300 ),
          // child: Card(child: Text('Hello Jimi!')),
        // ),
          width: 300,
          height: 300,
          color: Colors.orangeAccent,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.topRight,
            child: Card(
              child: Image.network("https://pics1.baidu.com/feed/9f2f070828381f30df967f66ef799b0d6c06f0f4.png?token=c98bbfa4748e659d9b5dd460b39a0785&s=C804EF1F2873629C04AD79630300F060"),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
          ),
      ),
    );
  }
}