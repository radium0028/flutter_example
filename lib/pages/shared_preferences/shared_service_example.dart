import 'package:flutter/material.dart';
import 'package:flutter_example/util/shared_service.dart';

class SharedServiceExample extends StatefulWidget {
  const SharedServiceExample({Key? key}) : super(key: key);

  @override
  _SharedServiceExampleState createState() => _SharedServiceExampleState();
}

class _SharedServiceExampleState extends State<SharedServiceExample> {
  @override
  void reassemble() {
    super.reassemble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SharedService演示'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                SharedService.set("service_string", "service_string");
                SharedService.set("service_int", 123);
                SharedService.set("service_double", 2.2);
                SharedService.set("service_bool", true);
                SharedService.set("service_stringlist", ["a", "b"]);
                SharedService.set("service_map", r'{"a": "1", "b": 2}');
                setState(() {});
              },
              child: const Text('保存数据'),
            ),
            Text(
              SharedService.get("service_string")?.toString() ?? "null",
            ),
            Text(
              SharedService.get("service_int")?.toString() ?? "null",
            ),
            Text(
              SharedService.get("service_double")?.toString() ?? "null",
            ),
            Text(
              SharedService.get("service_bool")?.toString() ?? "null",
            ),
            Text(
              SharedService.get("service_stringlist")?.toString() ?? "null",
            ),
            Text(
              SharedService.get("service_map")?.toString() ?? "null",
            ),
            // Text(
            //   (SharedService.get("service_map") as Map)["a"],
            // ),
          ],
        ),
      ),
    );
  }
}
