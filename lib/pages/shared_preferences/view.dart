import 'package:flutter/material.dart';
import 'package:flutter_example/global_widgets/link_button.dart';
import 'package:flutter_example/pages/shared_preferences/user.dart';
import 'package:flutter_example/routes/pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPage extends StatefulWidget {
  const SharedPage({Key? key}) : super(key: key);

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<SharedPage> {
  @override
  void initState() {
    super.initState();
  }

  SharedPreferences? _prefs;
  User? _user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SharedPreferences演示'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                _prefs = await SharedPreferences.getInstance();
                // 读取user字符串，序列化成对象
                _user = User.fromJson(_prefs?.getString("user") ?? "");
                setState(() {});
              },
              child: const Text('初始SharedPreferences'),
            ),
            ElevatedButton(
              onPressed: () {
                _prefs?.setInt("int", 1);
                _prefs?.setString("string", "string");
                _prefs?.setBool("bool", true);
                _prefs?.setDouble("double", 1.0);
                _prefs?.setStringList("stringList", ["第一个字符串", "第二个字符串"]);
                _prefs?.setString("user", '{"name": "张三2", "age": 18}');
                setState(() {});
              },
              child: const Text('写入数据'),
            ),
            Text('int: ${_prefs?.getInt("int")}'),
            Text('string: ${_prefs?.getString("string")}'),
            Text('bool: ${_prefs?.getBool("bool")}'),
            Text('double: ${_prefs?.getDouble("double")}'),
            Text('stringList: ${_prefs?.getStringList("stringList")}'),
            Text('用户姓名: ${_user?.name}'),
            LinkButtonWidget("去读取页面", Routes.SHARED + Routes.SHARED_READ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                _prefs?.getKeys().forEach((element) {
                  print(element);
                });
              },
              child: const Text('获取所有key'),
            ),
            ElevatedButton(
              onPressed: () {
                var hasKey = _prefs?.containsKey("name");
                print("name hasKey: $hasKey");
                hasKey = _prefs?.containsKey("string");
                print("string hasKey: $hasKey");
              },
              child: const Text('判断保存数据中是否包含某个key'),
            ),
            ElevatedButton(
              onPressed: () {
                _prefs?.remove("string");
                setState(() {});
              },
              child: const Text('删除保存数据中的某个key'),
            ),
            ElevatedButton(
              onPressed: () {
                _prefs?.clear();
                setState(() {});
              },
              child: const Text('清除所有持久化的数据'),
            ),
            ElevatedButton(
              onPressed: () {
                _prefs?.reload();
              },
              child: const Text('重新加载所有数据'),
            ),
            const Divider(),
            LinkButtonWidget(
              "去封装的演示页面",
              Routes.SHARED + Routes.SHARED_SERVICE,
            ),
          ],
        ),
      ),
    );
  }
}
