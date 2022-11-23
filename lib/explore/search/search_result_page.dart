import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:mtelogic/controllers/home_controller.dart';
import 'package:mtelogic/controllers/product_controller.dart';
import 'package:mtelogic/core/misc/app_color.dart';
import 'package:mtelogic/core/misc/app_icon.dart';
import 'package:mtelogic/core/misc/app_sytle.dart';
import 'package:mtelogic/core/misc/size_config.dart';
import 'package:mtelogic/core/widget/celestial_button.dart';
import 'package:mtelogic/core/widget/celestial_image.dart';
import 'package:mtelogic/core/widget/celestial_label.dart';
import 'package:mtelogic/core/widget/celestial_rating.dart';
import 'package:mtelogic/core/widget/celestial_text.dart';

class SearchResult extends StatelessWidget {
  SearchResult({Key? key}) : super(key: key);
  final homeController = Get.find<HomeController>();
  final productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                    horizontal: (2.6 / 91.34) * SizeConfig.screenHeight),
                child: Column(children: [
                  SizedBox(
                    height: (1.6 / 91.34) * SizeConfig.screenHeight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CelestialTextLeftIcon(
                            iconsax: AppIcon.searchIcon,
                            textController: homeController.searchText,
                            title: "Search",
                            labelText: AppStyle.label12Grey,
                            labelStyle: AppStyle.label12Grey,
                            labelTextFloating: AppStyle.label12Grey,
                            iconColor: AppColor.blueColor),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: (1.8 / 91.34) * SizeConfig.screenHeight,
                          ),
                          celestialButtonIcon(() {
                           
                          }, (2.7 / 91.34) * SizeConfig.screenHeight,
                              AppIcon.orderbyIcon, AppColor.greyColor),
                          SizedBox(
                            width: (1.8 / 91.34) * SizeConfig.screenHeight,
                          ),
                          celestialButtonIcon(() {
                         
                          }, (2.7 / 91.34) * SizeConfig.screenHeight,
                              AppIcon.filterIcon, AppColor.greyColor),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: (1.6 / 91.34) * SizeConfig.screenHeight,
                  ),
                  const Divider(),
                  SizedBox(
                    height: (1.6 / 91.34) * SizeConfig.screenHeight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      celestialLabel("145 Result", AppStyle.label12Grey),
                      celestialLabel(
                          "Man Shoes", AppStyle.label12NetralBlackBold)
                    ],
                  ),
                  SizedBox(
                    height: (1.6 / 91.34) * SizeConfig.screenHeight,
                  ),
                  Obx(() => StaggeredGridView.countBuilder(
                        shrinkWrap: true,
                        primary: false,
                        crossAxisCount: 2,
                        itemCount: productController.products.length,
                        itemBuilder: (BuildContext context, int index) =>
                            SizedBox(
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  productController.goToProductDetail(
                                      productController.products[index]);
                                  // seatController.updateSeat(index);
                                },
                                child: Obx(() => Container(
                                      height: (29.0 / 91.34) *
                                          SizeConfig.screenHeight,
                                      width: (24.0 / 91.34) *
                                          SizeConfig.screenHeight,
                                      color: AppColor.whiteColor,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            SizedBox(
                                                width: (2 / 91.34) *
                                                    SizeConfig.screenWidth),
                                            celestialImageLocal(
                                                productController
                                                    .products[index].imageFile
                                                    .toString(),
                                                (13.3 / 91.34) *
                                                    SizeConfig.screenHeight,
                                                (13.3 / 91.34) *
                                                    SizeConfig.screenHeight,
                                                BoxFit.cover),
                                            SizedBox(
                                              height: (1 / 91.34) *
                                                  SizeConfig.screenHeight,
                                            ),
                                            celestialLabel(
                                                productController
                                                    .products[index].productName
                                                    .toString(),
                                                AppStyle
                                                    .label12NetralBlackBold),
                                            SizedBox(
                                              height: (1 / 91.34) *
                                                  SizeConfig.screenHeight,
                                            ),
                                            const CelestialRating(rate: 4),
                                            SizedBox(
                                              height: (1 / 91.34) *
                                                  SizeConfig.screenHeight,
                                            ),
                                            celestialLabel(
                                                productController
                                                    .products[index]
                                                    .priceDiscount
                                                    .toString(),
                                                AppStyle.label12BLueBold),
                                            SizedBox(
                                              height: (1 / 91.34) *
                                                  SizeConfig.screenHeight,
                                            ),
                                            Row(
                                              children: [
                                                celestialLabel(
                                                    productController
                                                        .products[index].price
                                                        .toString(),
                                                    AppStyle.label10GreyBold),
                                                SizedBox(
                                                  width: (1 / 91.34) *
                                                      SizeConfig.screenHeight,
                                                ),
                                                celestialLabel(
                                                    productController
                                                        .products[index]
                                                        .discount
                                                        .toString(),
                                                    AppStyle.label10RedBold),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        staggeredTileBuilder: (int index) =>
                            const StaggeredTile.fit(1),
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      )),
                ]))));
  }
}
