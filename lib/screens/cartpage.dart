import 'package:flutter/material.dart';
import '../utility/colors.dart';
class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);
  static const routeName = '/CartPage';
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.facebookbutton,

    );
  }
}
