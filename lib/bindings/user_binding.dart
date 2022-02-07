import 'package:get/get.dart';
import 'package:route_management_getx/controller/user_controler.dart';

class UserBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => User());
  }
}
