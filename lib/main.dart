import 'package:flutter/material.dart';
import 'package:flutter_example/sentry/view.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  //使用sentry监控所有异常
  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://dad177183f8a4805ad3188a8e4836807@o1274663.ingest.sentry.io/6469733';
    },
    // Init your App.
    appRunner: () => runApp(MyApp()),
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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
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
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SentryPage(),
                ),
              );
            },
            child: const Text('Intl'),
          ),
        ],
      ),
    );
  }
}
