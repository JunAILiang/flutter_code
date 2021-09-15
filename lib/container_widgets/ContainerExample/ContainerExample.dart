import 'package:flutter/material.dart';

class ContainerExample extends StatefulWidget {
  @override
  _ContainerExampleState createState() => _ContainerExampleState();
}

class _ContainerExampleState extends State<ContainerExample> {

  var color = Colors.orange;
  var width = 200.0;
  var height = 200.0;
  var matrix4Value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ContainerExample"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   color: Colors.pink,
            //   child: Text(
            //     "Jimi",
            //     style: TextStyle(color: Colors.white, fontSize: 30),
            //   ),
            //   width: 200,
            //   height: 200,
            //   alignment: Alignment.center,
            //   padding: EdgeInsets.all(30),
              // margin: EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //   color: Colors.greenAccent,
              //   borderRadius: BorderRadius.circular(20),
              //   gradient: LinearGradient(
              //     begin: Alignment.centerLeft,
              //     end: Alignment.bottomRight,
              //     colors: [
              //       Colors.red,
              //       Colors.blue
              //     ]
              //   ),
              // ),
              // foregroundDecoration: BoxDecoration(
              //   color: Colors.greenAccent,
              //   // borderRadius: BorderRadius.circular(100),
              //   gradient: LinearGradient(
              //       begin: Alignment.centerLeft,
              //       end: Alignment.centerRight,
              //       colors: [
              //         Colors.orange,
              //         Colors.purple,
              //         Colors.blue
              //       ]
              //   ),
              // ),
              // constraints: BoxConstraints(
              //   maxWidth: 100
              // ),
            //   transform: Matrix4.rotationZ(0.3),
            //   transformAlignment: Alignment.center,
            // ),
            // Container(
            //   width: 200,
            //   height: 200,
            //   color: Colors.orange,
            // ),
            AnimatedContainer(
              width: width,
              height: height,
              color: color,
              duration: Duration(milliseconds: 1000),
              transform: Matrix4.rotationZ(matrix4Value),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    color = Colors.blue;
                  });
                },
                child: Text("改变颜色"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    width = 100;
                    height = 400;
                  });
                },
                child: Text("改变宽高"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    matrix4Value = 0.3;
                  });
                },
                child: Text("矩阵转换"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
