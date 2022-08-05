import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:getwidget/components/loader/gf_loader.dart';
import 'package:intl/intl.dart';
import 'sample_list_item.dart';

/// flutter_easyrefresh 2.2.2 版本演示
/// 2.2.2 v2版本的产品已经不再提供长期维护支持了，建议使用v3版本。
/// 参考：https://pub.dev/packages/flutter_easyrefresh/install
class EasyRefreshPage extends StatefulWidget {
  const EasyRefreshPage({Key? key}) : super(key: key);

  @override
  EasyRefreshPageState createState() => EasyRefreshPageState();
}

class EasyRefreshPageState extends State<EasyRefreshPage> {
  //刷新控制器
  late EasyRefreshController? _easyRefreshController;
  late int _count = 0;

  @override
  void initState() {
    super.initState();
    _easyRefreshController = EasyRefreshController();
  }

  @override
  void dispose() {
    super.dispose();
    _easyRefreshController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EasyRefreshPage')),
      body: SafeArea(
        child: EasyRefresh.custom(
          //可以自定义头部和尾部样式，也可以使用内置样式比如：BezierCircleHeader,MaterialHeader等
          header: ClassicalHeader(
            //header的高度
            extent: 60.0,
            //出发刷新的高度
            triggerDistance: 70.0,
            //是否开启无限刷新
            enableInfiniteRefresh: false,
            //背景颜色
            bgColor: Theme.of(context).primaryColor,
            //文字颜色
            infoColor: Colors.black87,
            //是否浮动
            float: true,
            //是否开启震动反馈
            enableHapticFeedback: true,
            //完成后继续展示多长时间
            completeDuration: const Duration(seconds: 1),
            refreshText: "正在刷新",
            refreshReadyText: "快松手数据就要来了",
            refreshingText: "正在刷新",
            refreshedText: "已刷新",
            refreshFailedText: "刷新失败",
            noMoreText: "没有更多数据了",
            infoText: "更新于：${DateFormat.Hms("zh").format(DateTime.now())}",
          ),
          footer: BezierBounceFooter(),
          controller: _easyRefreshController,
          //是否开启控制结束刷新（refresh时的动画效果
          enableControlFinishRefresh: true,
          //是否开启控制结束加载（load时的动画效果）
          enableControlFinishLoad: true,

          //刷新结束方法
          onRefresh: () async {
            debugPrint("onRefresh1-$_count");
            Future.delayed(const Duration(seconds: 1), () {
              if (mounted) {
                setState(() {
                  _count = 10;
                  _easyRefreshController?.finishRefresh(success: true);
                });
                debugPrint("onRefresh2-$_count");
              }
            });
          },
          //加载结束方法
          onLoad: () async {
            debugPrint("onLoad$_count");
            Future.delayed(const Duration(seconds: 1), () {
              if (mounted) {
                setState(() {
                  _count += 10;
                  _easyRefreshController?.finishLoad(success: true);
                });
              }
            });
          },
          //设置了空视图后就会一直显示空视图
          //emptyWidget: const Text("暂无数据"),
          //可以使用_count对数据做个判断，如果确实没有数据再展示空组件
          // emptyWidget: _count == 0
          //     ? SizedBox(
          //         height: double.infinity,
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Text(
          //               "暂无数据",
          //               style:
          //                   TextStyle(fontSize: 16.0, color: Colors.grey[400]),
          //             ),
          //           ],
          //         ),
          //       )
          //     : null,
          //首次刷新
          firstRefresh: true,
          //首次刷新的加载列表
          firstRefreshWidget: Center(
            child: Container(
              width: 300.0,
              height: 200.0,
              color: Colors.white,
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      GFLoader(),
                      Text("正在加载，请稍后..."),
                    ]),
              ),
            ),
          ),
          // 列表
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return SampleListItem(index: index);
                },
                childCount: _count,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
