import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkButtonWidget extends GetView {
  LinkButtonWidget(this.lable, this.route, {Key? key, this.enable = true})
      : super(key: key);

  String lable;
  String route;
  late bool enable;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      child: ElevatedButton(
        onPressed: enable
            ? () {
                Get.toNamed(route);
              }
            : null,
        child: Text(
          lable,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
