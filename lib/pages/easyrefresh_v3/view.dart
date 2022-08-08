import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/pages/easyrefresh_v2/sample_list_item.dart';
import 'package:getwidget/components/loader/gf_loader.dart';

/// flutter_easyrefresh v3 版本演示
/// https://pub.dev/documentation/easy_refresh/latest/
/// https://github.com/xuelongqy/flutter_easy_refresh/blob/v3/README_CN.md
class EasyRefreshV3Page extends StatefulWidget {
  const EasyRefreshV3Page({Key? key}) : super(key: key);

  @override
  State createState() => _ViewState();
}

class _ViewState extends State<EasyRefreshV3Page> {
  final EasyRefreshController _controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EasyRefesh_V3演示'),
      ),
      body: EasyRefresh(
        // header: ClassicHeader(
        // ),
        //加载时进行初始化
        refreshOnStart: true,
        //初次加载时显示的header
        refreshOnStartHeader: BuilderHeader(
          clamping: true,
          position: IndicatorPosition.above,
          processedDuration: Duration.zero,
          triggerOffset: 10,
          builder: ((context, state) {
            if (state.mode == IndicatorMode.inactive ||
                state.mode == IndicatorMode.done) {
              return const SizedBox();
            }
            return Container(
              //外边距是子元素高度的一半，实现个垂直居中
              padding: const EdgeInsets.only(bottom: 100),
              width: double.infinity,
              height: state.viewportDimension,
              alignment: Alignment.center,
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    GFLoader(),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('刷新中...'),
                  ],
                ),
              ),
            );
          }),
        ),
        header: const MaterialHeader(),
        footer: const MaterialFooter(),
        controller: _controller,
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1), () {
            _controller.finishRefresh();
            _controller.resetFooter();
            setState(() {
              _count = 20;
            });
          });
        },
        onLoad: () async {
          await Future.delayed(const Duration(seconds: 1), () {
            _controller.finishLoad();
            //通知空间，已经没有数据了，不要再加载了。
            //_controller.finishLoad(IndicatorResult.noMore);
            setState(() {
              _count += 5;
            });
          });
        },
        child: ListView(
          children: List.generate(_count, (index) {
            return SampleListItem(index: index);
          }),
        ),
      ),
    );
  }
}
