import 'package:flutter/material.dart';
import 'package:nector/screens/account_page.dart';
import 'package:nector/screens/shoppage.dart';
import 'package:nector/utility/colors.dart';
import '../utility/images.dart';
import 'cartpage.dart';
import 'explorepage.dart';
import 'favouritepage.dart';

class NavigatorBar extends StatefulWidget {
  const NavigatorBar({Key? key}) : super(key: key);
  static const routeName = '/Navigator-page';
  @override
  State<NavigatorBar> createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {
  int currentPage = 0;
  List<Widget> pages = const[
    ShopPage(),
    ExplorePage(),
    CartPage(),
    FavouritePage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentPage),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          setState(() {
            currentPage=value;
          });
        },
        selectedItemColor: AppColours.primarycolour,
        currentIndex: currentPage,
        type: BottomNavigationBarType.fixed,
        items: const [
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(GroceryIcon.shopIcon)),label: "Shop"),
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(GroceryIcon.cartIcon)), label: "Cart"),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(GroceryIcon.favouriteIcon)),label: "Favourites"),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(GroceryIcon.accountIcon)), label: "Account")

      ],

      ),
    );
  }
}
