import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code/functional_widget/gesture_detector_example/gesture_detector_example.dart';
import 'package:flutter_code/functional_widget/listener_example/listener_simple_example.dart';
import 'package:flutter_code/functional_widget/mouse_region_example/mouse_region_example.dart';

class FunctionalPage extends StatefulWidget {
  @override
  _FunctionalPageState createState() => _FunctionalPageState();
}

class _FunctionalPageState extends State<FunctionalPage> with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  List _dataList = [
    {
      "title": "Listener",
      "page": ListenerSimpleExample()
    },
    {
      "title": "MouseRegion",
      "page": MouseRegionExample()
    },
    {
      "title": "GestureDetector",
      "page": GestureDetectorExample()
    }

  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("功能型组件"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
          ),
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => _dataList[index]["page"]));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                color: Colors.blue,
                child: AutoSizeText(_dataList[index]["title"],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26
                  ),
                  maxLines: 1,
                  minFontSize: 10,
                ),
              ),
            );
          },
          itemCount: _dataList.length,
        ),
      ),
    );
  }
}
