import 'package:flutter/material.dart';
import 'package:nector/screens/account_page.dart';
import '../screens/boarding.dart';
import '../screens/cartpage.dart';
import '../screens/explorepage.dart';
import '../screens/favouritepage.dart';
import '../screens/navigatorbar.dart';
import '../screens/phonelogin.dart';
import '../screens/shoppage.dart';
import '../screens/signin.dart';



class Routes {
  static Map<String, Widget Function(BuildContext)> routes()=>{
    Boarding.routeName:(context)=> const Boarding(),
    SignIN.routeName:(context)=> const SignIN(),
    NavigatorBar.routeName:(context)=> const NavigatorBar(),
    PhoneLogin.routeName:(context)=> const PhoneLogin(),
    ShopPage.routeName:(context)=> const ShopPage(),
    ExplorePage.routeName:(context)=> const ExplorePage(),
    CartPage.routeName:(context)=> const CartPage(),
    FavouritePage.routeName:(context)=> const FavouritePage(),
    AccountPage.routeName:(context)=> const AccountPage()
  };
}