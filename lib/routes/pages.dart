import 'package:flutter_example/pages/getwidget/typography.dart';
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
      children: [
        GetPage(
          name: Routes.GETWIDGET_BASIC,
          page: () => const BasicPage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_BUTTON,
          page: () => ButtonPage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_BADGE,
          page: () => BadgePage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_AVATAR,
          page: () => AvatarPage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_BORDER,
          page: () => const BorderPage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_IMAGE,
          page: () => const ImagePage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_CARD,
          page: () => const CardPage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_TILE,
          page: () => const TilePage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_TAB,
          page: () => TabPage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_FLOATING,
          page: () => const FloatingPage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_TOAST,
          page: () => const ToastPage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_TOGGLE,
          page: () => const TogglePage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_CAROUSEL,
          page: () => CarouselPage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_ACCORDION,
          page: () => AccordionPage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_TYPOGRAPHY,
          page: () => const TypographyPage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_DRAWER,
          page: () => const DrawerPage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_RATING,
          page: () => const RatingPage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_ALERT,
          page: () => const AlertPage(),
        ),
        GetPage(
          name: Routes.GETWIDGET_APPBAR,
          page: () => const AppBarPage(),
        ),
      ],
    ),
  ];
}
