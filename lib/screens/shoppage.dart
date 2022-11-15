import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/utility/images.dart';
import 'package:nector/widgets/search_bar.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';
import 'package:nector/utility/data.dart';
import 'package:nector/widgets/product_card.dart';

import '../widgets/groceries_tile.dart';
import '../widgets/see_alltile.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);
  static const routeName = '/ShopPage';
  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Image.asset(GroceryImages.carrotImage),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.location_on_outlined,size: 30,color: AppColours.apptextgrey,),
                  Text("Delhi,India",style: TextStyle(
                    fontSize: 20,
                    color: AppColours.apptextgrey,
                  ),)
                ],
              ),
              SizedBox(height: 20),
              SearchBar(),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height: 170,
                  child: ScrollPageView(controller: ScrollPageController(),
                    indicatorColor: AppColours.apptextgrey,
                    checkedIndicatorColor: AppColours.primarycolour,
                    children:
                      sliderImages.map((image) => Image.asset(image,fit: BoxFit.cover,width: double.infinity,)).toList(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SeeAllTile(label: 'Exclusive Offers'),
              SizedBox(height: 20),
              // ProductCard(productImage: GroceryImages.bananaImage, productName: "Organic Banana", productQuantity: "14pcs 800gm")
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.38,
                child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: offerImages.length,
                  itemBuilder: (context, index) =>
                InkWell(
                  onTap: (){},
                  child: Padding(
                    padding: index == 0
                        ?EdgeInsets.zero
                        : const EdgeInsets.only(left: 16.0),
                    child: ProductCard(
                      productImage: offerImages[index],
                      productName: offerProductNames[index],
                      productQuantity: offerQuantities[index],
                    ),
                  ),
                ),),),
              SizedBox(height: 20),
              SeeAllTile(label: "Best Selling"),
              SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.38,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: bestProductNames.length,
                  itemBuilder: (context, index) =>
                  InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: index == 0
                          ?EdgeInsets.zero
                          :EdgeInsets.only(left: 16.0),
                      child: ProductCard(
                        productImage: bestSellingImages[index],
                        productQuantity: bestQuantities[index],
                        productName: bestProductNames[index],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SeeAllTile(label: "Groceries"),
              SizedBox(height: 15),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: groceriesImages.length,
                  itemBuilder: (context, index) =>
                  InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: index == 0
                          ?EdgeInsets.zero
                          :EdgeInsets.only(left: 16.0),
                      child: GroceriesTile(
                        image: groceriesImages[index],
                        label: groceriesName[index],
                        color: groceriesTileColor[index],
                      ),
                    ),
                  ),),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.38,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: offerImages.length,
                  itemBuilder:(context, index) =>
                  InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: index == 0
                          ?EdgeInsets.zero
                          :EdgeInsets.only(left: 16.0),
                      child: ProductCard(
                        productName: offerProductNames[index],
                        productQuantity: offerQuantities[index],
                        productImage: offerImages[index],
                      ),
                    ),
                  ),),
              ),
              // GroceriesTile(color: AppColours.primarycolour,label: "RIce",image: GroceryImages.riceImage,)

            ],
          ),
        ),
      ),
    );
  }
}

//
// SizedBox(
// height: MediaQuery.of(context).size.height * 0.32,
// child: ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: offerImages.length,
// itemBuilder: (context, index) {
// return InkWell(
// onTap: () {
// Navigator.pushNamed(context, ProductDetail.routeName);
// },
// child: Padding(
// padding: index == 0
// ? EdgeInsets.zero
//     : const EdgeInsets.only(left: 16.0),
// child: ProductCard(
// image: offerImages[index],
// productName: offerProductNames[index],
// qunatityAndPrice: offerQuantities[index],
// ),
// ),
// );
// }),
// ),