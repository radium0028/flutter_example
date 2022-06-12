import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedService {
  //单例生命
  factory SharedService() => _instance;
  SharedService._internal();
  static final SharedService _instance = SharedService._internal();
  //保持一个SharedPreferences的引用
  static late final SharedPreferences _sp;

  //初始化方法，只需要调用一次。
  static Future<SharedService> getInstance() async {
    _sp = await SharedPreferences.getInstance();
    return _instance;
  }

  ///写入数据
  static void set<T>(String key, T value) {
    Type type = value.runtimeType;
    switch (type) {
      case String:
        _sp.setString(key, value as String);
        break;
      case int:
        _sp.setInt(key, value as int);
        break;
      case bool:
        _sp.setBool(key, value as bool);
        break;
      case double:
        _sp.setDouble(key, value as double);
        break;
      case List<String>:
        _sp.setStringList(key, value as List<String>);
        break;
    }

    ///Map类型有些特殊，不能直接判断Type的类型
    ///因为他是一个_InternalLinkedHashMap
    ///是一个私有的类型，我没有办法引用出来。
    if (value is Map) {
      _sp.setString(key, json.encode(value));
      return;
    }
  }

  ///返回数据
  static Object? get<T>(String key) {
    var value = _sp.get(key);
    if (value is String) {
      try {
        return const JsonDecoder().convert(value as String)
            as Map<String, dynamic>;
      } on FormatException catch (e) {
        return value;
      }
    }
    return value;
  }

  /// 获取数据中所有的key
  static Set<String> getKeys() {
    return _sp.getKeys();
  }

  /// 判断数据中是否包含某个key
  static bool containsKey(String key) {
    return _sp.containsKey(key);
  }

  /// 删除数据中某个key
  static Future<bool> remove(String key) async {
    return await _sp.remove(key);
  }

  /// 清除所有数据
  static Future<bool> clear() async {
    return await _sp.clear();
  }

  /// 重新加载
  static Future<void> reload() async {
    return await _sp.reload();
  }
}
