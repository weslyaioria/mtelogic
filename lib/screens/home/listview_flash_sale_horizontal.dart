import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtelogic/controllers/global_controller.dart';
import 'package:mtelogic/core/misc/app_color.dart';
import 'package:mtelogic/core/misc/app_sytle.dart';
import 'package:mtelogic/core/misc/size_config.dart';
import 'package:mtelogic/core/widget/celestial_image.dart';
import 'package:mtelogic/core/widget/celestial_label.dart';
import 'package:mtelogic/models/product.dart';

Widget listviewFlashSalesHorizontal(
        GlobalController globalController, RxList<Product> products) =>
    ListView.builder(
      controller: globalController.scrollController,
      itemCount: products.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => {
            // Get.toNamed('product-view', arguments: [products[index]])
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: (1.6 / 91.34) * SizeConfig.screenHeight,
                vertical: (1.2 / 91.34) * SizeConfig.screenHeight),
            child: Container(
              width: (24 / 91.34) * SizeConfig.screenWidth,
              height: (25 / 91.34) * SizeConfig.screenWidth,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: AppColor.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: AppColor.borderColor,
                    spreadRadius: 1,
                    blurRadius: 1,
                    // offset: Offset(10, 10),
                  )
                ],
              ),
              child: Padding(
                padding:
                    EdgeInsets.all((1.7 / 91.34) * SizeConfig.screenHeight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    celestialImageLocal(
                        products[index].imageFile.toString(),
                        (10.9 / 91.34) * SizeConfig.screenHeight,
                        (10.9 / 91.34) * SizeConfig.screenHeight,
                        BoxFit.cover),
                    SizedBox(
                      height: (0.8 / 91.34) * SizeConfig.screenHeight,
                    ),
                    celestialLabel(products[index].productName.toString(),
                        AppStyle.label12NetralBlackBold),
                    SizedBox(
                      height: (1 / 91.34) * SizeConfig.screenHeight,
                    ),
                    celestialLabel(products[index].priceDiscount.toString(),
                        AppStyle.label12BLueBold),
                    SizedBox(
                      height: (0.8 / 91.34) * SizeConfig.screenHeight,
                    ),
                    Row(
                      children: [
                        celestialLabel(products[index].price.toString(),
                            AppStyle.label10GreyBold),
                        SizedBox(
                          width: (0.8 / 91.34) * SizeConfig.screenHeight,
                        ),
                        celestialLabel(products[index].discount.toString(),
                            AppStyle.label10RedBold),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
