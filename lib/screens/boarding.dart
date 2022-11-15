import 'package:flutter/material.dart';
import 'package:nector/utility/images.dart';
import 'package:nector/screens/signin.dart';

import '../utility/colors.dart';
class Boarding extends StatefulWidget {
  const Boarding({Key? key}) : super(key: key);

  static const routeName = '/on-boarding';
  @override
  State<Boarding> createState() => _BoardingState();
}

class _BoardingState extends State<Boarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(GroceryImages.onboardingImage,fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,),
          Container(
            margin:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.55),
            child: Column(
              children: [
                Image.asset(GroceryImages.onboardingcarrotImage),
             const   Text(
                  "Welcome to our Store",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColours.appwhite,
                      fontWeight: FontWeight.w500,
                      fontSize: 48,
                      letterSpacing: -1,
                      height: (48 / 36)
                  ),
                ),
               const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    "Ger your groceries in as fast as one hour",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColours.appwhite,
                        fontSize: 16,
                        height: (16 / 15)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SignIN.routeName);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColours.primarycolour,
                        borderRadius: BorderRadius.circular(50)),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Text(
                      "Get Started",
                      style: TextStyle(color: AppColours.appwhite),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
