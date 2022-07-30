import 'package:cenimatic/screens/splash_screen/splash_screen.dart';
import 'package:cenimatic/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
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
        builder: (BuildContext, Orientation, ScreenType) =>
            MaterialApp(

              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,

              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: AppTheme.myLightTheme,
              home: SplashScreen(),
            ));
  }
}
