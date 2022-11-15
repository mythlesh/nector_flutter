import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/utility/images.dart';

class FavouriteTile extends StatelessWidget {
  FavouriteTile({required this.image, required this.name});
  String image;
  String name;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Divider(),
      ListTile(
        leading: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "325ml, Price",
          style: TextStyle(
            fontSize: 15,
            color: AppColours.apptextgrey,
          ),
        ),
        trailing: Text(
          "\$1.50  >",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    ]);
  }
}
