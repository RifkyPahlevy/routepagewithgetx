import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_management_getx/controller/count_control.dart';
import 'package:route_management_getx/pages/count_pages.dart';
import 'package:route_management_getx/pages/page1.dart';
import 'package:route_management_getx/routes/routes_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Get.to(Page1());
                Get.toNamed(NameRoute.page1);
              },
              child: Text('Go to Page'),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    NameRoute.countPage,
                  );
                },
                child: Text("Count Page")),
          ],
        ),
      ),
    );
  }
}
