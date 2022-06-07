import 'dart:io';
import 'package:crypto/crypto.dart';

void main() async {
  var file = File('/Users/radium/nodejs-wwwroot/app-release-2.apk');
  print(md5.convert(file.readAsBytesSync()));
}
