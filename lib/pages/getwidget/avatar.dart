import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class AvatarPage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //设置一下背景色，让头像更清晰。
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text('MyPage'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 10.0,
            children: const [
              GFAvatar(
                backgroundImage: AssetImage('assset/1.png'),
              ),
              GFAvatar(
                backgroundImage: AssetImage('assset/1.png'),
                shape: GFAvatarShape.square,
              ),
              GFAvatar(
                backgroundImage: AssetImage('assset/1.png'),
                shape: GFAvatarShape.standard,
              ),
              Divider(),
              GFAvatar(
                size: GFSize.LARGE,
                backgroundImage: AssetImage('assset/1.png'),
              ),
              Divider(),
              GFAvatar(
                size: 100.0,
                backgroundImage: AssetImage('assset/1.png'),
              ),
              GFAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('assset/1.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
