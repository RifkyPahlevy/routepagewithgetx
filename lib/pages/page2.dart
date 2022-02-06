import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_management_getx/pages/page3.dart';
import 'package:route_management_getx/routes/routes_name.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //  Get.to(Page3());
                Get.toNamed(NameRoute.page3);
              },
              child: Text("next page >>"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back(result: "Hello from Page 2");
              },
              child: Text("Back page "),
            ),
          ],
        ),
      ),
    );
  }
}
