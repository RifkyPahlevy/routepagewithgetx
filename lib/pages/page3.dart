import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_management_getx/pages/page4.dart';
import 'package:route_management_getx/routes/routes_name.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Get.to(Page4());
                Get.toNamed(NameRoute.page4);
              },
              child: Text("next page >>"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Back page "),
            ),
          ],
        ),
      ),
    );
  }
}
