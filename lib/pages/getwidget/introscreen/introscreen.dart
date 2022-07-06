import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/routes/pages.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class IntroScreenPage extends GetView<IntroScreenController> {
  const IntroScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('IntroScreenPage')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GFButton(
              onPressed: () {
                Get.offNamed(Routes.GETWIDGET +
                    Routes.GETWIDGET_INTRODUCTION +
                    Routes.GETWIDGET_INTRODUCTION_FULL);
              },
              text: '全屏信息展示',
            ),
            GFButton(
              onPressed: () {
                Get.offNamed(Routes.GETWIDGET +
                    Routes.GETWIDGET_INTRODUCTION +
                    Routes.GETWIDGET_INTRODUCTION_HALF);
              },
              text: '一半宽度演示',
            ),
          ],
        ));
  }
}

class IntroScreenController {}
