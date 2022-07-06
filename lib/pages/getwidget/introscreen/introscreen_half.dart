import 'package:flutter/material.dart';
import 'package:flutter_example/routes/pages.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class IntroScreenHalfPage extends GetView<IntroScreenHalfController> {
  const IntroScreenHalfPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(IntroScreenHalfController());
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: GFIntroScreen(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.9,
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Colors.grey[200]!),
          slides: slides(context)!,
          pageController: controller.pageController,
          introScreenBottomNavigationBar: GFIntroScreenBottomNavigationBar(
            pageController: controller.pageController,
            pageCount: controller.slideList!.length,
            currentIndex: controller.initialPage,
            skipButton: GFButton(
              onPressed: () {
                Get.offNamed(Routes.GETWIDGET + Routes.GETWIDGET_INTRODUCTION);
              },
              child: const Text('跳过'),
            ),
            doneButton: GFButton(
              onPressed: () {
                Get.offNamed(Routes.GETWIDGET + Routes.GETWIDGET_INTRODUCTION);
              },
              child: const Text('完成'),
            ),
            backButtonText: '上一步',
            forwardButtonText: '下一步',
            navigationBarHeight: 50,
            navigationBarWidth: 300,
            navigationBarShape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.blue, width: 4),
              borderRadius: BorderRadius.circular(60),
            ),
            navigationBarColor: Colors.white,
            showDivider: false,
            dotHeight: 10,
            dotWidth: 16,
            dotShape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey[200]!, width: 1),
                borderRadius: BorderRadius.circular(5)),
            inactiveColor: Colors.grey[200]!,
            activeColor: GFColors.SUCCESS,
            dotMargin: const EdgeInsets.symmetric(horizontal: 6),
            showPagination: true,
          ),
          currentIndex: 0,
          pageCount: 0,
        ),
      ),
    );
  }

  List<Widget>? slides(BuildContext context) {
    controller.slideList = [
      SizedBox(
        // color: Colors.teal,
        child: GFImageOverlay(
          width: MediaQuery.of(context).size.width,
// margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),

          color: Colors.orange,
          image: const AssetImage('assets/images/i1.png'),
          boxFit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20),
                child: Text(
                  'Welcome Back!',
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
            // color: Colors.blue,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            image: DecorationImage(
              image: const AssetImage('assets/images/i2.png'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            image: DecorationImage(
              image: const AssetImage('assets/images/i3.png'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            // color: Colors.teal,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            image: DecorationImage(
              image: const AssetImage('assets/images/i4.png'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
    ];
    return controller.slideList;
  }
}

class IntroScreenHalfController extends GetxController {
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
