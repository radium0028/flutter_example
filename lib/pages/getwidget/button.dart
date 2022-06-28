import 'package:flutter/material.dart';
import 'package:flutter_example/global_widgets/title.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class ButtonPage extends GetView {
  Widget button() {
    return SizedBox(
      child: Wrap(
        spacing: 10.0,
        children: [
          GFButton(
            onPressed: () {},
            text: "Primary",
            color: GFColors.PRIMARY,
          ),
          const GFButton(
            onPressed: null,
            text: "Primary",
            color: GFColors.PRIMARY,
          ),
          GFButton(
            onPressed: () {},
            text: "Secondary",
            color: GFColors.SECONDARY,
            buttonBoxShadow: true,
            boxShadow: const BoxShadow(
              blurRadius: 2.0,
              color: Colors.red,
              offset: Offset(0.0, 1.0),
            ),
          ),
          GFButton(
            onPressed: () {},
            text: "Success",
            color: GFColors.SUCCESS,
            elevation: 10.0,
          ),
          GFButton(
            onPressed: () {},
            text: "Waring",
            color: GFColors.WARNING,
            highlightElevation: 20.0,
          ),
          GFButton(
            onPressed: () {},
            text: "Danger",
            color: GFColors.DANGER,
          ),
          GFButton(
            onPressed: () {},
            text: "Info",
            color: GFColors.INFO,
          ),
          GFButton(
            onPressed: () {},
            text: "Light",
            color: GFColors.LIGHT,
          ),
          GFButton(
            onPressed: () {},
            text: "Dark",
            color: GFColors.DARK,
          ),
          GFButton(
            onPressed: () {},
            text: "Link",
            type: GFButtonType.transparent,
          ),
        ],
      ),
    );
  }

  Widget button1() {
    return SizedBox(
      child: Wrap(
        spacing: 10.0,
        children: [
          GFButton(
            onPressed: () {},
            text: "solid",
            type: GFButtonType.solid,
          ),
          GFButton(
            onPressed: () {},
            text: "outline",
            type: GFButtonType.outline,
          ),
          GFButton(
            onPressed: () {},
            text: "outline2x",
            type: GFButtonType.outline2x,
          ),
          GFButton(
            onPressed: () {},
            text: "transparent",
            type: GFButtonType.transparent,
          ),
        ],
      ),
    );
  }

  Widget button2() {
    return SizedBox(
      child: Wrap(
        spacing: 10.0,
        children: [
          GFButton(
            onPressed: () {},
            text: "standard",
            type: GFButtonType.solid,
            shape: GFButtonShape.standard,
          ),
          GFButton(
            onPressed: () {},
            text: "pills",
            type: GFButtonType.solid,
            shape: GFButtonShape.pills,
          ),
          GFButton(
            onPressed: () {},
            text: "square",
            type: GFButtonType.solid,
            shape: GFButtonShape.square,
          ),
        ],
      ),
    );
  }

  Widget button3() {
    return SizedBox(
      child: Wrap(
        spacing: 10.0,
        children: [
          GFButton(
            onPressed: () {},
            text: "默认",
            type: GFButtonType.solid,
            shape: GFButtonShape.standard,
          ),
          GFButton(
            onPressed: () {},
            text: "small",
            type: GFButtonType.solid,
            shape: GFButtonShape.standard,
            size: GFSize.SMALL,
          ),
          GFButton(
            onPressed: () {},
            text: "medium",
            type: GFButtonType.solid,
            shape: GFButtonShape.standard,
            size: GFSize.MEDIUM,
          ),
          GFButton(
            onPressed: () {},
            text: "large",
            type: GFButtonType.solid,
            shape: GFButtonShape.standard,
            size: GFSize.LARGE,
          ),
          GFButton(
            onPressed: () {},
            text: "fullWidthButton",
            type: GFButtonType.solid,
            shape: GFButtonShape.standard,
            fullWidthButton: true,
          ),
        ],
      ),
    );
  }

  Widget button4() {
    return SizedBox(
      child: Wrap(
        spacing: 10.0,
        children: [
          GFButton(
            position: GFPosition.start,
            onPressed: () {},
            text: "图标按钮",
            icon: const Icon(
              Icons.add,
            ),
          ),
          GFButton(
            position: GFPosition.end,
            onPressed: () {},
            text: "图标按钮",
            icon: const Icon(
              Icons.add,
            ),
          ),
          GFIconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
            padding: const EdgeInsets.all(20.0),
            buttonBoxShadow: true,
          ),
          GFIconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
            shape: GFIconButtonShape.circle,
          ),
          GFIconButton(
            icon: const Icon(Icons.wifi),
            onPressed: () {},
            shape: GFIconButtonShape.standard,
          ),
          GFIconButton(
            icon: const Icon(Icons.co2),
            onPressed: () {},
            color: GFColors.DARK,
            shape: GFIconButtonShape.pills,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ButtonPage')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const MyTitle('按钮演示'),
                button(),
                const Divider(),
                const MyTitle('按钮类型'),
                button1(),
                const Divider(),
                const MyTitle('按钮形状'),
                button2(),
                const Divider(),
                const MyTitle('按钮大小'),
                button3(),
                const Divider(),
                const MyTitle('图标按钮'),
                button4(),
                const Divider(),
                GFButtonBar(
                  direction: Axis.horizontal,
                  spacing: 10.0,
                  children: [
                    GFButton(
                      onPressed: () {},
                      text: 'Button1',
                    ),
                    GFButton(
                      onPressed: () {},
                      text: 'Button2',
                    ),
                    GFButton(
                      onPressed: () {},
                      text: 'Button3',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
