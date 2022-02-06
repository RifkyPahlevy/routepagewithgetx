import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_management_getx/pages/page2.dart';
import 'package:route_management_getx/routes/routes_name.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // bisa di await, nanti page 1 minta page 2 kirim data
                //Get.to(Page2()); // ini tanpa nama navigator
                Get.toNamed(NameRoute
                    .page2); // ini dengan nama navigator, jika pake ini harus di daftarkan di get Material
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
