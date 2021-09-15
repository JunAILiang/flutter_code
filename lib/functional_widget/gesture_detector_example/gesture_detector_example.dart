import 'package:flutter/material.dart';

class GestureDetectorExample extends StatefulWidget {
  @override
  _GestureDetectorExampleState createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {

  double _left = 0;
  double _top = 0;
  double _widthAndHeight = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GestureDetector"),
      ),
      body: Center(
        child: Stack(
          children: [

            /// 单击手势
            // GestureDetector(
            //   onTap: (){
            //     print("onTap");
            //   },
            //   onTapCancel: () {
            //     print("onTapCancel");
            //   },
            //   onTapDown: (details) {
            //     print("onTapDown---${details.globalPosition}---${details.localPosition}");
            //   },
            //   onTapUp: (details) {
            //     print("onTapUp---${details.globalPosition}---${details.localPosition}");
            //   },
            //   child: Container(
            //     width: 200,
            //     height: 200,
            //     color: Colors.orange,
            //     alignment: Alignment.center,
            //     child: Text("Jimi",
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 30
            //       ),
            //     ),
            //   ),
            // )

            /// 双击手势
            // GestureDetector(
            //   onDoubleTap: () {
            //     print("onTapDown");
            //   },
            //   onDoubleTapCancel: () {
            //     print("onDoubleTapCancel");
            //   },
            //   onDoubleTapDown: (details) {
            //     print("onDoubleTapDown---${details.globalPosition}---${details.localPosition}");
            //   },
            //   child: Container(
            //     width: 200,
            //     height: 200,
            //     color: Colors.orange,
            //     alignment: Alignment.center,
            //     child: Text("Jimi",
            //       style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 30
            //       ),
            //     ),
            //   ),
            // )

            /// 长按手势
            // GestureDetector(
            //   onLongPress: (){
            //     print("onLongPress");
            //   },
            //   onLongPressCancel: () {
            //     print("onLongPressCancel");
            //   },
            //   onLongPressUp: () {
            //     print("onLongPressUp");
            //   },
            //   onLongPressDown: (details) {
            //     print("onLongPressDown---${details.globalPosition}---${details.localPosition}");
            //   },
            //   onLongPressEnd: (details) {
            //     print("onLongPressEnd---${details.globalPosition}---${details.localPosition}");
            //   },
            //   onLongPressStart: (details) {
            //     print("onLongPressStart---${details.globalPosition}---${details.localPosition}");
            //   },
            //   onLongPressMoveUpdate: (details) {
            //     print("onLongPressMoveUpdate---${details.globalPosition}---${details.localPosition}");
            //   },
            //   child: Container(
            //     width: 200,
            //     height: 200,
            //     color: Colors.orange,
            //     alignment: Alignment.center,
            //     child: Text("Jimi",
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 30
            //       ),
            //     ),
            //   ),
            // )

            /// 垂直滑动
            // GestureDetector(
            //   onVerticalDragCancel: () {
            //     print("onVerticalDragCancel");
            //   },
            //   onVerticalDragDown: (details) {
            //     print("onVerticalDragDown---${details.globalPosition}---${details.localPosition}");
            //   },
            //   onVerticalDragEnd: (details) {
            //     print("onVerticalDragEnd---${details.velocity}---${details.primaryVelocity}");
            //   },
            //   onVerticalDragStart: (details) {
            //     print("onVerticalDragStart---${details.globalPosition}---${details.localPosition}");
            //   },
            //   onVerticalDragUpdate: (details) {
            //     print("onVerticalDragUpdate---${details.globalPosition}---${details.localPosition}---${details.delta}");
            //     setState(() {
            //       _top += details.delta.dy;
            //     });
            //
            //   },
            //   child: Stack(
            //     children: [
            //       Positioned(
            //         left: _left,
            //         top: _top,
            //         child: Container(
            //           width: 200,
            //           height: 200,
            //           color: Colors.orange,
            //           alignment: Alignment.center,
            //           child: Text("Jimi",
            //             style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 30
            //             ),
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // )

            /// 水平滑动
            // GestureDetector(
            //   onHorizontalDragCancel: () {
            //     print("onHorizontalDragCancel");
            //   },
            //   onHorizontalDragDown: (details) {
            //     print("onHorizontalDragDown---${details.globalPosition}---${details.localPosition}");
            //   },
            //   onHorizontalDragEnd: (details) {
            //     print("onHorizontalDragEnd---${details.velocity}---${details.primaryVelocity}");
            //   },
            //   onHorizontalDragStart: (details) {
            //     print("onHorizontalDragStart---${details.globalPosition}---${details.localPosition}");
            //   },
            //   onHorizontalDragUpdate: (details) {
            //     print("onHorizontalDragUpdate---${details.globalPosition}---${details.localPosition}---${details.delta}");
            //     setState(() {
            //       _left += details.delta.dx;
            //     });
            //
            //   },
            //   child: Stack(
            //     children: [
            //       Positioned(
            //         left: _left,
            //         top: _top,
            //         child: Container(
            //           width: 200,
            //           height: 200,
            //           color: Colors.orange,
            //           alignment: Alignment.center,
            //           child: Text("Jimi",
            //             style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 30
            //             ),
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // )

            /// 拖动手势
            // GestureDetector(
            //   onPanCancel: () {
            //     print("onPanCancel");
            //   },
            //   onPanDown: (details) {
            //     print("onPanDown---${details.globalPosition}---${details.localPosition}");
            //   },
            //   onPanEnd: (details) {
            //     print("onPanEnd---${details.velocity}---${details.primaryVelocity}");
            //   },
            //   onPanStart: (details) {
            //     print("onPanStart---${details.globalPosition}---${details.localPosition}");
            //   },
            //   onPanUpdate: (details) {
            //     print("onPanUpdate---${details.globalPosition}---${details.localPosition}---${details.delta}");
            //     setState(() {
            //       _left += details.delta.dx;
            //       _top += details.delta.dy;
            //     });
            //   },
            //   child: Stack(
            //     children: [
            //       Positioned(
            //         left: _left,
            //         top: _top,
            //         child: Container(
            //           width: 200,
            //           height: 200,
            //           color: Colors.orange,
            //           alignment: Alignment.center,
            //           child: Text("Jimi",
            //             style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 30
            //             ),
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // )

            /// 缩放手势
            // GestureDetector(
            //   onScaleEnd: (details) {
            //     print("onScaleEnd---${details.velocity}---${details.pointerCount}");
            //   },
            //   onScaleStart: (details) {
            //     print("onScaleStart---${details.focalPoint}---${details.pointerCount}");
            //   },
            //   onScaleUpdate: (details) {
            //     print("onScaleUpdate---${details.scale}---${details.scale.clamp(0.1, 1.2)}");
            //     setState(() {
            //       _widthAndHeight = 200 * details.scale.clamp(0.3, 1.8);
            //     });
            //   },
            //   child: Container(
            //     width: _widthAndHeight,
            //     height: _widthAndHeight,
            //     color: Colors.orange,
            //     alignment: Alignment.center,
            //     child: Text("Jimi",
            //       style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 30
            //       ),
            //     ),
            //   ),
            // )

          ],
        ),
      ),
    );
  }
}