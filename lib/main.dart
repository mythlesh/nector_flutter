import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/screens/splash.dart';
import 'package:nector/utility/routes.dart';

void main() {
  runApp(const MyApp());
  // transparentStatusBar();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nector",
        theme: ThemeData(
            bottomSheetTheme: BottomSheetThemeData(
                modalBackgroundColor: AppColours.appblack.withOpacity(0.4))),
        debugShowCheckedModeBanner: false,
        home: const Splash(),
        routes: Routes.routes()
        // routes: Routes.routes()
        );
  }
}
