import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_management_getx/controller/count_control.dart';

class CountPage extends StatelessWidget {
  const CountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CountControl countC = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("${countC.count}")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      countC.increment();
                    },
                    child: Text('+')),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: () {}, child: Text("-"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
