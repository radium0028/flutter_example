import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/global_widgets/title.dart';
import 'package:getwidget/getwidget.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  State createState() => _AlertState();
}

class _AlertState extends State<AlertPage> {
  //是否显示alert的标志
  bool showblur = false;
  //声明一个widget，用来保存alert的引用
  late Widget? alertWidget = const SizedBox();
  //设置垂直偏移
  late double verticalPosition = 0.0;
  //设置水平偏移
  late double horizontalPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GFAlert Page',
        ),
      ),
      body: GFFloatingWidget(
        verticalPosition: verticalPosition,
        horizontalPosition: horizontalPosition,
        showBlurness: showblur,
        body: SafeArea(
          child: Column(
            children: [
              const MyTitle("基础的Alert"),
              GFButton(
                onPressed: () {
                  setState(() {
                    //一个最简单的Alert
                    alertWidget = GFAlert(
                      title: "标题",
                      content: "正文内容",
                      //关闭按钮
                      bottombar: GFButton(
                          onPressed: () {
                            setState(() {
                              showblur = false;
                              alertWidget = null;
                            });
                          },
                          text: "关闭"),
                    );
                    showblur = true;
                  });
                },
                text: "基本的Alert",
              ),
              const MyTitle("圆角的Alert"),
              GFButton(
                onPressed: () {
                  setState(() {
                    //设置垂直偏移
                    verticalPosition = MediaQuery.of(context).size.height * 0.2;
                    //一个最简单的Alert
                    alertWidget = GFAlert(
                      title: "标题",
                      content: "正文内容",
                      type: GFAlertType.rounded,
                      //关闭按钮
                      bottombar: GFButton(
                          onPressed: () {
                            setState(() {
                              showblur = false;
                              alertWidget = null;
                            });
                          },
                          text: "关闭"),
                    );
                    showblur = true;
                  });
                },
                text: "圆角的Alert",
              ),
              const MyTitle("Alert属性演示"),
              GFButton(
                onPressed: () {
                  setState(() {
                    //设置垂直偏移
                    verticalPosition = MediaQuery.of(context).size.height * 0.2;
                    //设置水平偏移
                    horizontalPosition =
                        MediaQuery.of(context).size.width * 0.2;
                    //一个最简单的Alert
                    alertWidget = GFAlert(
                      //标题
                      // title: "标题",
                      //title属性的样式， 对child无效
                      titleTextStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      //显示的内容
                      // content: "正文内容",

                      ///类型，使用GFAlertType枚举类型定义
                      ///GFAlertType.basic,
                      ///GFAlertType.rounded,
                      ///GFAlertType.fullWidth,
                      type: GFAlertType.rounded,
                      //定义alert的宽度
                      width: MediaQuery.of(context).size.width * 0.5,
                      //弹窗底部的组件
                      bottombar: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GFButton(
                              onPressed: () {
                                setState(() {
                                  showblur = false;
                                  alertWidget = null;
                                });
                              },
                              text: "关闭",
                            )
                          ]),
                      //弹窗背景颜色
                      backgroundColor: GFColors.LIGHT,
                      // 弹窗正内内容的Widget组件，只有当content为空时才生效。
                      contentChild: Image.asset("assets/avatar.png"),
                      // 标题组件，当title为空时才能生效。
                      child: const Text('Text类型的标题'),
                    );
                    showblur = true;
                  });
                },
                text: "Alert属性演示",
              ),
            ],
          ),
        ),
        child: alertWidget,
      ),
    );
  }
}
