import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_bike), text: "单车",),
              Tab(icon: Icon(Icons.directions_boat), text: "轮船",),
              Tab(icon: Icon(Icons.directions_car), text: "汽车",),
            ],
            // isScrollable: true,
            indicatorColor: Colors.red,
            // automaticIndicatorColorAdjustment: true,
            indicatorWeight: 10,
            // indicatorPadding: EdgeInsets.only(bottom: 2),
            indicator: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.orange,
                Colors.green
              ]),
            ),
            // indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.pink,
            labelStyle: TextStyle(
                backgroundColor: Colors.green,
                fontSize: 20
            ),
            // labelPadding: EdgeInsets.all(10),
            unselectedLabelColor: Colors.orange,
            unselectedLabelStyle: TextStyle(
                backgroundColor: Colors.pink
            ),
            onTap: (index) {
              print(index);
            },
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_bike),
            Icon(Icons.directions_boat),
            Icon(Icons.directions_car),
          ],
        ),
      ),
    );
  }
}