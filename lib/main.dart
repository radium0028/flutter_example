import 'package:flutter/material.dart';
import 'package:flutter_example/generated/l10n.dart';
import 'package:flutter_example/routes/pages.dart';
import 'package:flutter_example/util/shared_service.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/route_manager.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  // 初始化插件前需调用初始化代码 runApp()函数之前
  WidgetsFlutterBinding.ensureInitialized();
  //初始化SharedPreferences
  await SharedService.getInstance();

  //使用sentry监控所有异常
  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://dad177183f8a4805ad3188a8e4836807@o1274663.ingest.sentry.io/6469733';
    },
    // Init your App.
    appRunner: () => runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.INITIAL,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        scaffoldBackgroundColor: const Color.fromARGB(250, 250, 250, 250),
      ),
      // 国际化配置
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate
      ],
      // 将en设置为第一项,没有适配语言时,英语为首选项
      supportedLocales: [
        const Locale('en', ''),
        ...S.delegate.supportedLocales
      ],
    )),
  );
}
