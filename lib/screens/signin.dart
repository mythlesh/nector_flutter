import 'package:flutter/material.dart';
import 'package:nector/screens/phonelogin.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/utility/images.dart';
import 'package:nector/widgets/socialbuttons.dart';
import 'package:nector/screens/navigatorbar.dart';

class SignIN extends StatefulWidget {
  const SignIN({Key? key}) : super(key: key);

  static const routeName = '/sign-in';

  @override
  State<SignIN> createState() => _SignINState();
}

class _SignINState extends State<SignIN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.appwhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(GroceryImages.signinvegiImage),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                const Text(
                  "Get Your Groceries With Nector",
                  style: TextStyle(
                    color: AppColours.appblack,
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07 ,
                  margin: EdgeInsets.only(
                      left: 24, right: 24, top: 20),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  decoration:
                  BoxDecoration(color: AppColours.primarycolour, borderRadius: BorderRadius.circular(20)),
                  child: InkWell(
                    onTap: () {Navigator.pushNamed(context, PhoneLogin.routeName);},
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Icon(Icons.phone,size: 25,color: Colors.white,),),
                        SizedBox(width: 13,),
                        Expanded(
                          flex:3,
                          child: Text("Continue with Phone",
                            style: TextStyle(

                              color: AppColours.appwhite,
                              fontSize: 18,
                              // height: (18 / 18).toHeight
                            ),
                          ),)
                      ],
                    ),

                  ),
                ),
                // TextFormField(
                //   keyboardType: TextInputType.number,
                //   decoration: InputDecoration(
                //       alignLabelWithHint: true,
                //       floatingLabelAlignment: FloatingLabelAlignment.center,
                //       prefixIcon: Row(
                //         mainAxisSize: MainAxisSize.min,
                //         children: [
                //           Text("+91",
                //               style: TextStyle(
                //                 color: AppColours.appblack,
                //               )),
                //           SizedBox(
                //             width: 10,
                //           ),
                //           Image.asset(
                //             GroceryIcon.indiaflagIcon,
                //             height: 18,
                //           ),
                //           SizedBox(
                //             width: 10,
                //           )
                //         ],
                //       )),
                // ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "or connect with social media",
                    style:
                        TextStyle(color: AppColours.googlebutton, fontSize: 15),
                  ),
                ),
                SocialButton(
                    color: AppColours.facebookbutton,
                    label: "Continue With Facebook",
                    image: GroceryIcon.facebookIcon,
                    callback: () {Navigator.pushNamed(context, NavigatorBar.routeName);}),
                SocialButton(
                    color: AppColours.googlebutton,
                    label: "Continue With Google",
                    image: GroceryIcon.googleIocn,
                    callback: () {Navigator.pushNamed(context, NavigatorBar.routeName);})
              ]),
            )
          ],
        ),
      ),
    );
  }
}
