import 'package:flutter/material.dart';
import 'package:flutter_example/global_widgets/title.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class CheckboxListPage extends GetView<CheckboxListController> {
  const CheckboxListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CheckboxListController());
    return Scaffold(
      appBar: AppBar(title: const Text('CheckboxListTilePage')),
      body: SafeArea(
        child: Obx(
          (() => SingleChildScrollView(
                child: Column(
                  children: [
                    const MyTitle("复选框列表标题"),
                    GFCheckboxListTile(
                      //这些是Checkbox就有的属性
                      //复选框的大小
                      size: GFSize.LARGE,
                      //复选框选中时的背景色
                      activeBgColor: Colors.green,
                      //复选框选中的图标
                      activeIcon: const Icon(
                        Icons.check,
                        size: 15,
                        color: Colors.white,
                      ),
                      //复选框的类型
                      type: GFCheckboxType.circle,
                      //改变时间
                      onChanged: (val) {
                        controller.check1Value.value = val;
                      },
                      //是否被选中
                      value: controller.check1Value.value,
                      //=======下边这些是GFCheckboxListTile新增的属性
                      //主标题
                      titleText: '主标题',
                      //主标题组件，titleText为空时生效
                      title: const Text('主标题'),
                      //副标题
                      subTitleText: '副标题',
                      //副标题组件，subTitleText为空时生效
                      subTitle: const Text('副标题'),
                      //复选框的位置
                      position: GFPosition.start,
                      //图标，如果position=end，会占用图标的位置。需要使用avatar属性替换。
                      icon: const Icon(
                        Icons.apartment,
                        size: 35,
                        color: Colors.white,
                      ),
                      //背景色
                      color: Colors.red,
                      //头像，position=end时放在前边，position=start时就放到后边
                      avatar: const GFAvatar(
                        backgroundImage: AssetImage('assets/avatar.png'),
                      ),
                      //描述信息
                      description: const Text('描述信息'),
                      //外边距
                      margin: const EdgeInsets.all(10),
                      //内边距
                      padding: const EdgeInsets.all(10),
                      //列表的选中状态，通长和value的值相同。
                      selected: false,
                    ),
                    GFCheckboxListTile(
                      titleText: '主标题',
                      subTitleText: '副标题',
                      avatar: const GFAvatar(
                        backgroundImage: AssetImage('assets/avatar.png'),
                      ),
                      size: 25,
                      activeBgColor: GFColors.SECONDARY,
                      activeIcon: const Icon(
                        Icons.check,
                        size: 15,
                        color: Colors.white,
                      ),
                      type: GFCheckboxType.square,
                      onChanged: (val) {
                        controller.check2Value.value = val;
                      },
                      value: controller.check2Value.value,
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

class CheckboxListController extends GetxController {
  var check1Value = true.obs;
  var check2Value = false.obs;
}
