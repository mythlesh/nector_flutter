import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';
class AccountTile extends StatelessWidget {
  AccountTile({required this.name, required this.iconn, this.callback}) ;
  String name;
  IconData iconn;
  VoidCallback? callback;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Divider(thickness: 1,),
    InkWell(
        onTap: callback,
        child: Column(
          children: [

            SizedBox(height: 10,),
            Row(children: [
              Expanded(
                  flex:1,
                  child: Icon(iconn,size: 25, color: AppColours.appblack.withOpacity(0.70),)),
              Expanded(flex:3,child: Text(name, style: TextStyle(
                fontSize: 20,
                color: AppColours.appblack.withOpacity(0.70),

              ),)),
              Expanded(child: Icon(Icons.arrow_forward_ios, size: 25,)),
              SizedBox(height: 40,)

            ],)
          ],
        ),
      ),
    ]);
  }
}
