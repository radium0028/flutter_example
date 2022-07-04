import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class AppBarPage extends GetView<AppBarPageController> {
  const AppBarPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(AppBarPageController());

    return Scaffold(
      appBar: GFAppBar(
        // title: const Text(
        //   '模拟B站',
        //   style: TextStyle(
        //     color: Colors.black,
        //   ),
        // ),
        //左侧组件
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: GFAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
          ),
        ),
        //右侧组件
        actions: const [
          Icon(
            Icons.sports_esports_outlined,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.email_outlined,
          ),
          SizedBox(
            width: 15,
          ),
        ],
        backgroundColor: Colors.white,
        //底部按钮组件
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 40),
          child: GFTabBar(
            tabBarColor: Colors.white,
            labelColor: const Color.fromARGB(255, 254, 103, 188),
            unselectedLabelColor: Colors.black,
            indicatorColor: const Color.fromARGB(255, 254, 103, 188),
            indicatorWeight: 5,
            tabBarHeight: 40.0,
            length: 5,
            controller: controller.tabController,
            tabs: const [
              Tab(
                text: '直播',
              ),
              Tab(
                text: '推荐',
              ),
              Tab(
                text: '热门',
              ),
              Tab(
                text: '追番',
              ),
              Tab(
                text: '影视',
              ),
            ],
          ),
        ),
        //z轴
        elevation: 30,
        //定义形状
        shape: Border.all(
          color: Colors.black,
          width: 1,
        ),
        //图标的样式
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 254, 103, 188),
        ),
        //右侧图标的样式，不设置就和iconTheme一样。
        actionsIconTheme: const IconThemeData(
          color: Color.fromARGB(255, 254, 103, 188),
        ),
        //定义文字样式
        textTheme: TextTheme(),
        //充填导航来高度
        primary: true,
        //标题是否居中
        centerTitle: true,
        //title的间距
        titleSpacing: 30,
        //透明度
        toolbarOpacity: 1,
        //底部按钮的透明度
        bottomOpacity: 1,
        //是否显示搜索框，不设置title时生效
        searchBar: true,
        searchHintText: '搜索',
        //搜索框文字样式
        searchHintStyle: const TextStyle(
          fontSize: 22,
        ),
        //搜索框主体颜色，会影响搜索框的边线，按钮等的颜色
        searchBarColorTheme: Colors.blue,
        //搜索框输入后的文字样式
        searchTextStyle: const TextStyle(
          color: Colors.pink,
        ),
        //搜索款的controller
        searchController: TextEditingController(),
        //搜索框点击
        onTap: () {
          print('搜索框点击了');
        },
        onChanged: (str) {
          print('搜索框改变了:$str');
        },
        onSubmitted: (str) {
          print('搜索框提交了:$str');
        },
      ),
      body: SafeArea(
        child: GFButton(
          onPressed: () {
            Navigator.pop(context);
          },
          text: "返回",
        ),
      ),
    );
  }
}

class AppBarPageController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
