import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  var isEmailValid = true.obs;
  var isPasswordValid = true.obs;
  var isConfirmPasswordValid = true.obs;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

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
      Get.snackbar('Success', 'Login Success', colorText: Colors.white, backgroundColor: Colors.green);
    } else {
      Get.snackbar('Error', 'Login Failed', colorText: Colors.white, backgroundColor: Colors.red);
    }
  }

  void signUp() {
    String email = emailController.text;
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;

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

    if (confirmPassword.isEmpty || confirmPassword != password) {
      isConfirmPasswordValid(false);
    } else {
      isConfirmPasswordValid(true);
    }

    if (isEmailValid.value && isPasswordValid.value && isConfirmPasswordValid.value) {
      Get.snackbar('Success', 'Sign Up Success', colorText: Colors.white, backgroundColor: Colors.green);
    } else {
      Get.snackbar('Error', 'Sign Up Failed', colorText: Colors.white, backgroundColor: Colors.red);
    }
  }
}