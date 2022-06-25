// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class ImagePage extends GetView {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ImagePage 演示')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                GFImageOverlay(
                  height: 150,
                  width: 150,
                  image: AssetImage(
                    'assets/background.png',
                  ),
                  child: const Text(
                    '有child，可以写字哦',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                GFImageOverlay(
                  height: 150,
                  width: 150,
                  image: NetworkImage(
                    'https://image.ionicfirebaseapp.com/getwidget/docs/tr:w-800,f-auto/Images_-_basic_3x_uHCFyLq7s.png',
                  ),
                  child: Center(
                    child: const Text(
                      '有child，可以写字哦',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                //定义形状
                ListTile(
                  title: Text("定义形状和充填"),
                ),
                GFImageOverlay(
                  height: 150,
                  width: 150,
                  shape: BoxShape.circle,
                  boxFit: BoxFit.cover,
                  image: AssetImage("assets/background.png"),
                ),
                GFImageOverlay(
                  height: 150,
                  width: 150,
                  boxFit: BoxFit.fill,
                  image: AssetImage("assets/background.png"),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                ListTile(
                  title: Text("添加遮罩层"),
                ),
                GFImageOverlay(
                  height: 150,
                  image: AssetImage("assets/background.png"),
                ),
                GFImageOverlay(
                  height: 150,
                  image: AssetImage("assets/background.png"),
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.darken),
                ),
                GFImageOverlay(
                  height: 150,
                  image: AssetImage("assets/background.png"),
                  colorFilter: ColorFilter.mode(
                      Colors.red.withOpacity(0.5), BlendMode.color),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
