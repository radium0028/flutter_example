import 'package:flutter/material.dart';

class SafeAreaPage extends StatelessWidget {
  const SafeAreaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///通过left/top/right/bottom指定哪些方向不会被遮盖住，默认是全部。
      ///通过minimum可以指定最小的被遮盖的距离，默认是0。
      ///当设置Scaffold.resizeToAvoidBottomInsets: false时，此时如果屏幕中弹出键盘，界面内容会发生位移，可设置maintainBottomViewPadding=true解决此问题。
      body: SafeArea(
        maintainBottomViewPadding: true,
        minimum: const EdgeInsets.all(10.0),
        left: false,
        child: Text("abcdefg" * 500),
      ),
    );
  }
}
