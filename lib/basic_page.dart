import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code/basic_widgets/TextExample/TextExample.dart';

class BasicPage extends StatefulWidget {
  @override
  _BasicPageState createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  List _dataList = [
    {
      "title": "Text",
      "page": TextExample()
    }

  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("基本类组件"),
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
