import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class MyTitle extends GetView {
  const MyTitle(this.lable, {Key? key}) : super(key: key);

  final String lable;

  @override
  Widget build(BuildContext context) {
    return GFListTile(
      titleText: lable,
      padding: const EdgeInsets.only(
        bottom: 0,
        top: 8,
        left: 8,
        right: 8,
      ),
      margin: const EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
        bottom: 0,
      ),
      subTitle: const Text(
        "———",
        style: TextStyle(
          color: GFColors.SUCCESS,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
