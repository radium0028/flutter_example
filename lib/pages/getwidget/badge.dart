import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class BadgePage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BadgePage'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 5.0,
            children: const [
              GFBadge(
                text: "12",
              ),
              GFBadge(
                child: Icon(Icons.access_alarm),
              ),
              //text和child同时存在时，child无效。
              GFBadge(
                text: "12",
                child: Icon(Icons.access_alarm),
              ),
              Divider(),
              //设置形状
              GFBadge(
                text: "12",
                //默认形状
                shape: GFBadgeShape.standard,
              ),
              GFBadge(
                text: "12",
                //原型
                shape: GFBadgeShape.circle,
              ),
              GFBadge(
                text: "12",
                //胶囊
                shape: GFBadgeShape.pills,
              ),
              GFBadge(
                text: "12",
                //矩形
                shape: GFBadgeShape.square,
              ),
              Divider(),
              //设置颜色
              GFBadge(
                text: "1",
                shape: GFBadgeShape.circle,
                color: GFColors.SUCCESS,
              ),
              //设置尺寸，可以使用GFSize枚举，也可以设置数值
              GFBadge(
                text: "1",
                shape: GFBadgeShape.circle,
                color: GFColors.SUCCESS,
                size: GFSize.LARGE,
              ),
              GFBadge(
                text: "1",
                shape: GFBadgeShape.circle,
                color: GFColors.SUCCESS,
                size: 50,
              ),
              Divider(),
              GFBadge(
                text: "1",
                shape: GFBadgeShape.circle,
                color: Colors.red,
                size: 100,
                borderShape: StadiumBorder(
                  side: BorderSide(
                    color: Colors.blue,
                    width: 3.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
