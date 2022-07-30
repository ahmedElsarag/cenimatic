import 'package:cenimatic/screens/splash_screen/splash_screen.dart';
import 'package:cenimatic/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (BuildContext, Orientation, ScreenType) => MaterialApp(
              title: 'Flutter Demo',
              theme: AppTheme.myLightTheme,
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
            ));
  }
}
