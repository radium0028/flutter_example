import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class BorderPage extends GetView {
  const BorderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Border 演示')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              GFBorder(
                child: const Text(
                  '边框线',
                  style: TextStyle(
                    color: GFColors.WHITE,
                    backgroundColor: GFColors.DARK,
                  ),
                ),
              ),
              GFBorder(
                padding: const EdgeInsets.all(2),
                child: const Text(
                  '边框线',
                  style: TextStyle(
                    color: GFColors.WHITE,
                    backgroundColor: GFColors.DARK,
                  ),
                ),
              ),
              //没有裁剪的能力，如果child形状与边线不一致，需要调整child元素的形状。
              GFBorder(
                padding: const EdgeInsets.all(20),
                type: GFBorderType.circle,
                child: const Text(
                  '边框线',
                  style: TextStyle(
                    color: GFColors.WHITE,
                    backgroundColor: GFColors.DARK,
                  ),
                ),
              ),
              GFBorder(
                type: GFBorderType.circle,
                padding: const EdgeInsets.all(2),
                child: const GFAvatar(
                  backgroundImage: AssetImage('assets/images/cake1.jpg'),
                ),
              ),
              const Divider(),
              const Text('边线的形状 type = GFBorderType'),
              const Divider(),
              GFBorder(
                type: GFBorderType.oval,
                child: const Text(
                  'oval',
                  style: TextStyle(
                    color: GFColors.WHITE,
                    backgroundColor: GFColors.DARK,
                  ),
                ),
              ),
              GFBorder(
                type: GFBorderType.circle,
                child: const Text(
                  'circle',
                  style: TextStyle(
                    color: GFColors.WHITE,
                    backgroundColor: GFColors.DARK,
                  ),
                ),
              ),
              GFBorder(
                type: GFBorderType.rRect,
                // radius: Radius.circular(10),
                child: const Text(
                  'rRect',
                  style: TextStyle(
                    color: GFColors.WHITE,
                    backgroundColor: GFColors.DARK,
                  ),
                ),
              ),
              GFBorder(
                type: GFBorderType.rect,
                child: const Text(
                  'rect',
                  style: TextStyle(
                    color: GFColors.WHITE,
                    backgroundColor: GFColors.DARK,
                  ),
                ),
              ),
              const Divider(),
              const Text('边线样式dashedLine'),
              const Divider(),
              GFBorder(
                type: GFBorderType.rect,
                dashedLine: [2, 0],
                child: const Text(
                  'rect',
                  style: TextStyle(
                    color: GFColors.WHITE,
                    backgroundColor: GFColors.DARK,
                  ),
                ),
              ),
              GFBorder(
                type: GFBorderType.rect,
                dashedLine: [1, 5],
                child: const Text(
                  'rect',
                  style: TextStyle(
                    color: GFColors.WHITE,
                    backgroundColor: GFColors.DARK,
                  ),
                ),
              ),
              GFBorder(
                type: GFBorderType.rect,
                dashedLine: [5, 1],
                child: const Text(
                  'rect',
                  style: TextStyle(
                    color: GFColors.WHITE,
                    backgroundColor: GFColors.DARK,
                  ),
                ),
              ),
              const Divider(),
              const Text('边线样式的粗细'),
              const Divider(),
              GFBorder(
                dashedLine: [1, 0],
                strokeWidth: 3,
                child: const Text(
                  'rect',
                  style: TextStyle(
                    color: GFColors.WHITE,
                    backgroundColor: GFColors.DARK,
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
