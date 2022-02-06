import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_management_getx/pages/page5.dart';
import 'package:route_management_getx/routes/routes_name.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 4'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //Get.offAll(Page5());
                Get.offAllNamed(NameRoute.page5);
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
