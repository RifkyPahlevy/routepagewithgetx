import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:route_management_getx/pages/count_pages.dart';
import 'package:route_management_getx/pages/homepage.dart';
import 'package:route_management_getx/pages/login.dart';
import 'package:route_management_getx/pages/page1.dart';
import 'package:route_management_getx/routes/pages_routes.dart';
import '../routes/pages_routes.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Login(),
      getPages: AppRoutes.routePage,
    );
  }
}
