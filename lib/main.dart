import 'package:flutter/material.dart';
import 'package:flutter_example/generated/l10n.dart';
import 'package:flutter_example/pages/intl/format_page.dart';
import 'package:flutter_example/pages/xupdate/view.dart';
import 'package:flutter_example/util/shared_service.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'pages/intl/view.dart';
import 'pages/sentry/view.dart';
import 'pages/shared_preferences/view.dart';

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
    appRunner: () => runApp(const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                //跳转到SentryPage页面
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SentryPage(),
                  ),
                );
              },
              child: const Text('Sndtry'),
            ),
            ElevatedButton(
              onPressed: () {
                //跳转到IntlPage页面
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const IntlPage(),
                  ),
                );
              },
              child: const Text('Intl'),
            ),
            ElevatedButton(
              onPressed: () {
                //跳转到XUpdatePage页面
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const XUpdatePage(),
                  ),
                );
              },
              child: const Text('XUpdate'),
            ),
            ElevatedButton(
              onPressed: () {
                //跳转到FormatPage页面
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FormatPage(),
                  ),
                );
              },
              child: const Text('Intl Format'),
            ),
            ElevatedButton(
                onPressed: () {
                  //跳转到SharedPreferences页面
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SharedPage(),
                    ),
                  );
                },
                child: const Text("SharedPreferences")),
          ],
        ),
      ),
    );
  }
}
