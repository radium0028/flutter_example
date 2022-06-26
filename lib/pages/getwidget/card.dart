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
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: const [
              GFCard(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                title: GFListTile(
                  title: Text('张三'),
                  subTitle: Text('男, 20岁'),
                  avatar: GFAvatar(
                    backgroundImage: NetworkImage(
                      'https://avatars1.githubusercontent.com/u/8186664?s=460&v=4',
                    ),
                  ),
                ),
                content: Text(
                  '本人性格开朗与人处事融洽，对工作善始善终，能承受日益严重的竞争压力，并能在成功与失败中完善自己。活泼开朗，乐观向上，适应力强，勤奋好学，认真负责，勇于迎接新挑战。具有良好的沟通能力与团队合作精神。',
                ),
              ),
              GFCard(
                titlePosition: GFPosition.start,
                title: GFListTile(
                  titleText: '雷哥手柄',
                  subTitleText: '手柄是一种电子游戏机的输入设备',
                  avatar: GFAvatar(
                    backgroundImage: AssetImage(
                      'assets/avatar.png',
                    ),
                  ),
                ),
                content: Text(
                  "手柄是一种电子游戏机的输入设备，通过操纵其按钮等，可以实现对电脑上模拟角色等的控制。手柄在英文中有Gamepad和Joystick两个词，区别在于Gamepad是手握的，Joystick是平放在桌上（和街机一样，主要用于街机模拟器和飞行类游戏）。",
                ),
                showImage: true,
                image: Image(
                  image: AssetImage(
                    'assets/handle.png',
                  ),
                ),
              ),
              GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                showOverlayImage: true,
                imageOverlay: AssetImage(
                  'assets/handle.png',
                ),
                title: GFListTile(
                  title: Text(
                    'Game Controllers',
                    style: TextStyle(
                      color: GFColors.WHITE,
                      fontSize: 30.0,
                    ),
                  ),
                  subTitle: Text(
                    'PlayStation 4',
                    style: TextStyle(color: GFColors.WHITE),
                  ),
                ),
                content: Text(
                  "Some quick example text to build on the card",
                  style: TextStyle(color: GFColors.WHITE),
                ),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    GFAvatar(
                      backgroundColor: GFColors.PRIMARY,
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
