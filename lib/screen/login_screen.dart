
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_manager/screen/forgot_password_email_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 82,),
                const Text("Welcome Back!",style: TextStyle(fontSize: 25),),
                const SizedBox(height: 8,),
                const Text("Please enter email & password to sign in",style: TextStyle(fontSize: 18,color: Colors.grey),),
                const SizedBox(height: 16,),
                _buildLoginForm(),
                const SizedBox(height: 12,),
          
                _buildSignUpSection(),
          
          
          
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpSection() {
    return Center(
              child: Column(
                children: [
                  TextButton(onPressed: onTapForgotPasswordButton, child: Text("Forgot Password")),
                  RichText(text: const TextSpan(
                    style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),
                    text:  "Don't have account? ",
                    children: [
                      TextSpan(text: "Sign Up",style: TextStyle(color: Colors.green)),
                    ]
                  )),
                ],
              ),
            );
  }

  Widget _buildLoginForm() {
    return Column(
              children: [
                TextFormField(
                 keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 12,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 24,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    fixedSize: const Size(400, 50),
                  ),

                    onPressed: onTapLoginButton,
                    child: const Text("Log in",style: TextStyle(fontSize: 18),)
                ),
              ],
            );
  }

  void onTapLoginButton(){

    // TODO:  When On tap click Go To Home screen

}
  void onTapForgotPasswordButton(){

    // TODO:  When On tap click Go To Home screen
   Get.to(()=>const  ForgotPasswordEmailScreen());

  }

}
