// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_example/global_widgets/title.dart';
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
            children: [
              const MyTitle('个人信息卡片'),
              const GFCard(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  top: 0,
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),
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
              // ignore: prefer_const_constructors
              GFCard(
                titlePosition: GFPosition.end,
                title: const GFListTile(
                  titleText: '雷哥手柄',
                  icon: Icon(
                    Icons.star_border,
                    color: GFColors.PRIMARY,
                  ),
                ),
                content: const Text(
                  "手柄是一种电子游戏机的输入设备，通过操纵其按钮等，可以实现对电脑上模拟角色等的控制。",
                ),
                showImage: true,
                image: const Image(
                  image: AssetImage(
                    'assets/handle.png',
                  ),
                ),
                buttonBar: GFButtonBar(
                  children: [
                    GFButton(
                      text: "查看详情",
                      onPressed: () {},
                    ),
                    GFButton(
                      text: "发送信息",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const GFCard(
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
              const MyTitle('微信公众号内容'),
              GFCard(
                image: const Image(
                  image: AssetImage('assets/handle.png'),
                ),
                showImage: true,
                buttonBar: GFButtonBar(
                  children: [
                    const Divider(),
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 6,
                          bottom: 6,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('阅读原文'),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.black45,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        print("阅读原文被点击。");
                      },
                    )
                  ],
                ),
              ),
              GFCard(
                image: const Image(
                  image: AssetImage('assets/images/image1.png'),
                ),
                showImage: true,
                buttonBar: GFButtonBar(
                  children: [
                    const Divider(),
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('看看MmasterGo又出了哪些新功能！'),
                          Image(
                            width: 64,
                            height: 64,
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/image2.png',
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        print("看看MmasterGo又出了哪些新功能！");
                      },
                    ),
                    const Divider(),
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Expanded(
                            child: Text(
                              '如何设计一款令人上瘾的产品？设计秘诀就在这里（上）',
                            ),
                          ),
                          Image(
                            width: 64,
                            height: 64,
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/image3.png',
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        print("如何设计一款令人上瘾的产品？设计秘诀就在这里（上）");
                      },
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
