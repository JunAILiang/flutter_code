import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code/AlignExample/AlignExample.dart';
import 'package:flutter_code/AnimatedAlignExample/AnimatedAlignExample.dart';
import 'package:flutter_code/AnimatedPaddingExample/AnimatedPaddingExample.dart';
import 'package:flutter_code/AppBarExample/AppBarExample.dart';
import 'package:flutter_code/AspectRatioExample/AspectRatioExample.dart';
import 'package:flutter_code/ClipOvalExample/ClipOvalExample.dart';
import 'package:flutter_code/ClipRectExample/ClipRectExample.dart';
import 'package:flutter_code/ConstrainedExample/ConstrainedExample.dart';
import 'package:flutter_code/ContainerExample/ContainerExample.dart';
import 'package:flutter_code/InheritedWidget/InheritedCount.dart';
import 'package:flutter_code/MaterialAppExample/MaterialAppExample.dart';
import 'package:flutter_code/OverflowBoxExample/OverflowBoxExample.dart';
import 'package:flutter_code/PaddingExample/PaddingExample.dart';
import 'package:flutter_code/ScaffoldExample/ScaffoldExample.dart';
import 'package:flutter_code/SizeBoxExample/SizeBoxExample.dart';
import 'package:flutter_code/TabBarExample/TabBarExample.dart';

class ContainerPage extends StatefulWidget {
  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  List _dataList = [
    {
      "title": "InheritedWidget",
      "page": InheritedCount()
    },
    {
      "title": "MaterialApp",
      "page": MaterialAppExample()
    },
    {
      "title": "Scaffold",
      "page": ScaffoldExample()
    },
    {
      "title": "AppBar",
      "page": AppBarExample()
    },
    {
      "title": "TabBar",
      "page": TabBarExample()
    },
    {
      "title": "Padding",
      "page": PaddingExample()
    },
    {
      "title": "AnimatedPadding",
      "page": AnimatedPaddingExample()
    },
    {
      "title": "Align",
      "page": AlignExample()
    },
    {
      "title": "AnimatedAlign",
      "page": AnimatedAlignExample()
    },
    {
      "title": "Constrained",
      "page": ConstrainedExample()
    },
    {
      "title": "SizeBox",
      "page": SizeBoxExample()
    },
    {
      "title": "OverflowBox",
      "page": OverflowBoxExample()
    },
    {
      "title": "AspectRatio",
      "page": AspectRatioExample()
    },
    {
      "title": "Container",
      "page": ContainerExample()
    },
    // {
    //   "title": "ClipRect",
    //   "page": ClipRectExample()
    // },
    // {
    //   "title": "ClipOval",
    //   "page": ClipOvalExample()
    // },
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("容器类组件"),
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
