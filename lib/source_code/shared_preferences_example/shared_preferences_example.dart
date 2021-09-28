import 'package:flutter/material.dart';
import 'package:flutter_code/source_code/shared_preferences_example/j_sp_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesExample extends StatefulWidget {
  @override
  _SharedPreferencesExampleState createState() => _SharedPreferencesExampleState();
}

class _SharedPreferencesExampleState extends State<SharedPreferencesExample> {


  // SharedPreferences? sharedPreferences;

  // 使用封装类来设置持久化数据
  void _setDataJSpUtil() async {

    // 设置String类型
    await JSpUtil.setString("name", "Jimi");

    // 设置int类型
    await JSpUtil.setInt("age", 18);

    // 设置bool类型
    await JSpUtil.setBool("isTeacher", true);

    // 设置double类型
    await JSpUtil.setDouble("height", 1.88);

    // 设置string类型的数组
    await JSpUtil.setStringList("action", ["吃饭", "睡觉", "打豆豆"]);

    // 设置Map类型
    await JSpUtil.setMap("weight", {"weight": 112});
    print(JSpUtil.getMap("weight"));

    JSpUtil.setLocalStorage("name", "Jimi");
    JSpUtil.setLocalStorage("age", 18);
    JSpUtil.setLocalStorage("isTeacher", true);
    JSpUtil.setLocalStorage("height", 1.88);
    JSpUtil.setLocalStorage("action", ["吃饭", "睡觉", "打豆豆"]);
    JSpUtil.setLocalStorage("weight", {"weight": "112"});

    JSpUtil.getLocalStorage("name");
    JSpUtil.getLocalStorage("age");
    JSpUtil.getLocalStorage("isTeacher");
    JSpUtil.getLocalStorage("height");
    JSpUtil.getLocalStorage("action");
    JSpUtil.getLocalStorage("weight");


    // 获取磁盘中所有存入的key
    List<String> keys = JSpUtil.getKeys().toList();
    print(keys);

    // 持久化数据中是否包含某个key
    bool isContainKey = JSpUtil.containsKey("name1");
    print(isContainKey);

    // 删除持久化数据中某个key
    bool isRemoveKey = await JSpUtil.remove("name");
    print(isRemoveKey);

    // 清除所有持久化数据
    bool isClearAllKey = await JSpUtil.clear();
    print(isClearAllKey);

    // 重新加载所有数据,仅重载运行时
    await JSpUtil.reload();

    setState(() {});

  }

  // 设置持久化数据
  // void _setData() async {
  //   // 实例化
  //   sharedPreferences = await SharedPreferences.getInstance();
  //
  //   // 设置string类型
  //   await sharedPreferences?.setString("name", "Jimi");
  //
  //   // 设置int类型
  //   await sharedPreferences?.setInt("age", 18);
  //
  //   // 设置bool类型
  //   await sharedPreferences?.setBool("isTeacher", true);
  //
  //   // 设置double类型
  //   await sharedPreferences?.setDouble("height", 1.88);
  //
  //   // 设置string类型的数组
  //   await sharedPreferences?.setStringList("action", ["吃饭", "睡觉", "打豆豆"]);
  //
  //   // 获取磁盘中所有存入的key
  //   List<String> keys = sharedPreferences?.getKeys().toList() ?? [];
  //   print(keys);
  //
  //   // 持久化数据中是否包含某个key
  //   bool isContainKey = sharedPreferences?.containsKey("name") ?? false;
  //   print(isContainKey);
  //
  //   // 删除持久化数据中某个key
  //   bool isRemoveKey = await sharedPreferences?.remove("name") ?? false;
  //
  //
  //   // 清除所有持久化数据
  //   // bool isClearAllKey = await sharedPreferences?.clear() ?? false;
  //   // print(isClearAllKey);
  //   // print(sharedPreferences?.getKeys().toList() ?? []);
  //
  //   // 重新加载所有数据,仅重载运行时
  //   await sharedPreferences?.reload();
  //
  //   setState(() {});
  // }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SharedPreferences"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _setDataJSpUtil,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text("名字: ${sharedPreferences?.getString("name") ?? ""}",
            //   style: TextStyle(
            //     color: Colors.blue,
            //     fontSize: 20
            //   ),
            // ),
            // SizedBox(height: 20,),
            // Text("年龄: ${sharedPreferences?.getInt("age") ?? ""}",
            //   style: TextStyle(
            //       color: Colors.red,
            //       fontSize: 20
            //   ),
            // ),
            // SizedBox(height: 20,),
            // Text("是老师吗?: ${sharedPreferences?.getBool("isTeacher") ?? ""}",
            //   style: TextStyle(
            //       color: Colors.orange,
            //       fontSize: 20
            //   ),
            // ),
            // SizedBox(height: 20,),
            // Text("身高: ${sharedPreferences?.getDouble("height") ?? ""}",
            //   style: TextStyle(
            //       color: Colors.pink,
            //       fontSize: 20
            //   ),
            // ),
            // SizedBox(height: 20,),
            // Text("我正在: ${sharedPreferences?.getStringList("action") ?? ""}",
            //   style: TextStyle(
            //       color: Colors.purple,
            //       fontSize: 20
            //   ),
            // ),

            Text("名字: ${JSpUtil.getString("name")}",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20
              ),
            ),
            SizedBox(height: 20,),
            Text("年龄: ${JSpUtil.getInt("age")}",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 20
              ),
            ),
            SizedBox(height: 20,),
            Text("是老师吗?: ${JSpUtil.getBool("isTeacher")}",
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20
              ),
            ),
            SizedBox(height: 20,),
            Text("身高: ${JSpUtil.getDouble("height")}",
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20
              ),
            ),
            SizedBox(height: 20,),
            Text("我正在: ${JSpUtil.getStringList("action")}",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20
              ),
            ),
          ],
        ),
      ),
    );
  }
}
