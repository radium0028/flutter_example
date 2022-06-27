import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class CarouselPage extends GetView {
  CarouselPage({Key? key}) : super(key: key);

  final List<String> imageList = [
    "assets/images/cake1.jpg",
    "assets/images/cake2.jpg",
    "assets/images/cake3.jpg",
    "assets/images/cake4.jpg",
  ];

  final List<String> networkImageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carousel 演示')),
      body: SafeArea(
        child: Wrap(
          children: [
            GFCarousel(
              height: 300,
              items: [
                Image.asset('assets/images/cake1.jpg'),
                Image.asset('assets/images/cake2.jpg'),
                Image.asset('assets/images/cake3.jpg'),
                Image.asset('assets/images/cake4.jpg'),
              ],
            ),
            GFCarousel(
              height: 300,
              items: [
                Image.asset('assets/images/cake1.jpg'),
                Image.asset('assets/images/cake2.jpg'),
                Image.asset('assets/images/cake3.jpg'),
                Image.asset('assets/images/cake4.jpg'),
              ],
              //自动播放
              autoPlay: true,
              //自动播放的动画时间
              autoPlayAnimationDuration: const Duration(milliseconds: 2000),
            ),
          ],
        ),
      ),
    );
  }
}
