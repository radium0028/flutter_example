import 'package:flutter/material.dart';
import 'package:flutter_example/routes/pages.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class IntroScreenFullPage extends GetView<IntroScreenFullController> {
  const IntroScreenFullPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(IntroScreenFullController());
    return SafeArea(
      child: GFIntroScreen(
        //背景色
        color: Colors.blueGrey,
        //分页数据
        slides: slides(context)!,
        //控制器
        pageController: controller.pageController,
        //当前索引
        currentIndex: 0,
        //分页数量
        pageCount: 5,
        //底部导航按钮
        introScreenBottomNavigationBar: GFIntroScreenBottomNavigationBar(
          pageController: controller.pageController,
          pageCount: controller.slideList!.length,
          currentIndex: controller.initialPage,
          //上一页事件
          onForwardButtonTap: () {
            controller.pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.linear);
          },
          //下一页数据
          onBackButtonTap: () {
            controller.pageController.previousPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.linear);
          },
          onDoneTap: () {
            Get.offNamed(Routes.GETWIDGET + Routes.GETWIDGET_INTRODUCTION);
          },
          onSkipTap: () {
            Get.offNamed(Routes.GETWIDGET + Routes.GETWIDGET_INTRODUCTION);
          },
          //导航栏背景色
          navigationBarColor: Colors.white,
          //是否显示分割线
          showDivider: false,
          //未激活的圆点颜色
          inactiveColor: Colors.grey[200]!,
          //激活的圆点颜色
          activeColor: GFColors.SUCCESS,
          backButtonText: '上一页',
          forwardButtonText: '下一页',
          doneButtonText: '完成',
          skipButtonText: '跳过',
        ),
      ),
    );
  }

  ///构造分页数据组件
  List<Widget>? slides(BuildContext context) {
    controller.slideList = [
      SizedBox(
        child: GFImageOverlay(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16),
          color: Colors.orange,
          image: const AssetImage('assets/images/i1.png'),
          boxFit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
          borderRadius: BorderRadius.circular(5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 70.0, left: 20),
                child: Text(
                  'Welcome!',
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: const AssetImage('assets/images/i2.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            // color: Colors.tealAccent,
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: const AssetImage('assets/images/i3.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            // color: Colors.tealAccent,
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: const AssetImage('assets/images/i4.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
    ];
    return controller.slideList;
  }
}

class IntroScreenFullController extends GetxController {
  late PageController pageController;
  List<Widget>? slideList;
  //默认展示第几页，索引从0开始。
  late int initialPage;

  @override
  void onInit() {
    super.onInit();
    initialPage = 0;
    pageController = PageController(initialPage: initialPage);
  }
}
