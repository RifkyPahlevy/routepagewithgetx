import 'package:route_management_getx/routes/routes_name.dart';

import '../pages/homepage.dart';
import '../pages/page1.dart';
import '../pages/page2.dart';
import '../pages/page3.dart';
import '../pages/page4.dart';
import '../pages/page5.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routePage = [
    GetPage(name: NameRoute.page1, page: () => Page1()),
    GetPage(name: NameRoute.page2, page: () => Page2()),
    GetPage(name: NameRoute.page3, page: () => Page3()),
    GetPage(name: NameRoute.page4, page: () => Page4()),
    GetPage(name: NameRoute.page5, page: () => Page5()),
  ];
}
