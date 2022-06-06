import 'package:flutter/material.dart';

class SentryPage extends StatelessWidget {
  const SentryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sentry演示'),
      ),
      body: Center(
        child: Column(children: [
          ElevatedButton(
            onPressed: () {
              throw Exception("同步异常");
            },
            child: const Text("触发异常--同步异常"),
          ),
          ElevatedButton(
            onPressed: () {
              Future.delayed(const Duration(seconds: 1)).then((_) {
                throw Exception("异步异常");
              });
            },
            child: const Text("异步异常"),
          ),
        ]),
      ),
    );
  }
}
