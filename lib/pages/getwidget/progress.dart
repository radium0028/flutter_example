import 'package:flutter/material.dart';
import 'package:flutter_example/global_widgets/title.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class ProgressPage extends GetView<ProgressController> {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ProgressPage')),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const MyTitle("基本的进度条"),
                GFProgressBar(
                  percentage: 0.8,
                ),
                const SizedBox(height: 70),
                GFProgressBar(
                  percentage: 0.8,
                  width: 50,
                  radius: 50,
                  type: GFProgressType.circular,
                ),
                const SizedBox(height: 30),
                const MyTitle("添加一些图标"),
                const SizedBox(height: 30),
                GFProgressBar(
                  percentage: 0.8,
                  radius: 80,
                  lineHeight: 15,
                  leading: const Icon(Icons.settings),
                  trailing: const Icon(Icons.add),
                  child: const Text("80%"),
                ),
                const SizedBox(height: 30),
                GFProgressBar(
                  percentage: 0.8,
                  width: 80,
                  radius: 80,
                  lineHeight: 15,
                  type: GFProgressType.circular,
                  leading: const Icon(Icons.settings),
                  trailing: const Icon(Icons.add),
                  child: const Text("80%"),
                ),
                const SizedBox(height: 30),
                const MyTitle("属性演示"),
                GFProgressBar(
                  //进度百分比
                  percentage: 80 / 100,
                  //宽度
                  width: 80,
                  //进度条的半径，影响尺寸。progressHeadType是circular时生效
                  radius: 80,
                  //线段的高度
                  lineHeight: 20,
                  //类型，有原型和线段两种类型
                  type: GFProgressType.linear,
                  //前面的组件
                  leading: const Icon(Icons.settings),
                  //后边的组件
                  trailing: const Icon(Icons.add),
                  //两头的样式，原型或者矩形，如果是矩形，那么radius属性不生效。
                  progressHeadType: GFProgressHeadType.square,
                  //进度条的背景色
                  backgroundColor: Colors.amberAccent,
                  //已加载部分的进度条颜色
                  progressBarColor: Colors.blue,
                  //进度条外边距，可以理解是leading和trailing距离进度条之间的距离
                  margin: const EdgeInsets.all(0),
                  //进度条外边距，可以理解是child与进度条之间的距离
                  padding: const EdgeInsets.all(0),
                  //圆形进度条的线条宽度
                  circleWidth: 13,
                  //定义圆形时进度条的起点角度，默认是0，上方中间的位置。
                  circleStartAngle: 0,
                  //渐变色
                  linearGradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.red, Colors.blue, Colors.green],
                  ),
                  //如果要基于progressPercent值仅显示linearGradient的一部分，请设置true。
                  //就是一种渐变色展开的效果
                  clipLinearGradient: false,
                  //进度条动画效果
                  animation: true,
                  //进度条动画时长
                  animationDuration: 2000,
                  //是否保留进度条的状态
                  autoLive: false,
                  //如果要从上次设置的百分比值为进度条设置动画，请设置true
                  animateFromLastPercentage: true,
                  //反向进度条
                  reverse: false,
                  //创建一个遮罩过滤器，对已经加载的进度条部分生效。
                  mask: const MaskFilter.blur(BlurStyle.solid, 3.0),
                  //如果要从右向左设置线性条的动画，请设置true
                  fromRightToLeft: false,
                  //对齐方式
                  alignment: MainAxisAlignment.center,
                  //子元素，通长放置文本内容
                  child: const Text("80%"),
                ),
                const SizedBox(height: 50),
                GFProgressBar(
                  //进度百分比
                  percentage: 80 / 100,
                  //宽度
                  width: 120,
                  //进度条的半径，影响尺寸。progressHeadType是circular时生效
                  radius: 120,
                  //线段的高度
                  lineHeight: 20,
                  //类型，有原型和线段两种类型
                  type: GFProgressType.circular,
                  //前面的组件
                  leading: const Icon(Icons.settings),
                  //后边的组件
                  trailing: const Icon(Icons.add),
                  //两头的样式，原型或者矩形，如果是矩形，那么radius属性不生效。
                  progressHeadType: GFProgressHeadType.square,
                  //进度条的背景色
                  backgroundColor: Colors.amberAccent,
                  //已加载部分的进度条颜色
                  progressBarColor: Colors.blue,
                  //进度条外边距，可以理解是leading和trailing距离进度条之间的距离
                  margin: const EdgeInsets.all(0),
                  //进度条外边距，可以理解是child与进度条之间的距离
                  padding: const EdgeInsets.all(0),
                  //圆形进度条的线条宽度
                  circleWidth: 13,
                  //定义圆形时进度条的起点角度，默认是0，上方中间的位置。
                  circleStartAngle: 0,
                  //渐变色
                  linearGradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.red, Colors.blue, Colors.green],
                  ),
                  //如果要基于progressPercent值仅显示linearGradient的一部分，请设置true。
                  //就是一种渐变色展开的效果
                  clipLinearGradient: false,
                  //进度条动画效果
                  animation: true,
                  //进度条动画时长
                  animationDuration: 2000,
                  //是否保留进度条的状态
                  autoLive: false,
                  //如果要从上次设置的百分比值为进度条设置动画，请设置true
                  animateFromLastPercentage: true,
                  //反向进度条
                  reverse: false,
                  //创建一个遮罩过滤器，对已经加载的进度条部分生效。
                  mask: const MaskFilter.blur(BlurStyle.solid, 3.0),
                  //如果要从右向左设置线性条的动画，请设置true
                  fromRightToLeft: false,
                  //对齐方式
                  alignment: MainAxisAlignment.center,
                  //子元素，通长放置文本内容
                  child: const Text("80%"),
                ),
              ],
            ),
          ),
        )));
  }
}

class ProgressController {}
