import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

import 'login_screen.dart';

class ForgotPasswordEmailScreen extends StatelessWidget {
  const ForgotPasswordEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 82,),
              const Text("Email Address Here",style: TextStyle(fontSize: 25),),
              const SizedBox(height: 8,),
              const Text("Enter email address associated with your account",style: TextStyle(fontSize: 18,color: Colors.grey),),
              const SizedBox(height: 16,),
              _buildForgetEmailForm(),
              const SizedBox(height: 12,),
              const SizedBox(height: 24,),

              _buildSignInSection(),



            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignInSection() {
    return Center(
      child: RichText(text:  TextSpan(
          style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),
          text:  "Have account? ",
          children: [
            TextSpan(
                text: "Sign In",
                style: const TextStyle(color: Colors.green),
             recognizer: TapGestureRecognizer()..onTap = onTapSignInButton
            ),
          ]
      )),
    );
  }

  Widget _buildForgetEmailForm() {
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

            onPressed: onTapSignInButton,
            child: const Text("Recovery Password",style: TextStyle(fontSize: 18),)
        ),
      ],
    );
  }

  void onTapSignInButton(){

    // TODO:  When On tap click Go To Home screen

    Get.to(()=> const LoginScreen());

  }
}

