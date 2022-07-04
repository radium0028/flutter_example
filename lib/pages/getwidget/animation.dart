import 'package:flutter/material.dart';
import 'package:flutter_example/global_widgets/title.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class AnimationPage extends GetView<GetWidgetAnimationController> {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(GetWidgetAnimationController());

    ///动画类型枚举：GFAnimationType
    ///   align：排列
    ///   size：大小
    ///   container,
    ///   rotateTransition：旋转,
    ///   scaleTransition：放大缩小,
    ///   slideTransition：滑动,
    ///   textStyle：文字样式,

    return Scaffold(
        appBar: AppBar(title: const Text('AnimationPage')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const MyTitle('旋转'),
              GestureDetector(
                onTap: () {
                  controller.animationController!.repeat();
                },
                child: GFAnimation(
                  //旋转动画
                  turnsAnimation: controller.animation,
                  //控制器
                  controller: controller.animationController,
                  //动画类型
                  type: GFAnimationType.rotateTransition,
                  //对齐
                  alignment: Alignment.center,
                  //动画内容
                  child: Image.asset(
                    'assets/images/Rotation.png',
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              const Divider(),
              const SizedBox(height: 5),
              const MyTitle("放大"),
              GestureDetector(
                onTap: () {
                  controller.animationController!.repeat();
                },
                child: GFAnimation(
                  scaleAnimation: controller.animation,
                  controller: controller.animationController,
                  //动画类型
                  type: GFAnimationType.scaleTransition,
                  child: Image.asset(
                    'assets/images/scaling.png',
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              const Divider(),
              const SizedBox(height: 5),
              const MyTitle("排列"),
              GFAnimation(
                duration: const Duration(seconds: 2),
                alignment: Alignment.centerLeft,
                type: GFAnimationType.align,
                child: Image.asset(
                  'assets/images/allign.png',
                  width: 80,
                  height: 80,
                ),
              ),
              const Divider(),
              const SizedBox(height: 5),
              const MyTitle('滑动'),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: GFAnimation(
                  controller: controller.animationController,
                  slidePosition: controller.offsetAnimation,
                  type: GFAnimationType.slideTransition,
                  child: Image.asset(
                    'assets/images/slide.png',
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              const Divider(),
              const SizedBox(height: 5),
              const MyTitle('大小'),
              Obx(
                () => GFAnimation(
                  onTap: () {
                    controller.selected.value = !controller.selected.value;
                  },
                  width: controller.selected.value ? 100 : 50,
                  height: controller.selected.value ? 100 : 50,
                  type: GFAnimationType.size,
                  controller: controller.animationController,
                  child: Image.asset(
                    'assets/images/size.png',
                  ),
                ),
              ),
              const Divider(),
              const SizedBox(height: 5),
              const MyTitle('文本样式'),
              Obx(() => GFAnimation(
                    onTap: () {
                      controller.fontSize.value =
                          controller.first.value ? 60.0 : 30.0;
                      controller.color.value =
                          controller.first.value ? Colors.blue : Colors.red;
                      controller.first.value = !controller.first.value;
                    },
                    color: controller.color.value,
                    fontSize: controller.fontSize.value,
                    type: GFAnimationType.textStyle,
                    child: Center(child: Text('Get Widget')),
                  )),
              const Divider(),
              const SizedBox(height: 5),
              const MyTitle('Container'),
              GFAnimation(
                width: 50,
                changedWidth: 100,
                height: 50,
                changedHeight: 100,
                activeColor: Colors.transparent,
                color: Colors.transparent,
                fontSize: controller.fontSize.value,
                type: GFAnimationType.container,
                child: Image.asset(
                  'assets/images/slide.png',
                  width: 80,
                  height: 80,
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}

class GetWidgetAnimationController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var selected = false.obs;
  AnimationController? animationController;
  Animation<double>? animation;
  var first = true.obs;
  var fontSize = 30.0.obs;
  var color = GFColors.SUCCESS.obs;

  Animation<Offset>? offsetAnimation;

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    animation = CurvedAnimation(
        parent: animationController!, curve: Curves.bounceInOut);
    animationController!.repeat();

    offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.5, 0),
    ).animate(CurvedAnimation(
      parent: animationController!,
      curve: Curves.linear,
    ));
  }
}
