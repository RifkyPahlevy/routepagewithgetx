import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginControl extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  RxBool isHidden = true.obs;

  RxBool isRemember = false.obs;
  void login() {
    final box = GetStorage();
    if (emailC.text == "rifkypahlevy@gmail.com" && passC.text == "12345") {
      if (box.read('remeberData') != null) {
        box.remove('remeberData');
      }
      if (isRemember.isTrue) {
        // simpan data user
        box.write('rememberData', {
          'email': emailC.text,
          'password': passC.text,
        });
      }
      Get.offAllNamed("/home");
    } else {
      Get.defaultDialog(
        title: "Login Failed",
        middleText: "Email or Password is wrong",
      );
    }
  }
}
