import 'package:flutter/material.dart';
import 'package:flutter_code/InheritedWidget/InheritedState.dart';

class InheritedCount extends StatefulWidget {
  @override
  _InheritedCountState createState() => _InheritedCountState();
}

class _InheritedCountState extends State<InheritedCount> {

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InheritedDemo"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Icon(Icons.add, color: Colors.white,),
      ),
      body: Center(
        child: InheritedState(
            count: _count,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                WidgetA(),
                WidgetB()
              ],
            )
        ),
      ),
    );
  }
}

class WidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("widget text");
  }
}

class WidgetB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(InheritedState.of(context)?.count.toString(),
      style: TextStyle(
        color: Colors.green,
        fontSize: 50
      ),  
    );
  }
}


