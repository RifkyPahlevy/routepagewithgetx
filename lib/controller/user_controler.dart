import 'package:get/get.dart';

class User extends GetxController {
  RxString nama = 'Rifky'.obs;

  void updateNama() => nama.value = 'akmal';
}
