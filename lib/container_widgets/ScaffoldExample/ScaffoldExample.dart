import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ScaffoldExample extends StatefulWidget {
  @override
  _ScaffoldExampleState createState() => _ScaffoldExampleState();
}

class _ScaffoldExampleState extends State<ScaffoldExample> with SingleTickerProviderStateMixin {

  bool _isOpen = false;
  AnimationController _animationController;
  Animation<Color> _animationColor;
  Animation<double> _animationIcon;
  Curve _curve = Curves.easeOut;

  GlobalKey<ScaffoldState> _scaffoldStateKey = GlobalKey();

  int _currentIndex = 0;
  List<Widget> _pages = [
    Center(child: Text("tab1"),),
    Center(child: Text("tab2"),),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 250))
    ..addListener(() {
      setState(() {

      });
    });

    _animationColor = ColorTween(
      begin: Colors.red,
      end: Colors.green
    ).animate(CurvedAnimation(parent: _animationController, curve: Interval(0.0, 1.0, curve: _curve)));

    _animationIcon = Tween(begin: 0.0, end: 1.0).animate(_animationController);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldStateKey,
      appBar: AppBar(
        title: Text("ScaffoldExample"),
        leading: IconButton(onPressed: (){
          _scaffoldStateKey.currentState.openDrawer();
        }, icon: Icon(Icons.menu_open)),
      ),
      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: _animationColor.value,
        onPressed: (){
          if (!_isOpen) {
            _animationController.forward();
          } else {
            _animationController.reverse();
          }
          _isOpen = !_isOpen;
        },
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: _animationIcon,
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      persistentFooterButtons: [
        TextButton(onPressed: (){}, child: Text("取消")),
        TextButton(onPressed: (){}, child: Text("确认授权")),
      ],
      drawer: Drawer(
        child: Center(child: Text("drawer"),),
      ),
      onDrawerChanged: (isOpen) {
          print(isOpen);
      },
      endDrawer: Drawer(
        child: Center(child: Text("endDrawer"),),
      ),
      onEndDrawerChanged: (isOpen) {
        print(isOpen);
      },
      drawerDragStartBehavior: DragStartBehavior.start,
      drawerScrimColor: Colors.green,
      drawerEdgeDragWidth: 200,
      drawerEnableOpenDragGesture: true,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.my_library_add), label: "我的"),
        ],
        currentIndex: _currentIndex,
        onTap: (currentIndex){
          setState(() {
            _currentIndex = currentIndex;
          });
        },
      ),
      bottomSheet: Row(
        children: [
          Expanded(child: TextField()),
          TextButton(onPressed: (){}, child: Text("发送"))
        ],
      ),
      backgroundColor: Colors.orange,
      resizeToAvoidBottomInset: true,
      primary: true,
      extendBody: false,
      extendBodyBehindAppBar: false,
    );
  }
}
