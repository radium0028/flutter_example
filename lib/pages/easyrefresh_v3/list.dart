import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/pages/easyrefresh_v2/sample_list_item.dart';
import 'package:flutter_example/pages/easyrefresh_v3/search_appbar.dart';
import 'package:flutter_example/pages/easyrefresh_v3/theme.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/loader/gf_loader.dart';

class RefreshListPage extends GetView<RefreshListController> {
  const RefreshListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RefreshListController());
    return Theme(
      data: MyTheme.norTheme(context),
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: const Icon(Icons.keyboard_arrow_left),
            onTap: () {
              Get.back();
            },
          ),
          titleSpacing: 0,
          toolbarHeight: 44,
          elevation: 0,
          title: const SearchAppBar(
            hintLabel: '搜索',
          ),
          actions: [
            Obx(
              () => GestureDetector(
                child: Icon(
                  controller._listModule.value
                      ? Icons.view_module
                      : Icons.view_list,
                ),
                onTap: () {
                  controller._listModule.value = !controller._listModule.value;
                  debugPrint("改变列表展示模式${controller._listModule.value}");
                },
              ),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
        body: Column(
          children: [
            //排序栏
            Container(
              height: 30,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(
                      children: const [
                        Text(
                          '综合推荐',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: const Text('销量'),
                  ),
                  Container(
                    child: const Text('价格'),
                  ),
                  Container(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.av_timer,
                          size: 20,
                        ),
                        Text(
                          '小时达',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: const Text('口碑'),
                  ),
                ],
              ),
            ),
            //过滤栏
            Container(
              color: Colors.white,
              height: 30,
              child: Row(children: [
                Expanded(
                  child: Scrollbar(
                    thickness: 0,
                    controller: controller._scrollController,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: controller._scrollController,
                      itemBuilder: (context, index) {
                        Map<String, Object> filter = controller._filters[index];
                        bool isSelected = filter['select'] as bool;
                        debugPrint(isSelected.toString());
                        return Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(
                              left: 6, right: 6, top: 3, bottom: 3),
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          decoration: isSelected
                              ? BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 254, 231, 233),
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 193, 43, 36),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                )
                              : BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 243, 243, 244),
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 250, 250, 250),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                          child: GestureDetector(
                            child: Text(
                              filter['title']?.toString() ?? '',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                color: isSelected
                                    ? const Color.fromARGB(255, 193, 43, 36)
                                    : Colors.black,
                              ),
                              textWidthBasis: TextWidthBasis.parent,
                            ),
                            onTap: () {
                              debugPrint("点击了Filter_${filter['title']}");
                              controller.changeFilter(filter['id']);
                            },
                          ),
                        );
                      },
                      itemCount: controller._filters.length,
                    ),
                  ),
                ),
                //todo 左侧还需要增加个阴影的效果
                Container(
                  width: 20,
                ),
                GestureDetector(
                  child: Row(children: const [
                    Text("筛选"),
                    Icon(Icons.filter_alt_outlined),
                  ]),
                  onTap: () {
                    debugPrint("点击了筛选按钮");
                  },
                )
              ]),
            ),
            //商品列表
            Expanded(
              child: SizedBox(
                child: _createRefresh(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 创建一个初次加载时显示的header
  _createStartHeader() {
    return BuilderHeader(
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
    );
  }

  /// 创建刷新的列表区域
  _createRefresh() {
    return EasyRefresh(
      //加载时进行初始化
      refreshOnStart: true,
      //初次加载时显示的header
      refreshOnStartHeader: _createStartHeader(),
      header: const TaurusHeader(),
      footer: const TaurusFooter(),
      controller: controller._controller,
      onRefresh: () async {
        controller.listRefresh();
      },
      onLoad: () async {
        controller.listLoad();
      },
      child: Obx(
        () => ListView(
          children: List.generate(controller._listCount.value, (index) {
            return SampleListItem(index: index);
          }),
        ),
      ),
    );
  }
}

class RefreshListController extends GetxController {
  final EasyRefreshController _controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );

  final ScrollController _scrollController = ScrollController();

  final _listCount = 0.obs;
  final _listModule = true.obs;

  final _orders = [
    {
      'title': '综合推荐',
      'value': 0,
    },
    {
      'title': '销量',
      'value': 0,
    },
    {
      'title': '价格',
      'value': 0,
    },
    {
      'title': '小时达',
      'value': 0,
    },
    {
      'title': '口碑',
      'value': 0,
    }
  ];

  final _filters = [
    {
      'id': 1,
      'title': '京东物流',
      'select': true,
    },
    {
      'id': 2,
      'title': '购机补贴',
      'select': false,
    },
    {
      'id': 3,
      'title': '新品',
      'select': false,
    },
    {
      'id': 4,
      'title': '二手',
      'select': false,
    },
    {
      'id': 5,
      'title': '机身内存',
      'select': false,
      'list': [
        {'value': 1, 'title': '4G'},
        {'value': 2, 'title': '8G'},
        {'value': 3, 'title': '16G'}
      ]
    },
    {
      'id': 6,
      'title': '屏幕尺寸',
      'select': false,
      'list': [
        {'value': 1, 'title': '5.5英寸'},
        {'value': 2, 'title': '6.5英寸'},
        {'value': 3, 'title': '7.5英寸'}
      ]
    },
  ];

  @override
  void onInit() {
    super.onInit();
  }

  void changeFilter(var filterId) {
    for (var filter in _filters) {
      if (filter['id'] == filterId) {
        filter['select'] = true;
      } else {
        filter['select'] = false;
      }
    }
  }

  void listRefresh() async {
    await Future.delayed(const Duration(seconds: 1), () {
      _controller.finishRefresh();
      _controller.resetFooter();
      _listCount.value = 20;
    });
  }

  void listLoad() async {
    await Future.delayed(const Duration(seconds: 1), () {
      _controller.finishLoad();
      _listCount.value += 5;
    });
  }
}
