import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:route_management_getx/controller/login_control.dart';

class Login extends StatelessWidget {
  final box = GetStorage();

  final loginC = Get.put(LoginControl());
  @override
  Widget build(BuildContext context) {
// membaca data dari storage
    if (box.read("rememberData") != null) {
      loginC.isRemember.value = true;
      loginC.emailC.text = box.read("rememberData")['email'];
      loginC.passC.text = box.read("rememberData")['password'];
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: loginC.emailC,
            textInputAction: TextInputAction.next,
            autocorrect: false,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20),
          Obx(() => TextField(
                controller: loginC.passC,
                textInputAction: TextInputAction.done,
                autocorrect: false,
                obscureText: loginC.isHidden.value,
                decoration: InputDecoration(
                  suffix: IconButton(
                      onPressed: () {
                        loginC.isHidden.toggle();
                      },
                      icon: Icon(Icons.remove_red_eye_outlined)),
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
          SizedBox(height: 20),
          Obx(() => CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: loginC.isRemember.value,
              onChanged: (value) {
                loginC.isRemember.toggle();
              },
              title: Text('Remember me'))),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              loginC.login();
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
