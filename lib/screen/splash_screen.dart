import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/constant/ImagePath.dart';
import 'package:task_manager/constant/string_text.dart';
import 'package:task_manager/screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            
                const SizedBox(height: 200,),
                  
                Image.asset(ImageAssetPath.splashTaskManager),
                Text(StringText.splashText,style: TextStyle(fontSize: 21),),
                  
              ],
            ),
          ),
        ),
      ),
    );
  }
}
