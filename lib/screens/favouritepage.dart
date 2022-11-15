import 'package:flutter/material.dart';
import 'package:nector/utility/favourite_tile.dart';
import 'package:nector/utility/images.dart';
import '../utility/colors.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);
  static const routeName = '/FavouritePage';
  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Favourite",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center),
            SizedBox(height: 20,),
            FavouriteTile(image: GroceryImages.applejuiceImage, name: "Apple Juice"),
            FavouriteTile(image: GroceryImages.spriteImage, name: "Sprite"),
            FavouriteTile(image: GroceryImages.cocacolaImage, name: "Coca Cola"),
            FavouriteTile(image: GroceryImages.cokeImage, name: "Coke"),
            FavouriteTile(image: GroceryImages.pepsiImage, name: "Pepsi"),
            Divider(

            )

          ],
        ),
      ),
    );
  }
}
