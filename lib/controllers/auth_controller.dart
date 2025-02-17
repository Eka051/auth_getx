import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  var isEmailValid = true.obs;
  var isPasswordValid = true.obs;
  var isConfirmPasswordValid = true.obs;

  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    if (email.isEmpty || !email.isEmail) {
      isEmailValid(false);
    } else {
      isEmailValid(true);
    }

    if (password.isEmpty || password.length < 6) {
      isPasswordValid(false);
    } else {
      isPasswordValid(true);
    }

    if (isEmailValid.value && isPasswordValid.value) {
      Get.snackbar('Success', 'Login success', colorText: Colors.white, backgroundColor: Colors.green);
    }
  }
}