import 'package:cenimatic/utils/app_theme.dart';
import 'package:cenimatic/widgets/social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../generated/l10n.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: 100.w,
          height: 100.h,
          padding: EdgeInsets.only(top: 4.h,bottom: 20,left: 20,right: 20),
          child: Column(
            children: [
              SvgPicture.asset('assets/icons/splash_icon.svg',height: 6.h),
              SizedBox(height: 3.h,),
              Text(S.of(context).welcomeToCinematec,
              style: TextStyle(color: Colors.white,
                  fontSize: 18.sp),
              ),
               SizedBox(height: 1.h,),
               Text('Login to book your seat, I said it yours',
              style: TextStyle(color: Colors.white.withOpacity(.7),fontSize: 16.sp),
              ),
              SizedBox(height: 4.h,),
              Container(
                width: 100.w,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Login to your account',
                      style: TextStyle(color: AppTheme.primaryColor,
                          fontSize: 16.sp,fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 2.h,),
                    TextFormField(
                      cursorColor: AppTheme.primaryColor,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                        ),
                        fillColor: AppTheme.greyColor,
                        filled: true,
                        hintText: 'Username',
                        hintStyle: const TextStyle(color: Colors.black45),

                      ),
                    ),
                    SizedBox(height: 1.h,),
                    TextFormField(
                      obscureText: true,
                      cursorColor: AppTheme.primaryColor,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        fillColor: AppTheme.greyColor,
                        filled: true,
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Colors.black45),

                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        child: TextButton(
                          onPressed: (){},
                          child: const Text('Forgot Password ?',
                          style: TextStyle(color: Colors.black26),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(onPressed: (){
                      print('done');
                      setState(() {
                        S.load(Locale('ar',''));
                      });

                    },
                        style: ElevatedButton.styleFrom(
                          primary: AppTheme.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                        child: const Center(child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text('Login',style: TextStyle(fontSize: 16),),
                        ))),
                    Row(
                      children: [
                        Expanded(child: Divider(color: Colors.black45.withOpacity(.3),)),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 3.h),
                            child: const Text('Or login with')),
                        Expanded(child: Divider(color: Colors.black45.withOpacity(.3),)),
                      ],
                    ),
                    const SocialButton(title: 'Sign in with Google', iconPath: 'assets/icons/google.svg'),
                    SizedBox(height: 1.5.h,),
                    const SocialButton(title: 'Sign in with Facebook', iconPath: 'assets/icons/facebook.svg',
                    backgroundColor: Color(0xff4267B2),iconColor: Colors.white,textColor: Colors.white,
                    ),


                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
