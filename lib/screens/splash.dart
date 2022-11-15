import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/utility/images.dart';
import 'package:nector/screens/boarding.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  navigate()async{
    await Future.delayed(const Duration(seconds: 3),(){

      Navigator.pushReplacementNamed(context, Boarding.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.primarycolour,
      body: Center(
        child: Image.asset(GroceryImages.splashImage, fit: BoxFit.cover),
      ),
    );
  }
}
