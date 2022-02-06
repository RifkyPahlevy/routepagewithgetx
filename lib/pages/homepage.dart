import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_management_getx/pages/page1.dart';

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
        child: ElevatedButton(
          onPressed: () {
            // Get.to(Page1());
            Get.toNamed('/page1');
          },
          child: Text('Go to Page'),
        ),
      ),
    );
  }
}
