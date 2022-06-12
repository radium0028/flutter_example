import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedReadView extends StatefulWidget {
  const SharedReadView({Key? key}) : super(key: key);

  @override
  _ReadViewState createState() => _ReadViewState();
}

class _ReadViewState extends State<SharedReadView> {
  SharedPreferences? _prefs;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SharedPreferences 读取 演示'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                _prefs = await SharedPreferences.getInstance();
                setState(() {});
              },
              child: const Text('获取Shard实例并加载数据'),
            ),
            Text('int: ${_prefs?.getInt("int")}'),
            Text('string: ${_prefs?.getString("string")}'),
            Text('bool: ${_prefs?.getBool("bool")}'),
            Text('double: ${_prefs?.getDouble("double")}'),
            Text('stringList: ${_prefs?.getStringList("stringList")}'),
          ],
        ),
      ),
    );
  }
}
