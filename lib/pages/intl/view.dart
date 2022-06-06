import 'package:flutter/material.dart';
import 'package:flutter_example/generated/l10n.dart';

class IntlPage extends StatefulWidget {
  const IntlPage({Key? key}) : super(key: key);

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<IntlPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intl 演示'),
      ),
      body: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //语言包里的词条
              Text(S.of(context).name),
              Text(S.of(context).age),
              Text(S.of(context).input("国家")),
              ElevatedButton(
                onPressed: () {
                  print("手动切换中文");
                  setState(
                    () {
                      //手动切换中文
                      S.load(const Locale("zh", 'CN'));
                    },
                  );
                },
                child: const Text('切换中文'),
              ),
              ElevatedButton(
                onPressed: () {
                  print("手动切换英文");
                  setState(
                    () {
                      //手动切换英文
                      S.load(const Locale('en'));
                    },
                  );
                },
                child: const Text('切换EN'),
              ),
              const Divider(),
              Text(S.of(context).getMessageTips(0)),
              Text(S.of(context).getMessageTips(1)),
              Text(S.of(context).getMessageTips(4)),
              Text(S.of(context).input("country")),
              Text(S.of(context).todo("say")),
              Text(S.of(context).gender("male", "Jones")),
              Text(S.of(context).gender("female", "Jones")),
              Text(S.of(context).gender("other", "Jones")),
              Text(S.of(context).select("option1", "Germany")),
              Text(S.of(context).select("option2", "U.S.A")),
              Text(S.of(context).select("", "china")),
            ],
          ),
        ),
      ),
    );
  }
}
