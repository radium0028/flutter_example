// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class BasicPage extends StatefulWidget {
  const BasicPage({Key? key}) : super(key: key);

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<BasicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              GFIconButton(
                onPressed: () {},
                icon: Icon(Icons.facebook),
              ),
              GFButton(
                onPressed: () {
                  GFToast.showToast(
                    'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
                    context,
                  );
                },
                text: "按钮",
                shape: GFButtonShape.pills,
                type: GFButtonType.transparent,
                color: GFColors.SECONDARY,
                icon: Icon(Icons.add, color: GFColors.WHITE),
                size: GFSize.SMALL,
              ),
              GFButton(
                onPressed: () {},
                text: "按钮",
                color: GFColors.SECONDARY,
                icon: Icon(Icons.add, color: GFColors.WHITE),
                size: GFSize.LARGE,
              ),
              GFIconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              ),
              GFIconBadge(
                  child: GFButton(
                    onPressed: () {},
                    text: "按钮",
                    color: GFColors.SECONDARY,
                    icon: Icon(Icons.add, color: GFColors.WHITE),
                    size: GFSize.LARGE,
                  ),
                  counterChild: GFBadge(
                    color: GFColors.DANGER,
                    size: GFSize.SMALL,
                    child: Text("1"),
                  )),
              GFBorder(
                radius: Radius.circular(5),
                type: GFBorderType.rect,
                child: Text("sss"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
