import 'package:flutter/material.dart';

class AppBarExample extends StatefulWidget {
  @override
  _AppBarExampleState createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBarExample"),
        centerTitle: true,
        // leading: IconButton(
        //     onPressed: (){
        //       Navigator.pop(context);
        //     },
        //     icon: Icon(Icons.arrow_back_sharp, color: Colors.white,)
        // ),
        // leadingWidth: 80,
        // automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: (){

            },
            tooltip: "扫一扫",
            icon: Icon(Icons.qr_code_scanner),
          ),
          IconButton(
            onPressed: (){

            },
            tooltip: "添加",
            icon: Icon(Icons.add),
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: "火车", icon: Icon(Icons.bus_alert),),
            Tab(text: "汽车", icon: Icon(Icons.bus_alert),)
          ],
        ),
        // elevation: 20,
        shadowColor: Colors.green,
        // shape: RoundedRectangleBorder(
        //     side: BorderSide(
        //         color: Colors.red,
        //         width: 5
        //     )
        // ),
        // backgroundColor: Colors.orange,
        // foregroundColor: Colors.black,
        backwardsCompatibility: false,
        iconTheme: IconThemeData(
            color: Colors.orange,
            opacity: 1,
            size: 50
        ),
        actionsIconTheme: IconThemeData(
          color: Colors.purple,
        ),
        // primary: false,
        // titleSpacing: 0,
        toolbarOpacity: 1,
        bottomOpacity: 0.5,
        // toolbarHeight: 200,
        // titleTextStyle: TextStyle(
        //     color: Colors.red,
        //   fontSize: 20
        // ),
      ),
    );
  }
}
