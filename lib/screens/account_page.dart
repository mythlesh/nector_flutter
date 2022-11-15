import 'package:flutter/material.dart';
import 'package:nector/utility/screen_util.dart';
import '../utility/colors.dart';
import 'package:nector/utility/images.dart';
import 'package:nector/widgets/account_page_tile.dart';
class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);
  static const routeName = '/AccountPage';
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            ListTile(leading: Image.asset(GroceryImages.profileImage),
            title: Row(
              children: [
                Text("User",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
                Icon(Icons.edit, color: AppColours.primarycolour,),
              ],
            ),
            subtitle: Text("email@gmail.com",
              style: TextStyle(fontSize: 15,color: AppColours.apptextgrey),
            ),),
            SizedBox(height: 10,),
            AccountTile(name: "Orders", iconn: Icons.shopping_bag_rounded,callback: (){}),
            AccountTile(name: "My Details", iconn: Icons.person,callback: (){}),
            AccountTile(name: "Delivery Address", iconn: Icons.location_on,callback: (){}),
            AccountTile(name: "Help", iconn: Icons.help,callback: (){}),
            AccountTile(name: "About", iconn: Icons.info,callback: (){}),
            SizedBox(height: 40,),
            Container( height: 70,
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColours.apptextgrey.withOpacity(0.20),
              ),
              child: InkWell(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.exit_to_app_rounded,color: AppColours.primarycolour.withOpacity(0.70),size: 30,),
                    Text("LogOut", style: TextStyle(color: AppColours.primarycolour, fontSize: 25),)
                  ],
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
