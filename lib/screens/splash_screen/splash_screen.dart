import 'dart:async';

import 'package:cenimatic/screens/login_screen/LoginScreen.dart';
import 'package:cenimatic/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController( vsync: this,  duration:const Duration(milliseconds: 1000));
    animation = CurvedAnimation(parent: _animationController, curve: Curves.bounceOut, reverseCurve: Curves.bounceInOut);
    _animationController.forward();

    Timer(const Duration(milliseconds: 2000),()=> Navigator.pushReplacement(context, CupertinoPageRoute(builder: (_)=> LoginScreen())));
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Container(
        child: Center(
          child: ScaleTransition(
              scale: animation,
              child: SvgPicture.asset('assets/icons/splash_icon.svg',height: 8.h)),
        ),
      ),
    );
  }
}
