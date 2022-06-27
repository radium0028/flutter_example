// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class TabPage extends StatefulWidget {
  TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

//如果只有一个tab，可以实现SingleTickerProviderStateMixin。
//如果有多个，则需要实现TickerProviderStateMixin。
class _TabPageState extends State<TabPage> with TickerProviderStateMixin {
  //设置tabController
  late TabController tabController;
  late TabController tabControllerSmall;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 7, vsync: this);
    tabControllerSmall = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    tabControllerSmall.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabPage'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              //使用GFTabs，组合GFTab和GFView使用。
              GFTabs(
                length: 3,
                initialIndex: 1,
                height: 200,
                tabs: const [
                  Tab(text: "tab1"),
                  Tab(text: "tab2"),
                  Tab(text: "tab3"),
                ],
                tabBarView: GFTabBarView(
                  controller: tabControllerSmall,
                  children: [
                    Container(color: Colors.teal),
                    Container(color: Colors.red),
                    Container(color: Colors.black45),
                  ],
                ),
                controller: tabControllerSmall,
              ),
              const Divider(),
              //另一种段落样式的tab
              GFSegmentTabs(
                tabController: tabControllerSmall,
                length: 3,
                tabs: const [
                  Text("Tab1"),
                  Text("Tab2"),
                  Text("Tab3"),
                ],
              ),
              const Divider(),
              GFTabBar(
                //选项数量，与tabs的长度和TabController的长度一致。
                length: 7,
                //tabController
                controller: tabController,
                //组件内容
                tabs: const [
                  Tab(
                    icon: Icon(Icons.directions_bike),
                    child: Text(
                      "Tab1",
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.directions_bus),
                    child: Text(
                      "Tab2",
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.directions_railway),
                    child: Text(
                      "Tab3",
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.directions_boat),
                    child: Text(
                      "Tab4",
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.directions_car),
                    child: Text(
                      "Tab5",
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.directions_ferry),
                    child: Text(
                      "Tab6",
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.directions_run),
                    child: Text(
                      "Tab6",
                    ),
                  ),
                ],
                //是否可以滚动
                isScrollable: true,
                //高度
                tabBarHeight: 100.0,
                //颜色
                tabBarColor: Colors.orange,
                //下横线的颜色
                indicatorColor: Colors.red,
                //下横线的厚度
                indicatorWeight: 20.0,
                //下横线两侧的内边距
                indicatorPadding: const EdgeInsets.all(5.0),
                //下横线更加label还是根据tab计算大小
                indicatorSize: TabBarIndicatorSize.tab,
                // 选中的标签颜色
                // 未选中的颜色是这个颜色70%透明度，如果使用了unselectedLabelColor，则根据unselectedLabelColor属性颜色。
                labelColor: Colors.red,
                //标签文字样式
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                // 未选中的颜色
                unselectedLabelColor: Colors.white,
                //tab的形状
                shape: StadiumBorder(),
              ),
              //配合GFTabBarView实现切换
              GFTabBarView(
                height: 100.0,
                children: [
                  Container(color: Colors.amber),
                  Container(color: Colors.blue),
                  Container(color: Colors.cyan),
                  Container(color: Colors.yellow),
                  Container(color: Colors.teal),
                  Container(color: Colors.red),
                  Container(color: Colors.black45),
                ],
                controller: tabController,
              ),
            ],
          ),
        ),
      ),
      //可以放在页面底部做切换
      bottomNavigationBar: GFTabBar(
        length: 3,
        tabs: const [
          Tab(text: 'Tab1'),
          Tab(text: 'Tab2'),
          Tab(text: 'Tab3'),
        ],
        controller: tabControllerSmall,
      ),
    );
  }
}
