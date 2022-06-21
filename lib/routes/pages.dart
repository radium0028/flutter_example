import 'package:flutter_example/pages/index.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const MyHomePage(),
    ),
    GetPage(
      name: Routes.INTL,
      page: () => const IntlPage(),
      children: [
        GetPage(
          name: Routes.INTL_FORMAT,
          page: () => const FormatPage(),
        )
      ],
    ),
    GetPage(
      name: Routes.SENTRY,
      page: () => const SentryPage(),
    ),
    GetPage(
      name: Routes.XUPDATE,
      page: () => const XUpdatePage(),
    ),
    GetPage(
      name: Routes.SHARED,
      page: () => const SharedPage(),
      children: [
        GetPage(
          name: Routes.SHARED_READ,
          page: () => const SharedReadView(),
        ),
        GetPage(
          name: Routes.SHARED_SERVICE,
          page: () => const SharedServiceExample(),
        ),
      ],
    ),
    GetPage(
      name: Routes.GETWIDGET,
      page: () => const GetWidgetPage(),
    ),
  ];
}
