import 'package:flutter/material.dart';
import 'package:flutter_example/global_widgets/link_button.dart';
import 'package:flutter_example/routes/pages.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
      ),
      body: Center(
        child: Column(
          children: [
            LinkButtonWidget('Sentry', Routes.SENTRY),
            LinkButtonWidget('Intl', Routes.INTL),
            LinkButtonWidget('Intl-format', Routes.INTL + Routes.INTL_FORMAT),
            LinkButtonWidget('Xupdate', Routes.XUPDATE),
            LinkButtonWidget('Shared', Routes.SHARED),
            LinkButtonWidget('GetWidget', Routes.GETWIDGET),
            LinkButtonWidget(
                "FlutterEasyRefresh-V2", Routes.FLUTTER_EASYREFRESH),
            LinkButtonWidget(
                "FlutterEasyRefresh-V3", Routes.FLUTTER_EASYREFRESH_V3),
          ],
        ),
      ),
    );
  }
}
