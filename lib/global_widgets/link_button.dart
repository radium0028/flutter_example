import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkButtonWidget extends GetView {
  LinkButtonWidget(this.lable, this.route, {Key? key}) : super(key: key);

  String lable;
  String route;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.toNamed(route);
      },
      child: Text(lable),
    );
  }
}
