import 'package:get/get.dart';
import 'package:route_management_getx/controller/count_control.dart';
import 'package:route_management_getx/controller/user_controler.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CountControl());
  }
}
