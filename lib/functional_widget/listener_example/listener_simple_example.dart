import 'package:flutter/material.dart';


class ListenerSimpleExample extends StatefulWidget {
  @override
  _ListenerSimpleExampleState createState() => _ListenerSimpleExampleState();
}

class _ListenerSimpleExampleState extends State<ListenerSimpleExample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listener"),
      ),
      body: Center(
        child: Stack(
          children: [
            // Listener(
            //   onPointerDown: (event) {
            //     print("onPointerDown----$event");
            //   },
            //   onPointerMove: (event) {
            //     print("onPointerMove----$event");
            //   },
            //   onPointerUp: (event) {
            //     print("onPointerUp----$event");
            //   },
            //   // onPointerSignal: (event) {
            //   //   print("onPointerSignal----$event");
            //   // },
            //   // onPointerCancel: (event) {
            //   //   print("onPointerCancel----$event");
            //   // },
            //   // onPointerEnter: (event) {
            //   //   print("onPointerEnter----$event");
            //   // },
            //   // onPointerExit: (event) {
            //   //   print("onPointerExit----$event");
            //   // },
            //   // onPointerHover: (event) {
            //   //   print("onPointerHover----$event");
            //   // },
            //   child: Container(
            //     width: 200,
            //     height: 200,
            //     color: Colors.pink,
            //     child: Text("Jimi",
            //       style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 30
            //       ),
            //     ),
            //   ),
            // ),
            // Positioned(
            //   child: Listener(
            //     behavior: HitTestBehavior.opaque,
            //     onPointerDown: (event) {
            //       print("orange---- $event");
            //     },
            //     child: Container(
            //       width: 100,
            //       height: 100,
            //       color: Colors.orange,
            //       child: Text("Jimi"),
            //     ),
            //   ),
            // )
            Listener(
              child: ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(400, 200)),
                  child: Container(
                    color: Colors.greenAccent,
                  )
              ),
              onPointerDown: (event) => print("????????????????????????"),
            ),
            Listener(
              child: ConstrainedBox(
                constraints: BoxConstraints.tight(Size(400, 200)),
                child: Center(child: Text("????????????", style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
                ),)),
              ),
              onPointerDown: (event) => print("????????????????????????"),
              // behavior: HitTestBehavior.deferToChild,
              // behavior: HitTestBehavior.opaque,
              behavior: HitTestBehavior.translucent,
            )
          ],
        ),
      ),
    );
  }
}