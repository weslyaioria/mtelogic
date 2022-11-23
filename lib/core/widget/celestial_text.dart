import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtelogic/controllers/auth_controller.dart';
import 'package:mtelogic/core/misc/app_color.dart';
import 'package:mtelogic/core/misc/app_icon.dart';
import 'package:mtelogic/core/misc/size_config.dart';
import 'package:mtelogic/core/widget/celestial_icon.dart';
import 'package:mtelogic/explore/search/custom_search_delegate.dart';

Widget celestialNormalText(TextEditingController textController, Color color,
        String title, TextStyle labelText) =>
    TextField(
      controller: textController,
      cursorColor: AppColor.blackColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: color,
        labelText: title,
        labelStyle: labelText,
      ),
    );
Widget celestialNormalTextBorder(
  TextEditingController textController,
  Color color,
  String title,
  TextStyle labelText,
  String? isValid,
) =>
    TextFormField(
      onSaved: (value) {
        textController.text = value!;
      },
      validator: (value) {
        return isValid;
        // return Constant.validateName(value!);
      },
      controller: textController,
      cursorColor: AppColor.blackColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: color,
        labelText: title,
        labelStyle: labelText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.grey.shade200,
              width: (0.1 / 91.34) * SizeConfig.screenHeight),
          borderRadius:
              BorderRadius.circular((0.8 / 100) * SizeConfig.screenWidth),
        ),
      ),
    );

class CelestialTextLeftIcon extends StatelessWidget {
  const CelestialTextLeftIcon({
    Key? key,
    required this.iconsax,
    required this.textController,
    required this.title,
    required this.labelText,
    required this.labelStyle,
    required this.labelTextFloating,
    required this.iconColor,
    this.isValid,
  }) : super(key: key);
  final String iconsax;
  final Color iconColor;
  final TextEditingController textController;
  final String title;
  final TextStyle labelText;
  final TextStyle labelStyle;
  final TextStyle labelTextFloating;
  final bool? isValid;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () {
        if (isValid!) {
          showSearch(context: context, delegate: CustomSearchDelegate());
        }
      },
      controller: textController,
      cursorColor: AppColor.blackColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.whiteMilkColor,
        contentPadding: const EdgeInsets.all(0.0),
        labelText: title,
        hintText: title,
        labelStyle: labelText,
        hintStyle: labelStyle,
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: (0.5 / 91.34) * SizeConfig.screenWidth,
              vertical: (0.5 / 91.34) * SizeConfig.screenHeight),
          child: celestialIcon(
            iconsax,
            iconColor,
            true,
            (1.8 / 91.34) * SizeConfig.screenHeight,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.grey.shade200,
              width: (0.1 / 91.34) * SizeConfig.screenHeight),
          borderRadius:
              BorderRadius.circular((0.8 / 100) * SizeConfig.screenWidth),
        ),
        floatingLabelStyle: labelTextFloating,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColor.blueColor,
              width: (1.5 / 1000) * SizeConfig.screenWidth),
          borderRadius:
              BorderRadius.circular((10 / 1000) * SizeConfig.screenWidth),
        ),
      ),
    );
  }
}

Widget celestialTextPassword(
        AuthController controller,
        TextEditingController textController,
        String title,
        TextStyle labelText,
        TextStyle labelStyle) =>
    Obx(() => TextField(
          controller: textController,
          enableSuggestions: false,
          autocorrect: false,
          obscureText: controller.iconsax.value,
          cursorColor: AppColor.blackColor,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColor.whiteMilkColor,
            contentPadding: const EdgeInsets.all(0.0),
            labelText: title,
            hintText: title,
            labelStyle: labelText,
            hintStyle: labelStyle,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (0.5 / 91.34) * SizeConfig.screenWidth,
                  vertical: (0.5 / 91.34) * SizeConfig.screenHeight),
              child: celestialIcon(
                AppIcon.lockIcon,
                AppColor.greyColor,
                true,
                (1.8 / 91.34) * SizeConfig.screenHeight,
              ),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.all((0.5 / 91.34) * SizeConfig.screenHeight),
              child: GestureDetector(
                onTap: () {
                  if (controller.visibleIcon.value == false) {
                    controller.iconsax.value = false;
                    controller.visibleIcon.value = true;
                  } else {
                    controller.iconsax.value = true;
                    controller.visibleIcon.value = false;
                  }
                },
                child: Obx(() {
                  return celestialIcon(
                    controller.visibleIcon.value
                        ? AppIcon.visibilityOffIcon
                        : AppIcon.visibilityIcon,
                    AppColor.greyColor,
                    true,
                    (1.8 / 91.34) * SizeConfig.screenHeight,
                  );
                }),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey.shade200,
                  width: (0.1 / 91.34) * SizeConfig.screenHeight),
              borderRadius:
                  BorderRadius.circular((10 / 1000) * SizeConfig.screenWidth),
            ),
          ),
        ));
