import 'package:get/get.dart';

class CountControl extends GetxController {
  RxInt count = 0.obs;

  void increment() => count++;
}
