import 'package:flutter/material.dart';

class View extends StatelessWidget {
  const View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intl演示'),
      ),
      body: Center(
        child: Container(
          child: const Text('Intl演示'),
        ),
      ),
    );
  }
}
