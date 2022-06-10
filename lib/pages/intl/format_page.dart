// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
//  import 'package:intl/date_symbol_data_file.dart';
// import 'package:intl/date_symbol_data_http_request.dart';

class FormatPage extends StatefulWidget {
  const FormatPage({Key? key}) : super(key: key);

  @override
  State<FormatPage> createState() => _FormatPageState();
}

class _FormatPageState extends State<FormatPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  reassemble() {
    super.reassemble();
    //加载所有日期格式
    initializeDateFormatting();

    NumberFormat nf = NumberFormat("#,###.##");
    print("1234567890.123 => #,###.## = ${nf.format(1234567890.123)}");
    //四舍五入
    print("1234567890.125 => #,###.## = ${nf.format(1234567890.125)}");
    print("1234567890.01 => #,###.## = ${nf.format(1234567890.01)}");
    print("1234567890.09 => #,###.## = ${nf.format(1234567890.09)}");
    print("1234567890.093 => #,###.## = ${nf.format(1234567890.093)}");
    //四舍五入后会再次进位
    print("1234567890.095 => #,###.## = ${nf.format(1234567890.095)}");
    //使用00就可以保留指定的小数位
    nf = NumberFormat("#,###.00");
    print("#,###.00 = ${nf.format(1234567890.09876)}");
    nf = NumberFormat("#,###.000%");
    print("#,###.000% = ${nf.format(0.09876)}");
    nf = NumberFormat("%#,###.000");
    print("%#,###.000 = ${nf.format(0.09876)}");
    nf = NumberFormat("#,###.000‰");
    print("#,###.000‰ = ${nf.format(0.09876)}");
    nf = NumberFormat("¤#,###.000");
    print("¤#,###.000 = ${nf.format(09876)}");
    nf = NumberFormat("¤#,###.000", "ZH");
    print("¤#,###.000 = ${nf.format(09876)}");
    DateTime now = DateTime.now();

    print("===============进位的奇怪问题================");
    //在保留1位小数时，需要大于5才进位。
    nf = NumberFormat("#.#");
    print("nf.format(1.11)${nf.format(1.11)}");
    print("nf.format(1.12)${nf.format(1.12)}");
    print("nf.format(1.13)${nf.format(1.13)}");
    print("nf.format(1.14)${nf.format(1.14)}");
    print("nf.format(1.15)${nf.format(1.15)}");
    print("nf.format(1.16)${nf.format(1.16)}");
    print("nf.format(1.17)${nf.format(1.17)}");
    print("nf.format(1.18)${nf.format(1.18)}");
    // //在保留2位小数时，采用四舍五入的原则进位
    nf = NumberFormat("#.##");
    print("nf.format(1.111)${nf.format(1.111)}");
    print("nf.format(1.112)${nf.format(1.112)}");
    print("nf.format(1.113)${nf.format(1.113)}");
    print("nf.format(1.114)${nf.format(1.114)}");
    print("nf.format(1.115)${nf.format(1.115)}");
    print("nf.format(1.116)${nf.format(1.116)}");
    print("nf.format(1.117)${nf.format(1.117)}");
    print("nf.format(1.118)${nf.format(1.118)}");
    // //需要大于5才进位
    nf = NumberFormat("#.###");
    print("nf.format(1.1111)${nf.format(1.1111)}");
    print("nf.format(1.1112)${nf.format(1.1112)}");
    print("nf.format(1.1113)${nf.format(1.1113)}");
    print("nf.format(1.1114)${nf.format(1.1114)}");
    print("nf.format(1.1115)${nf.format(1.1115)}");
    print("nf.format(1.1116)${nf.format(1.1116)}");
    print("nf.format(1.1117)${nf.format(1.1117)}");
    print("nf.format(1.1118)${nf.format(1.1118)}");
    // //四舍五入
    nf = NumberFormat("#.####");
    print("nf.format(1.11111)${nf.format(1.11111)}");
    print("nf.format(1.11112)${nf.format(1.11112)}");
    print("nf.format(1.11113)${nf.format(1.11113)}");
    print("nf.format(1.11114)${nf.format(1.11114)}");
    print("nf.format(1.11115)${nf.format(1.11115)}");
    print("nf.format(1.11116)${nf.format(1.11116)}");
    print("nf.format(1.11117)${nf.format(1.11117)}");
    print("nf.format(1.11118)${nf.format(1.11118)}");
    print("===============进位的奇怪问题================");

    print("===============默认环境的输出================");
    //打印当天的年份
    print("当天年份(y)：${DateFormat.y().format(now)}");
    //打印当天的月份
    print("当天月份(M)：${DateFormat.M().format(now)}");
    //打印当天的日期
    print("当天日期(d)：${DateFormat.d().format(now)}");
    //打印当天的星期
    print("当天星期(E)：${DateFormat.E().format(now)}");
    //打印当天的时间
    print("当天时间(Hms)：${DateFormat.Hms().format(now)}");
    print("y()：${DateFormat.y().format(now)}");
    print("yM()：${DateFormat.yM().format(now)}");
    print("YMEd()：${DateFormat.yMEd().format(now)}");
    print("yMMM()：${DateFormat.yMMM().format(now)}");
    print("yMMMEd()：${DateFormat.yMMMEd().format(now)}");
    print("yMMMM()：${DateFormat.yMMMM().format(now)}");
    print("yMMMMEEEEd()：${DateFormat.yMMMMEEEEd().format(now)}");
    print("yMMMMd()：${DateFormat.yMMMMd().format(now)}");
    print("yMd()：${DateFormat.yMd().format(now)}");
    print(DateFormat.jm().format(now));
    print(DateFormat.j().format(now));
    print(DateFormat.jms().format(now));
    print(DateFormat.Hm().format(now));
    print("yM()：${DateFormat.yM().add_Hm().format(now)}");
    print("===============中文环境输出================");
    //打印当天的年份
    print("当天年份(y)：${DateFormat.y("zh").format(now)}");
    //打印当天的月份
    print("当天月份(M)：${DateFormat.M("zh").format(now)}");
    //打印当天的日期
    print("当天日期(d)：${DateFormat.d("zh").format(now)}");
    //打印当天的星期
    print("当天星期(E)：${DateFormat.E("zh").format(now)}");
    //打印当天的时间
    print("当天时间(Hms)：${DateFormat.Hms("zh").format(now)}");
    print("y()：${DateFormat.y("zh").format(now)}");
    print("yM()：${DateFormat.yM("zh").format(now)}");
    print("YMEd()：${DateFormat.yMEd("zh").format(now)}");
    print("yMMM()：${DateFormat.yMMM("zh").format(now)}");
    print("yMMMEd()：${DateFormat.yMMMEd("zh").format(now)}");
    print("yMMMM()：${DateFormat.yMMMM("zh").format(now)}");
    print("yMMMMEEEEd()：${DateFormat.yMMMMEEEEd("zh").format(now)}");
    print("yMMMMd()：${DateFormat.yMMMMd("zh").format(now)}");
    print("yMd()：${DateFormat.yMd("zh").format(now)}");
    print(DateFormat.jm("zh").format(now));
    print(DateFormat.j("zh").format(now));
    print(DateFormat.jms("zh").format(now));
    print(DateFormat.Hm("zh").format(now));
    print("yM()：${DateFormat.yM("zh").add_Hm().format(now)}");
    print("=========自定义格式输出==========");
    print("yyyy()：${DateFormat("yyyy").format(now)}");
    print("yyyy-MM()：${DateFormat("yyyy-MM").format(now)}");
    print("yyyy-MM-dd()：${DateFormat("yyyy-MM-dd").format(now)}");
    print(
        "yyyy-MM-dd HH:mm:ss()：${DateFormat("yyyy-MM-dd HH:mm:ss").format(now)}");
    print(DateFormat("一年中的第D天，一年中的第Q个季度").format(now));
    print("============对星期的理解==========");
    print("E：${DateFormat("E").format(now)}");
    print("E(zh)：${DateFormat("E", "zh").format(now)}");
    print("DateTime.now().weekday：${DateTime.now().weekday}");
    print("==============================");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intl Format 演示'),
      ),
      body: const Center(
        child: SizedBox(
          child: Text('查看控制台输出'),
        ),
      ),
    );
  }
}
