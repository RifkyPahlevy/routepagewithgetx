import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_management_getx/pages/homepage.dart';
import 'package:route_management_getx/routes/pages_routes.dart';
import '../routes/pages_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: AppRoutes.routePage,
    );
  }
}
