import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtelogic/controllers/customer_controller.dart';
import 'package:mtelogic/controllers/global_controller.dart';
import 'package:mtelogic/core/misc/app_color.dart';
import 'package:mtelogic/core/misc/app_sytle.dart';
import 'package:mtelogic/core/misc/size_config.dart';
import 'package:mtelogic/core/widget/celestial_label.dart';
import 'package:mtelogic/models/customer.dart';

Widget listviewCustomerVertical(CustomerController customerController,
        GlobalController globalController, RxList<Customer> customers) =>
    ListView.builder(
      controller: globalController.scrollController,
      itemCount: customers.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // celestialImageLocal(
                  //     customers[index].imageFile.toString(),
                  //     (7.2 / 91.34) * SizeConfig.screenHeight,
                  //     (7.2 / 91.34) * SizeConfig.screenHeight,
                  //     BoxFit.cover),
                  SizedBox(
                    width: (1.2 / 91.34) * SizeConfig.screenHeight,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: celestialLabel(
                                  customers[index].personCode.toString(),
                                  AppStyle.label12NetralBlackBold,
                                  TextAlign.left),
                            ),
                            SizedBox(
                              width: (1.3 / 91.34) * SizeConfig.screenHeight,
                            ),
                            SizedBox(
                              width: (1.3 / 91.34) * SizeConfig.screenHeight,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: (1.3 / 91.34) * SizeConfig.screenHeight,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: celestialLabel(
                                  customers[index].firstName.toString(),
                                  AppStyle.label12BLueBold),
                            ),
                            SizedBox(
                              width: (1.3 / 91.34) * SizeConfig.screenHeight,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: (1.6 / 91.34) * SizeConfig.screenHeight,
            )
          ],
        );
        // return GestureDetector(
        //     onTap: () => {
        //       // Get.toNamed('product-view', arguments: [customers[index]])
        //     },
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         decoration: const BoxDecoration(
        //           borderRadius: BorderRadius.all(Radius.circular(8.0)),
        //           color: AppColor.blueColor,
        //           boxShadow: [
        //             BoxShadow(
        //               color: AppColor.borderColor,
        //               spreadRadius: 1,
        //               blurRadius: 1,
        //               // offset: Offset(10, 10),
        //             )
        //           ],
        //         ),

        //         // child: Padding(
        //         //   padding: const EdgeInsets.all(8.0),
        //         //   child: Column(
        //         //     crossAxisAlignment: CrossAxisAlignment.stretch,
        //         //     children: [
        //         //       // Row(
        //         //       //   children: [
        //         //           // celestialImageLocal(
        //         //           //     customers[index].imageFile.toString(),
        //         //           //     (4 / 91.34) * SizeConfig.screenHeight,
        //         //           //     (4 / 91.34) * SizeConfig.screenHeight,
        //         //           //     BoxFit.cover),
        //         //           // SizedBox(
        //         //           //   width: (1 / 91.34) * SizeConfig.screenHeight,
        //         //           // ),
        //         //           // Column(
        //         //           //   crossAxisAlignment: CrossAxisAlignment.start,
        //         //           //   children: [
        //         //           //     Row(
        //         //           //       children: [
        //         //           //         celestialLabel(
        //         //           //             customers[index].productName.toString(),
        //         //           //             AppStyle.label12NetralBlackBold),
        //         //           //         celestialButtonIcon(
        //         //           //             () {},
        //         //           //             (2.7 / 91.34) * SizeConfig.screenHeight,
        //         //           //             AppIcon.loveIcon,
        //         //           //             AppColor.redColor),
        //         //           //         celestialButtonIcon(
        //         //           //             () {},
        //         //           //             (2.7 / 91.34) * SizeConfig.screenHeight,
        //         //           //             AppIcon.trashIcon,
        //         //           //             AppColor.greyColor),
        //         //           //       ],
        //         //           //     ),
        //         //           //     SizedBox(
        //         //           //       height: (1 / 91.34) * SizeConfig.screenHeight,
        //         //           //     ),
        //         //           //     Row(
        //         //           //       children: [
        //         //           //         celestialLabel(
        //         //           //             customers[index].priceDiscount.toString(),
        //         //           //             AppStyle.label12BLueBold),
        //         //           //         Row(
        //         //           //           mainAxisAlignment:
        //         //           //               MainAxisAlignment.spaceBetween,
        //         //           //           children: [
        //         //           //             Container(
        //         //           //               color: AppColor.whiteColor,
        //         //           //               child: celestialButtonIcon(
        //         //           //                   () {},
        //         //           //                   (2.7 / 91.34) *
        //         //           //                       SizeConfig.screenHeight,
        //         //           //                   AppIcon.minIcon,
        //         //           //                   AppColor.greyColor),
        //         //           //             ),
        //         //           //             Container(
        //         //           //               color: AppColor.greyColor,
        //         //           //               child: Center(
        //         //           //                 child: celestialLabel(
        //         //           //                     "1", AppStyle.label10BlueBold),
        //         //           //               ),
        //         //           //             ),
        //         //           //             Container(
        //         //           //               color: AppColor.whiteColor,
        //         //           //               child: celestialButtonIcon(
        //         //           //                   () {},
        //         //           //                   (2.7 / 91.34) *
        //         //           //                       SizeConfig.screenHeight,
        //         //           //                   AppIcon.plusIcon,
        //         //           //                   AppColor.greyColor),
        //         //           //             )
        //         //           //           ],
        //         //           //         )
        //         //           //       ],
        //         //           //     ),
        //         //           //   ],
        //         //           // ),
        //         //         // ],
        //         //       // ),
        //         //       SizedBox(
        //         //         height: (1 / 91.34) * SizeConfig.screenHeight,
        //         //       ),
        //         //     ],
        //         //   ),
        //         // ),
        //       ),
        //     ),
        //   );
      },
    );
