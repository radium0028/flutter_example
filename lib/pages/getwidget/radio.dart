import 'package:flutter/material.dart';
import 'package:flutter_example/global_widgets/title.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class RadioPage extends GetView<RadioController> {
  const RadioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RadioController());
    return Scaffold(
      appBar: AppBar(title: const Text('Radio Page')),
      body: Obx(
        () => SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const MyTitle('默认type'),
                GFCard(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GFRadio(
                        size: GFSize.SMALL,
                        radioColor: GFColors.DANGER,
                        onChanged: (val) {
                          controller.radioGroup1Value.value = val as int;
                        },
                        value: 1,
                        groupValue: controller.radioGroup1Value.value,
                        inactiveIcon: null,
                      ),
                      GFRadio(
                        radioColor: GFColors.SECONDARY,
                        onChanged: (val) {
                          controller.radioGroup1Value.value = val as int;
                        },
                        value: 2,
                        groupValue: controller.radioGroup1Value.value,
                        inactiveIcon: null,
                      ),
                      GFRadio(
                        size: GFSize.LARGE,
                        radioColor: GFColors.SUCCESS,
                        onChanged: (val) {
                          controller.radioGroup1Value.value = val as int;
                        },
                        value: 3,
                        groupValue: controller.radioGroup1Value.value,
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
                      GFRadio(
                        size: GFSize.SMALL,
                        radioColor: GFColors.DANGER,
                        type: GFRadioType.square,
                        onChanged: (val) {
                          controller.radioGroup2Value.value = val as int;
                        },
                        value: 1,
                        groupValue: controller.radioGroup2Value.value,
                        inactiveIcon: null,
                      ),
                      GFRadio(
                        type: GFRadioType.square,
                        radioColor: GFColors.SECONDARY,
                        onChanged: (val) {
                          controller.radioGroup2Value.value = val as int;
                        },
                        value: 2,
                        groupValue: controller.radioGroup2Value.value,
                        inactiveIcon: null,
                      ),
                      GFRadio(
                        size: GFSize.LARGE,
                        radioColor: GFColors.SUCCESS,
                        type: GFRadioType.square,
                        onChanged: (val) {
                          controller.radioGroup2Value.value = val as int;
                        },
                        value: 3,
                        groupValue: controller.radioGroup2Value.value,
                        inactiveIcon: null,
                      ),
                    ],
                  ),
                ),
                const MyTitle("圆角的按钮,radioColor失效"),
                GFCard(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GFRadio(
                        size: GFSize.SMALL,
                        radioColor: GFColors.DANGER,
                        type: GFRadioType.blunt,
                        onChanged: (val) {
                          controller.radioGroup3Value.value = val as int;
                        },
                        value: 1,
                        groupValue: controller.radioGroup3Value.value,
                      ),
                      GFRadio(
                        type: GFRadioType.blunt,
                        radioColor: GFColors.SECONDARY,
                        onChanged: (val) {
                          controller.radioGroup3Value.value = val as int;
                        },
                        value: 2,
                        groupValue: controller.radioGroup3Value.value,
                      ),
                      GFRadio(
                        size: GFSize.LARGE,
                        radioColor: GFColors.SUCCESS,
                        type: GFRadioType.blunt,
                        onChanged: (val) {
                          controller.radioGroup3Value.value = val as int;
                        },
                        value: 3,
                        groupValue: controller.radioGroup3Value.value,
                      ),
                    ],
                  ),
                ),
                const MyTitle('自定义样式'),
                GFCard(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GFRadio(
                        type: GFRadioType.custom,
                        activeIcon: Icon(Icons.check),
                        radioColor: Colors.red,
                        size: GFSize.LARGE,
                        activeBgColor: GFColors.SUCCESS,
                        inactiveBorderColor: GFColors.DARK,
                        activeBorderColor: GFColors.SUCCESS,
                        value: 12,
                        groupValue: controller.radioGroup3Value.value,
                        onChanged: (dynamic val) {
                          controller.radioGroup3Value.value = val;
                        },
                      ),
                      GFRadio(
                        type: GFRadioType.custom,
                        activeIcon: const Icon(Icons.sentiment_satisfied),
                        size: GFSize.MEDIUM,
                        value: 13,
                        groupValue: controller.radioGroup3Value.value,
                        onChanged: (dynamic val) {
                          controller.radioGroup3Value.value = val;
                        },
                        inactiveIcon: const Icon(Icons.sentiment_dissatisfied),
                        customBgColor: GFColors.WARNING,
                        activeBgColor: GFColors.SUCCESS,
                        activeBorderColor: GFColors.SUCCESS,
                      ),
                      GFRadio(
                        type: GFRadioType.blunt,
                        size: GFSize.SMALL,
                        value: 14,
                        groupValue: controller.radioGroup3Value.value,
                        onChanged: (dynamic val) {
                          controller.radioGroup3Value.value = val;
                        },
                        inactiveIcon: null,
                        customBgColor: GFColors.SUCCESS,
                        activeBorderColor: GFColors.SUCCESS,
                      ),
                      GFRadio(
                        type: GFRadioType.blunt,
                        size: 25,
                        value: 15,
                        groupValue: controller.radioGroup3Value.value,
                        onChanged: (dynamic val) {
                          controller.radioGroup3Value.value = val;
                        },
                        inactiveIcon: null,
                        activeBorderColor: GFColors.SUCCESS,
                        customBgColor: GFColors.SUCCESS,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RadioController extends GetxController {
  var radioGroup1Value = 1.obs;
  var radioGroup2Value = 1.obs;
  var radioGroup3Value = 1.obs;
  var radioGroup4Value = 1.obs;
}
