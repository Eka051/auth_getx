import 'package:auth_getx/controllers/auth_controller.dart';
import 'package:auth_getx/views/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF493AD5),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Obx(
                () => TextField(
                  controller: authController.emailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Color(0xFF493AD5)),
                    errorText: authController.isEmailValid.value
                        ? null
                        : 'Email is invalid',
                    filled: true,
                    fillColor: const Color.fromARGB(255, 233, 233, 233),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xFF493AD5),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(height: 20),
              Obx(
                () => TextField(
                  controller: authController.passwordController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Color(0xFF493AD5)),
                    errorText: authController.isPasswordValid.value
                        ? null
                        : 'Password must be at least 6 characters',
                    filled: true,
                    fillColor: const Color.fromARGB(255, 233, 233, 233),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xFF493AD5),
                      ),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => authController.login(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF493AD5),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                        color: Color(0xFF493AD5),
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(() => SignupScreen());
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
