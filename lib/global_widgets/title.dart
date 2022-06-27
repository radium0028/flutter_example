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
