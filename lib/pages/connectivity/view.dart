import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:developer' as developer;

class ConnectivityPage extends StatefulWidget {
  const ConnectivityPage({super.key});

  @override
  State<ConnectivityPage> createState() => _ConnectivityPageState();
}

class _ConnectivityPageState extends State<ConnectivityPage> {
  // 链接状态结果：bluetooth,wifi,ethernet,mobile,none
  ConnectivityResult _connectionStatus = ConnectivityResult.none;
  // 链接检测器
  final Connectivity _connectivity = Connectivity();
  // 订阅状态变化监听
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    // 初始化检测器
    initConnectivity();
    // 订阅链接状态变化
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    // 释放订阅
    _connectivitySubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connectivity example app'),
      ),
      body: Center(
          child: Text('Connection Status: ${_connectionStatus.toString()}')),
    );
  }

  // 平台消息是异步的，因此我们使用异步方法进行初始化。
  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    // 平台消息可能会失败，因此我们使用try/catch处理异常。
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      developer.log('Couldn\'t check connectivity status', error: e);
      return;
    }

    //如果从树中删除了小部件，而异步平台消息正在传输中，我们希望放弃回复而不是呼叫设置状态以更新不存在的外观。
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() {
      _connectionStatus = result;
    });
  }
}
