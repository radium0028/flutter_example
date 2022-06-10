// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_example/generated/l10n.dart';
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
    //设置默认的环境为英文
    setState(
      () {
        //手动切换中文
        S.load(const Locale("en"));
      },
    );

    NumberFormat nf = NumberFormat("#,###.##");
    print("1234567890.123 => #,###.## = ${nf.format(1234567890.123)}");
    //?使用00就可以保留指定的小数位
    nf = NumberFormat("#,###.00");
    print("#,###.00 = ${nf.format(1234567890.09876)}");
    nf = NumberFormat("#,###.000%");
    print("#,###.000% = ${nf.format(0.09876)}");
    nf = NumberFormat("%#,###.000");
    print("%#,###.000 = ${nf.format(0.09876)}");
    nf = NumberFormat("#,###.000‰");
    print("#,###.000‰ = ${nf.format(0.09876)}");
    //? 只能显示货币的名称，不能显示符号。
    nf = NumberFormat("¤#,###.000");
    print("¤#,###.000 = ${nf.format(09876)}");
    nf = NumberFormat("¤#,###.000", "ZH");
    print("¤#,###.000 = ${nf.format(09876)}");

    print("===============进位使用银行家舍入法================");
    //! 银行家舍入法
    //!四舍六入五考虑，五后非零就进一，五后为零看奇偶，五前为偶应舍去，五前为奇要进一。
    nf = NumberFormat("#.#");
    print("1.14，四舍${nf.format(1.14)}");
    print("1.16，六入${nf.format(1.16)}");
    print("1.151，五后非零就进一)${nf.format(1.151)}");
    print("1.15，五后为零看奇偶，五前为奇要进一${nf.format(1.15)}");
    print("1.25，五后为零看奇偶，五前为偶应舍去${nf.format(1.25)}");
    print("===============默认环境的输出================");
    DateTime now = DateTime.now();
    print(Intl.defaultLocale);
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
    print(DateFormat.EEEE().format(now));
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
