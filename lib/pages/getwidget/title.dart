// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class TilePage extends GetView {
  const TilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TilePage')),
      body: SafeArea(
        child: Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: [
            GFListTile(
              titleText: "张三",
              subTitleText: "这个人很懒，什么都没写。",
              avatar: GFAvatar(
                backgroundImage: AssetImage(
                  'assets/avatar.png',
                ),
              ),
              icon: Icon(
                Icons.favorite,
                color: GFColors.PRIMARY,
              ),
              color: GFColors.LIGHT,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              onTap: () {
                print('点击了张三');
              },
            ),
            //可以使用title和subTitle替代titleText和subTitleText，实现更丰富的文字样式。
            GFListTile(
              title: Text(
                '万里挑一',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: GFColors.PRIMARY,
                ),
                textScaleFactor: 1.5,
              ),
              subTitle: Text(
                '《关于唐医生的一切》电视剧主题曲',
                style: TextStyle(
                  color: GFColors.SECONDARY,
                ),
              ),
              avatar: GFAvatar(
                backgroundImage: AssetImage(
                  'assets/avatar.png',
                ),
              ),
              icon: Icon(
                Icons.play_arrow,
                color: GFColors.PRIMARY,
              ),
              color: GFColors.LIGHT,
            ),
            GFListTile(
              titleText: "复仇者联盟 The Avengers",
              subTitleText: "导演: 乔斯·韦登。",
              avatar: GFAvatar(
                backgroundImage: NetworkImage(
                    'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1469137689.jpg'),
              ),
              color: GFColors.LIGHT,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              description: Text(
                  '一股突如其来的强大邪恶势力对地球造成致命威胁，没有任何一个超级英雄能够单独抵挡。长期致力于保护全球安危的神盾局（SHIELD）感到措手不及，其指挥官“独眼侠”尼克·弗瑞（塞缪尔·杰克逊 Samuel L. Jackson 饰）意识到他必须创建一个“史上最强”的联盟组织， 云集各方超级英雄一起发威，才能拯救世界于水深火热，抵御黑暗势力的侵袭。于是由六大超级英雄——“钢铁侠”（小罗伯特·唐尼 Robert Downey Jr. 饰）、“雷神” （克里斯·海姆斯沃斯 Chris Hemsworth 饰）、“美国队长”（克里斯·埃文斯 Chris Evans 饰）、“绿巨人” （马克·鲁弗洛 Mark Ruffalo 饰）、“黑寡妇”（斯嘉丽·约翰逊 Scarlett Johansson 饰）和“鹰眼”（杰瑞米·雷纳 Jeremy Renner 饰）组成的 “复仇者联盟”应运而生。他们各显神通，团结一心，终于战胜了邪恶势力，保证了地球的安全。'),
            ),
          ],
        ),
      ),
    );
  }
}
