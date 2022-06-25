import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class CardPage extends GetView {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card 演示')),
      body: SafeArea(
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          children: const [
            GFCard(
              title: GFListTile(
                title: Text('标题'),
                subTitle: Text('副标题'),
                avatar: GFAvatar(
                  backgroundImage: NetworkImage(
                    'https://avatars1.githubusercontent.com/u/8186664?s=460&v=4',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
