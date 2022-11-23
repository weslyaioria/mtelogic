import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mtelogic/controllers/auth_controller.dart';
import 'package:mtelogic/core/misc/size_config.dart';
import 'package:get/get.dart';
import 'package:mtelogic/getx/app_page.dart';
import 'package:mtelogic/getx/route_name.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var storage = const FlutterSecureStorage();
  var accessToken = await storage.read(key: "access_token");
  runApp(MyApp(
    accessToken: accessToken,
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key, this.accessToken}) : super(key: key);
  final String? accessToken;
  final authController = Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(builder: (context, orientation) {
          SizeConfig().init(constraints, orientation);
          return GetMaterialApp(
            locale: const Locale('en'),
            theme: ThemeData(primarySwatch: Colors.blue),
            debugShowCheckedModeBanner: false,
            initialRoute: authController.isSkipIntro.isTrue
                ? authController.isAuth.isTrue
                    ? RouteName.home
                    : RouteName.login
                : RouteName.introduction,
            // initialRoute: (accessToken == null) ? RouteName.home : '/',
            getPages: AppPages.pages,
          );
        });
      },
    );
  }
}
