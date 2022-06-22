import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonPage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ButtonPage')),
        body: SafeArea(child: Text('ButtonPageroller')));
  }
}
