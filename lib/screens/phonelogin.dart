import 'package:flutter/material.dart';
import 'package:nector/screens/navigatorbar.dart';
import 'package:nector/widgets/socialbuttons.dart';

import '../utility/colors.dart';
import '../utility/images.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({Key? key}) : super(key: key);

  static const routeName = '/Phone-Login';
  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.appwhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(GroceryImages.signinvegiImage),
            Center(
            child: SingleChildScrollView(
              child:
              Column(
                children:[
                  const Text("Please Enter Your Phone Number",style: TextStyle(
                    color: AppColours.groceryRiceColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w500
                  ),),
                  TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      alignLabelWithHint: true,
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                         const Text("+91",
                              style: TextStyle(
                                color: AppColours.appblack,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            GroceryIcon.indiaflagIcon,
                            height: 18,
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      )),
                ),
                  const SizedBox(height: 50,),
                  SocialButton(color: AppColours.groceryRiceColor, label: "Click to Continue", image: GroceryIcon.googleIocn, callback: () {Navigator.pushNamed(context, NavigatorBar.routeName);})
              ]
              ),
            ),
          ),
        ]),
      ),

    );
  }
}
