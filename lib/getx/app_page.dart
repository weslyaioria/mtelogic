import 'package:get/get.dart';
import 'package:mtelogic/getx/bindings/customer_binding.dart';
import 'package:mtelogic/getx/bindings/dashboard_binding.dart';
import 'package:mtelogic/getx/bindings/home_binding.dart';
import 'package:mtelogic/getx/bindings/introduction_binding.dart';
import 'package:mtelogic/getx/bindings/login_binding.dart';
import 'package:mtelogic/getx/bindings/register_binding.dart';
import 'package:mtelogic/screens/customer/customer_main_page.dart';
import 'package:mtelogic/screens/dashboard/dashboard_main_page.dart';
import 'package:mtelogic/screens/home/home_main_page.dart';
import 'package:mtelogic/screens/introduction/introduction_main_page.dart';
import 'package:mtelogic/screens/login/forgot_password_page.dart';
import 'package:mtelogic/screens/login/login_main_page.dart';
import 'package:mtelogic/screens/register/register_main_page.dart'; 

class AppPages {
  static final pages = [
    GetPage(name: '/', page: () => LoginMainPage(), binding: LoginBinding()),
    GetPage(
        name: '/introduction',
        page: () => IntroductionMainPage(),
        binding: IntroductionBinding()),
    GetPage(name: '/home', page: () => HomeMainPage(), binding: HomeBinding()),
    GetPage(
        name: '/register',
        page: () => RegisterMainPage(),
        binding: RegisterBinding()),
    GetPage(
        name: '/forgot-password',
        page: () => ForgotPasswordPage(),
        binding: LoginBinding()),
    GetPage(
        name: '/dashboard',
        page: () => DashboardMainPage(),
        binding: DashboardBinding()),
     
    GetPage(
        name: '/customer',
        page: () => CustomerMainPage(),
        binding: CustomerBinding()),
    
  ];
}
