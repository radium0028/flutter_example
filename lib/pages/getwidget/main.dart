// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_example/global_widgets/link_button.dart';
import 'package:flutter_example/routes/pages.dart';
import 'package:getwidget/getwidget.dart';

class GetWidgetPage extends StatefulWidget {
  const GetWidgetPage({Key? key}) : super(key: key);

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<GetWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetWidget演示'),
      ),
      body: GridView.count(
        crossAxisCount: 2, // 主轴一行的数量
        mainAxisSpacing: 15, // 主轴每行间距
        crossAxisSpacing: 15, // 交叉轴每行间距
        childAspectRatio: 1 / 0.3, // 宽高比
        children: [
          LinkButtonWidget(
            "基本样式",
            Routes.GETWIDGET + Routes.GETWIDGET_BASIC,
          ),
          LinkButtonWidget(
            "按钮Button",
            Routes.GETWIDGET + Routes.GETWIDGET_BUTTON,
          ),
          LinkButtonWidget(
            "徽章Badge",
            Routes.GETWIDGET + Routes.GETWIDGET_BADGE,
          ),
          LinkButtonWidget(
            "头像Avatar",
            Routes.GETWIDGET + Routes.GETWIDGET_AVATAR,
          ),
          LinkButtonWidget(
            "图片Image",
            Routes.GETWIDGET + Routes.GETWIDGET_IMAGE,
          ),
          LinkButtonWidget(
            "卡片Card",
            Routes.GETWIDGET + Routes.GETWIDGET_CARD,
          ),
          LinkButtonWidget(
            "旋转木马Carousel",
            Routes.GETWIDGET + Routes.GETWIDGET_CAROUSEL,
          ),
          LinkButtonWidget(
            "标题Tile",
            Routes.GETWIDGET + Routes.GETWIDGET_TILE,
          ),
          LinkButtonWidget(
            "选项卡Tab",
            Routes.GETWIDGET + Routes.GETWIDGET_TAB,
          ),
          LinkButtonWidget(
              "浮动组件Floating", Routes.GETWIDGET + Routes.GETWIDGET_FLOATING),
          LinkButtonWidget(
            "Toast",
            Routes.GETWIDGET + Routes.GETWIDGET_TOAST,
          ),
          LinkButtonWidget(
            "切换按钮Toggle",
            Routes.GETWIDGET + Routes.GETWIDGET_TOGGLE,
          ),
          LinkButtonWidget(
            "抽屉Drawer",
            Routes.GETWIDGET + Routes.GETWIDGET_DRAWER,
          ),
          LinkButtonWidget(
            "手风琴Accordion",
            Routes.GETWIDGET + Routes.GETWIDGET_ACCORDION,
          ),
          LinkButtonWidget(
            "文字排版Typography",
            Routes.GETWIDGET + Routes.GETWIDGET_TYPOGRAPHY,
          ),
          LinkButtonWidget(
            "警告框Alert",
            Routes.GETWIDGET + Routes.GETWIDGET_ALERT,
          ),
          LinkButtonWidget(
            "Appbar",
            Routes.GETWIDGET + Routes.GETWIDGET_APPBAR,
          ),
          LinkButtonWidget(
            "评分Rating",
            Routes.GETWIDGET + Routes.GETWIDGET_RATING,
          ),
          LinkButtonWidget(
            "下拉列表Dropdown",
            Routes.GETWIDGET + Routes.GETWIDGET_DROPDOWN,
          ),
          LinkButtonWidget(
            "加载器Loader",
            Routes.GETWIDGET + Routes.GETWIDGET_LOADER,
          ),
          LinkButtonWidget(
            "进度器Progress",
            Routes.GETWIDGET + Routes.GETWIDGET_PROGRESS,
          ),
          LinkButtonWidget(
            "搜索框Search",
            Routes.GETWIDGET + Routes.GETWIDGET_SEARCH,
          ),
          LinkButtonWidget(
            enable: false,
            "骨架页Shimmer",
            Routes.GETWIDGET + Routes.GETWIDGET_SHIMMER,
          ),
          LinkButtonWidget(
            enable: false,
            "动画Animation",
            Routes.GETWIDGET + Routes.GETWIDGET_ANIMATION,
          ),
          LinkButtonWidget(
            "边线Border",
            Routes.GETWIDGET + Routes.GETWIDGET_BORDER,
          ),
          LinkButtonWidget(
            enable: false,
            "底部滑出Bottomsheet",
            Routes.GETWIDGET + Routes.GETWIDGET_BOTTOMSHEET,
          ),
          LinkButtonWidget(
              enable: false,
              "复选框Checkbox",
              Routes.GETWIDGET + Routes.GETWIDGET_CHECKBOX),
          LinkButtonWidget(
            enable: false,
            "复选列表CheckboxListTile",
            Routes.GETWIDGET + Routes.GETWIDGET_CHECKBOXLISTTILE,
          ),
          LinkButtonWidget(
            enable: false,
            "多选框Multiselect",
            Routes.GETWIDGET + Routes.GETWIDGET_MULTISELECT,
          ),
          LinkButtonWidget(
            enable: false,
            "信息屏Introduction Screen",
            Routes.GETWIDGET + Routes.GETWIDGET_INTRODUCTION,
          ),
          LinkButtonWidget(
            enable: false,
            "单选按钮Radio",
            Routes.GETWIDGET + Routes.GETWIDGET_RADIO,
          ),
          LinkButtonWidget(
            enable: false,
            "单选列表RadioList Tile",
            Routes.GETWIDGET + Routes.GETWIDGET_RADIOLIST,
          ),
          LinkButtonWidget(
            enable: false,
            "粘性头Sticky Header",
            Routes.GETWIDGET + Routes.GETWIDGET_STICKY,
          ),
        ],
      ),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Wrap(
      //     children: <Widget>[
      //       LinkButtonWidget("按钮演示", Routes.GETWIDGET_BUTTON),
      //       LinkButtonWidget("按钮演示", Routes.GETWIDGET_BUTTON),
      //       LinkButtonWidget("按钮演示", Routes.GETWIDGET_BUTTON),
      //       LinkButtonWidget("按钮演示", Routes.GETWIDGET_BUTTON),
      //       LinkButtonWidget("按钮演示", Routes.GETWIDGET_BUTTON),
      //     ],
      //   ),
      // ),
    );
  }
}
