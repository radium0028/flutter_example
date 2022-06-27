// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class FloatingPage extends GetView {
  const FloatingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FloatingPage')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Wrap(
            children: [
              GFFloatingWidget(
                //垂直偏移量
                verticalPosition: MediaQuery.of(context).size.height * 0.1,
                // 水平偏移量
                horizontalPosition: MediaQuery.of(context).size.width * 0.1,
                //正文内容
                body: Container(
                  child: Column(
                    children: const [
                      Text('添加添加添加添加添加添加添加添加'),
                      Text('添加添加添加添加添加添加添加添加'),
                      Text('添加添加添加添加添加添加添加添加'),
                      Text('添加添加添加添加添加添加添加添加'),
                      Text('添加添加添加添加添加添加添加添加'),
                      Text('添加添加添加添加添加添加添加添加'),
                      Text('添加添加添加添加添加添加添加添加'),
                      Text('添加添加添加添加添加添加添加添加'),
                    ],
                  ),
                ),
                child: GFIconBadge(
                  child: GFButton(
                    icon: Icon(Icons.add),
                    onPressed: () {},
                    text: "添加",
                  ),
                  counterChild: GFBadge(
                    text: "12",
                  ),
                ),
                //背景是否模糊
                // showBlurness: true,
                //背景模糊的颜色
                blurnessColor: Colors.blue,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("按钮"),
        onPressed: () {},
      ),
    );
  }
}
