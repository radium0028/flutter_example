import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class BorderPage extends GetView {
  const BorderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Border 演示')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            children: [
              GFBorder(
                child: Image.asset(
                  'assset/2.png',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
