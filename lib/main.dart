import 'package:flutter/material.dart';
import 'package:flutter_code/basic_page.dart';
import 'package:flutter_code/container_page.dart';
import 'package:flutter_code/functional_page.dart';
import 'package:flutter_code/source_code/shared_preferences_example/j_sp_util.dart';
import 'package:flutter_code/source_code_page.dart';

void main() async {
  // 初始化插件前需调用初始化代码 runApp()函数之前
  WidgetsFlutterBinding.ensureInitialized();

  /// 初始持久化数据
  await JSpUtil.getInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title});
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  List<Widget> _pages = [
    ContainerPage(),
    BasicPage(),
    FunctionalPage(),
    SourceCodePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: _pages,
        index: _currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
          color: Colors.black87
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.grey
        ),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "容器类组件",),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "基础类组件"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "功能型组件"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "源码分析"),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (currentIndex){
          setState(() {
            _currentIndex = currentIndex;
          });
        },
      ),
    );
  }
}
