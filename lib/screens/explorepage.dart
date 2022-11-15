import 'package:flutter/material.dart';
import 'package:nector/utility/images.dart';
import '../utility/colors.dart';
import '../widgets/search_bar.dart';
import 'package:nector/widgets/explore_product_card.dart';
import 'package:nector/utility/data.dart';
class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);
  static const routeName = '/ExplorePage';
  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text("Find Products", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,)),
                ),
                SizedBox(height: 20,),
                SearchBar(),
                SizedBox(height: 20,),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                     crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                           itemBuilder: (context, index) =>
                               InkWell(
                                       onTap: (){},
                                       child: ExploreProducts(
                                         color: exploreTileColor[index],
                                         image: exploreImages[index],
                                         name: exploreNames[index],
                                       ),
                                     ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
