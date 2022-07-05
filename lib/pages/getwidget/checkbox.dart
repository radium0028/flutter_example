import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_example/global_widgets/title.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class CheckBoxPage extends GetView<CheckBoxController> {
  const CheckBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CheckBoxController());
    return Scaffold(
        appBar: AppBar(title: const Text('CheckBoxPage')),
        body: Obx(() => SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                children: [
                  const MyTitle('默认type'),
                  GFCard(
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GFCheckbox(
                          size: GFSize.SMALL,
                          activeBgColor: GFColors.DANGER,
                          onChanged: (val) {
                            controller.check1Value.value = val;
                          },
                          value: controller.check1Value.value,
                          inactiveIcon: null,
                        ),
                        GFCheckbox(
                          activeBgColor: GFColors.SECONDARY,
                          onChanged: (val) {
                            controller.check2Value.value = val;
                          },
                          value: controller.check2Value.value,
                          inactiveIcon: null,
                        ),
                        GFCheckbox(
                          size: GFSize.LARGE,
                          activeBgColor: GFColors.SUCCESS,
                          onChanged: (val) {
                            controller.check3Value.value = val;
                          },
                          value: controller.check3Value.value,
                          inactiveIcon: null,
                        ),
                      ],
                    ),
                  ),
                  const MyTitle("矩形的按钮"),
                  GFCard(
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GFCheckbox(
                          size: GFSize.SMALL,
                          activeBgColor: GFColors.DANGER,
                          type: GFCheckboxType.square,
                          onChanged: (val) {
                            controller.check4Value.value = val;
                          },
                          value: controller.check4Value.value,
                          inactiveIcon: null,
                        ),
                        GFCheckbox(
                          type: GFCheckboxType.square,
                          activeBgColor: GFColors.SECONDARY,
                          onChanged: (val) {
                            controller.check5Value.value = val;
                          },
                          value: controller.check5Value.value,
                          inactiveIcon: null,
                        ),
                        GFCheckbox(
                          size: GFSize.LARGE,
                          activeBgColor: GFColors.SUCCESS,
                          type: GFCheckboxType.square,
                          onChanged: (val) {
                            controller.check6Value.value = val;
                          },
                          value: controller.check6Value.value,
                          inactiveIcon: null,
                        ),
                      ],
                    ),
                  ),
                  const MyTitle("圆形的按钮"),
                  GFCard(
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GFCheckbox(
                          size: GFSize.SMALL,
                          activeBgColor: GFColors.DANGER,
                          type: GFCheckboxType.circle,
                          onChanged: (val) {
                            controller.check7Value.value = val;
                          },
                          value: controller.check7Value.value,
                          inactiveIcon: null,
                        ),
                        GFCheckbox(
                          type: GFCheckboxType.circle,
                          activeBgColor: GFColors.SECONDARY,
                          onChanged: (val) {
                            controller.check8Value.value = val;
                          },
                          value: controller.check8Value.value,
                          inactiveIcon: null,
                        ),
                        GFCheckbox(
                          size: GFSize.LARGE,
                          activeBgColor: GFColors.SUCCESS,
                          type: GFCheckboxType.circle,
                          onChanged: (val) {
                            controller.check9Value.value = val;
                          },
                          value: controller.check9Value.value,
                          inactiveIcon: null,
                        ),
                      ],
                    ),
                  ),
                  const MyTitle("自定义样式"),
                  GFCard(
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GFCheckbox(
                          size: GFSize.SMALL,
                          type: GFCheckboxType.custom,
                          onChanged: (val) {
                            controller.check10Value.value = val;
                          },
                          value: controller.check10Value.value,
                          inactiveIcon: null,
                        ),
                        GFCheckbox(
                          type: GFCheckboxType.square,
                          activeBgColor: GFColors.SECONDARY,
                          activeIcon: Icon(Icons.sentiment_satisfied),
                          onChanged: (val) {
                            controller.check11Value.value = val;
                          },
                          value: controller.check11Value.value,
                          inactiveIcon: Icon(Icons.sentiment_dissatisfied),
                        ),
                        GFCheckbox(
                          size: GFSize.MEDIUM,
//            activeBgColor: GFColors.,
                          type: GFCheckboxType.custom,
                          onChanged: (val) {
                            controller.check12Value.value = val;
                          },
                          value: controller.check12Value.value,
                          customBgColor: GFColors.INFO,
                          inactiveIcon: null,
                        ),
                      ],
                    ),
                  ),
                  const MyTitle("属性演示"),
                  GFCheckbox(
                    //值变化时的回调
                    onChanged: (val) {
                      controller.check13Value.value = val;
                    },
                    //选中状态
                    value: controller.check13Value.value,
                    //类型，GFCheckboxType修饰：圆角，矩形，圆形，自定义
                    type: GFCheckboxType.basic,
                    //大小，GFSize修饰：小，中，大，可以直接写数字
                    size: 100,
                    //选中时的颜色
                    activeBgColor: Colors.red,
                    //未选中时的颜色
                    inactiveBgColor: Colors.orange,
                    //选中时边框的颜色
                    activeBorderColor: Colors.black,
                    //未选中时边框的颜色
                    inactiveBorderColor: Colors.green,
                    //选中时图标
                    activeIcon: const Icon(
                      Icons.ac_unit,
                      size: 100,
                      color: Colors.cyan,
                    ),
                    //未选中时图标
                    inactiveIcon: const Icon(
                      Icons.beach_access,
                      size: 100,
                      color: Colors.blue,
                    ),
                    //自定义type时的背景色
                    customBgColor: Color.fromARGB(255, 15, 164, 5),
                    //自动焦点
                    autofocus: false,
                    //焦点元素
                    focusNode: null,
                  )
                ],
              )),
            )));
  }
}

class CheckBoxController extends GetxController {
  var check1Value = true.obs;
  var check2Value = true.obs;
  var check3Value = true.obs;
  var check4Value = true.obs;
  var check5Value = true.obs;
  var check6Value = true.obs;
  var check7Value = true.obs;
  var check8Value = true.obs;
  var check9Value = true.obs;
  var check10Value = true.obs;
  var check11Value = true.obs;
  var check12Value = true.obs;
  var check13Value = true.obs;
  var check14Value = true.obs;
  var check15Value = true.obs;
  var check16Value = true.obs;
  var check17Value = true.obs;
}
