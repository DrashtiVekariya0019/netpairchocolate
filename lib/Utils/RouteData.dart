import 'package:get/get.dart';
import 'package:netpairchocolate/View/About%20Uspage/About%20Uspage.dart';
import 'package:netpairchocolate/View/Brandspage/Components/Brandspage.dart';
import 'package:netpairchocolate/View/Bulk-Enquirypage/Components/Bulk-Enquirypage.dart';
import 'package:netpairchocolate/View/ContactUsPage/ConatctUsPage.dart';
import 'package:netpairchocolate/View/Homepages/Homepage.dart';
import 'package:netpairchocolate/View/Productspage/Components/Productspage.dart';
import 'package:netpairchocolate/main.dart';
import 'package:netpairchocolate/View/Navigationpage/AppBar.dart'; // ✅ Import Appbar

class AppRoutes {
  static const String splash = '/splash';
  static const String home = '/home';
  // static const String aboutus = '/aboutus';
  // static const String brands = '/brands';
  // static const String products = '/products';
  static const String contactus = '/contact-us';
  static const String bulkenquiry = '/bulkenquiry';

  static List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: home,
      page: () => Appbar(body: Homepage()),
      transition: Transition.fadeIn,
    ),
    // GetPage(
    //   name: aboutus,
    //   page: () => Appbar(body: Aboutuspage()),
    //   transition: Transition.fadeIn,
    // ),
    // GetPage(
    //   name: brands,
    //   page: () => Appbar(body: Brandspage()),
    //   transition: Transition.fadeIn,
    // ),
    // GetPage(
    //   name: products,
    //   page: () => Appbar(body: Productspage()),
    //   transition: Transition.fadeIn,
    // ),
    GetPage(
      name: contactus,
      page: () => ContactUsPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: bulkenquiry,
      page: () => BulkEnquiry(),
      transition: Transition.fadeIn,
    ),
  ];
}
